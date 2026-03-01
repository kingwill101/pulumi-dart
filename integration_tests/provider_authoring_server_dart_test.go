package integration_tests

import (
	"bufio"
	"bytes"
	"context"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/pulumi/pulumi/sdk/v3/go/common/util/rpcutil"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/structpb"
)

func TestProviderAuthoringServerDart(t *testing.T) {
	fixtureDir := filepath.Join("provider_authoring", "dart")
	require.NoError(t, rewritePulumiDependency(fixtureDir))

	pubGet := exec.Command("dart", "pub", "get")
	pubGet.Dir = fixtureDir
	pubGetOut, err := pubGet.CombinedOutput()
	require.NoError(t, err, "dart pub get failed:\n%s", string(pubGetOut))

	ctx, cancel := context.WithTimeout(context.Background(), 30*time.Second)
	defer cancel()

	plugin := exec.CommandContext(
		ctx,
		"dart",
		"run",
		"bin/provider_plugin.dart",
		"--logtostderr",
		"-v=9",
		"--tracing",
		"127.0.0.1:6007",
		"127.0.0.1:7777",
	)
	plugin.Dir = fixtureDir

	stdout, err := plugin.StdoutPipe()
	require.NoError(t, err)
	stderr := &bytes.Buffer{}
	plugin.Stderr = stderr

	require.NoError(t, plugin.Start())
	defer func() {
		_ = plugin.Process.Kill()
		_, _ = plugin.Process.Wait()
	}()

	reader := bufio.NewReader(stdout)
	portLine, err := reader.ReadString('\n')
	require.NoError(t, err, "stderr: %s", stderr.String())
	port := strings.TrimSpace(portLine)
	require.NotEmpty(t, port, "stderr: %s", stderr.String())

	conn, err := grpc.Dial(
		"127.0.0.1:"+port,
		grpc.WithInsecure(),
		rpcutil.GrpcChannelOptions(),
	)
	require.NoError(t, err)
	defer func() {
		_ = conn.Close()
	}()

	client := pulumirpc.NewResourceProviderClient(conn)
	rpcCtx, rpcCancel := context.WithTimeout(context.Background(), 20*time.Second)
	defer rpcCancel()

	handshake, err := client.Handshake(rpcCtx, &pulumirpc.ProviderHandshakeRequest{
		EngineAddress: "127.0.0.1:7000",
	})
	require.NoError(t, err)
	assert.True(t, handshake.GetAcceptSecrets())
	assert.True(t, handshake.GetAcceptResources())
	assert.True(t, handshake.GetAcceptOutputs())

	pluginInfo, err := client.GetPluginInfo(rpcCtx, &emptypb.Empty{})
	require.NoError(t, err)
	assert.Equal(t, "1.2.3", pluginInfo.GetVersion())

	schema, err := client.GetSchema(rpcCtx, &pulumirpc.GetSchemaRequest{Version: 0})
	require.NoError(t, err)
	assert.Contains(t, schema.GetSchema(), "\"name\": \"testprovider\"")

	parameterizedArgs, err := client.Parameterize(rpcCtx, &pulumirpc.ParameterizeRequest{
		Parameters: &pulumirpc.ParameterizeRequest_Args{
			Args: &pulumirpc.ParameterizeRequest_ParametersArgs{
				Args: []string{"--region", "us-west-2"},
			},
		},
	})
	require.NoError(t, err)
	assert.Equal(t, "testprovider", parameterizedArgs.GetName())
	assert.Equal(t, "1.2.3", parameterizedArgs.GetVersion())

	parameterizedValue, err := client.Parameterize(rpcCtx, &pulumirpc.ParameterizeRequest{
		Parameters: &pulumirpc.ParameterizeRequest_Value{
			Value: &pulumirpc.ParameterizeRequest_ParametersValue{
				Name:    "param.value",
				Version: "2.0.0",
				Value:   []byte("payload"),
			},
		},
	})
	require.NoError(t, err)
	assert.Equal(t, "param.value", parameterizedValue.GetName())
	assert.Equal(t, "2.0.0", parameterizedValue.GetVersion())

	invokeArgs, err := structpb.NewStruct(map[string]any{"echo": "hello"})
	require.NoError(t, err)
	invokeResp, err := client.Invoke(rpcCtx, &pulumirpc.InvokeRequest{
		Tok:  "test:index:get",
		Args: invokeArgs,
	})
	require.NoError(t, err)
	assert.Equal(t, "hello", invokeResp.GetReturn().AsMap()["echo"])

	olds, err := structpb.NewStruct(map[string]any{"name": "old-name"})
	require.NoError(t, err)
	news, err := structpb.NewStruct(map[string]any{"name": "new-name"})
	require.NoError(t, err)

	checkResp, err := client.Check(rpcCtx, &pulumirpc.CheckRequest{
		Urn:  "urn:pulumi:dev::proj::test:index:Res::r",
		Olds: olds,
		News: news,
	})
	require.NoError(t, err)
	assert.Len(t, checkResp.GetFailures(), 0)

	diffResp, err := client.Diff(rpcCtx, &pulumirpc.DiffRequest{
		Id:   "id-1",
		Urn:  "urn:pulumi:dev::proj::test:index:Res::r",
		Olds: olds,
		News: news,
	})
	require.NoError(t, err)
	assert.Equal(t, pulumirpc.DiffResponse_DIFF_NONE, diffResp.GetChanges())
	assert.Len(t, diffResp.GetReplaces(), 0)

	configOlds, err := structpb.NewStruct(map[string]any{"region": "us-west-2"})
	require.NoError(t, err)
	configNews, err := structpb.NewStruct(map[string]any{"region": "us-east-1"})
	require.NoError(t, err)
	checkConfigResp, err := client.CheckConfig(rpcCtx, &pulumirpc.CheckRequest{
		Urn:  "urn:pulumi:dev::proj::pulumi:providers:testprovider::default",
		Olds: configOlds,
		News: configNews,
	})
	require.NoError(t, err)
	assert.Len(t, checkConfigResp.GetFailures(), 0)
	assert.Equal(t, "us-east-1", checkConfigResp.GetInputs().AsMap()["region"])
	assert.Equal(t, "default", checkConfigResp.GetInputs().AsMap()["profile"])

	invalidConfigNews, err := structpb.NewStruct(map[string]any{"region": "invalid-mars-1"})
	require.NoError(t, err)
	checkConfigInvalidResp, err := client.CheckConfig(rpcCtx, &pulumirpc.CheckRequest{
		Urn:  "urn:pulumi:dev::proj::pulumi:providers:testprovider::default",
		Olds: configOlds,
		News: invalidConfigNews,
	})
	require.NoError(t, err)
	require.Len(t, checkConfigInvalidResp.GetFailures(), 1)
	assert.Equal(t, "region", checkConfigInvalidResp.GetFailures()[0].GetProperty())

	diffConfigResp, err := client.DiffConfig(rpcCtx, &pulumirpc.DiffRequest{
		Id:   "default",
		Urn:  "urn:pulumi:dev::proj::pulumi:providers:testprovider::default",
		Olds: configOlds,
		News: configNews,
	})
	require.NoError(t, err)
	assert.Equal(t, pulumirpc.DiffResponse_DIFF_SOME, diffConfigResp.GetChanges())
	assert.Contains(t, diffConfigResp.GetReplaces(), "region")

	createProps, err := structpb.NewStruct(map[string]any{"name": "created"})
	require.NoError(t, err)
	createResp, err := client.Create(rpcCtx, &pulumirpc.CreateRequest{
		Urn:        "urn:pulumi:dev::proj::test:index:Res::r",
		Properties: createProps,
	})
	require.NoError(t, err)
	assert.Equal(t, "resource-1", createResp.GetId())
	assert.Equal(t, "created", createResp.GetProperties().AsMap()["name"])

	readResp, err := client.Read(rpcCtx, &pulumirpc.ReadRequest{
		Id:         createResp.GetId(),
		Urn:        "urn:pulumi:dev::proj::test:index:Res::r",
		Properties: createResp.GetProperties(),
	})
	require.NoError(t, err)
	assert.Equal(t, createResp.GetId(), readResp.GetId())

	updateProps, err := structpb.NewStruct(map[string]any{"name": "updated"})
	require.NoError(t, err)
	updateResp, err := client.Update(rpcCtx, &pulumirpc.UpdateRequest{
		Id:   createResp.GetId(),
		Urn:  "urn:pulumi:dev::proj::test:index:Res::r",
		Olds: createResp.GetProperties(),
		News: updateProps,
	})
	require.NoError(t, err)
	assert.Equal(t, "updated", updateResp.GetProperties().AsMap()["name"])

	_, err = client.Delete(rpcCtx, &pulumirpc.DeleteRequest{
		Id:         createResp.GetId(),
		Urn:        "urn:pulumi:dev::proj::test:index:Res::r",
		Properties: updateResp.GetProperties(),
	})
	require.NoError(t, err)
}
