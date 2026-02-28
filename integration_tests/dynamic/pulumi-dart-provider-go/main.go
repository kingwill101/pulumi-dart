// Copyright 2026, Pulumi Corporation.  All rights reserved.
//go:build !all
// +build !all

package main

import (
	"context"
	"encoding/json"
	"fmt"
	"strings"

	"github.com/golang/protobuf/ptypes/empty"
	"github.com/pulumi/pulumi/pkg/v3/resource/provider"
	"github.com/pulumi/pulumi/sdk/v3/go/common/util/cmdutil"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	structpb "google.golang.org/protobuf/types/known/structpb"
)

const (
	providerName = "pulumi-dart"
	version      = "0.0.1"
)

type dynamicProvider struct {
	pulumirpc.UnimplementedResourceProviderServer
	id       int
	version  string
	password string
	color    string
}

func main() {
	err := provider.Main(providerName, func(host *provider.HostClient) (pulumirpc.ResourceProviderServer, error) {
		_ = host
		return &dynamicProvider{version: version}, nil
	})
	if err != nil {
		cmdutil.ExitError(err.Error())
	}
}

func (p *dynamicProvider) CheckConfig(
	ctx context.Context,
	req *pulumirpc.CheckRequest,
) (*pulumirpc.CheckResponse, error) {
	_ = ctx
	_ = req
	return &pulumirpc.CheckResponse{}, nil
}

func (p *dynamicProvider) DiffConfig(
	ctx context.Context,
	req *pulumirpc.DiffRequest,
) (*pulumirpc.DiffResponse, error) {
	_ = ctx
	_ = req
	return &pulumirpc.DiffResponse{}, nil
}

func (p *dynamicProvider) Configure(
	ctx context.Context,
	req *pulumirpc.ConfigureRequest,
) (*pulumirpc.ConfigureResponse, error) {
	_ = ctx

	p.password = getConfigValue(req, "password")
	p.color = getConfigValue(req, "colors:banana")
	if p.color == "" {
		p.color = "blue"
	}

	return &pulumirpc.ConfigureResponse{
		AcceptSecrets:   true,
		SupportsPreview: true,
		AcceptResources: true,
	}, nil
}

func (p *dynamicProvider) Check(
	ctx context.Context,
	req *pulumirpc.CheckRequest,
) (*pulumirpc.CheckResponse, error) {
	_ = ctx
	return &pulumirpc.CheckResponse{Inputs: req.GetNews()}, nil
}

func (p *dynamicProvider) Diff(
	ctx context.Context,
	req *pulumirpc.DiffRequest,
) (*pulumirpc.DiffResponse, error) {
	_ = ctx
	oldValue := ""
	if old, ok := req.GetOlds().GetFields()["val"]; ok {
		oldValue = fmt.Sprint(old.AsInterface())
	}
	newValue := ""
	if next, ok := req.GetNews().GetFields()["val"]; ok {
		newValue = fmt.Sprint(next.AsInterface())
	}

	changes := pulumirpc.DiffResponse_DIFF_NONE
	if oldValue != newValue {
		changes = pulumirpc.DiffResponse_DIFF_SOME
	}

	return &pulumirpc.DiffResponse{Changes: changes}, nil
}

func (p *dynamicProvider) Create(
	ctx context.Context,
	req *pulumirpc.CreateRequest,
) (*pulumirpc.CreateResponse, error) {
	_ = ctx
	p.id++
	props := req.GetProperties()
	if props == nil {
		props = &structpb.Struct{Fields: map[string]*structpb.Value{}}
	}

	if _, configureMode := props.GetFields()["configureMode"]; configureMode {
		password := p.password
		color := p.color

		if providerPayload, ok := props.GetFields()[providerKey]; ok {
			payload := map[string]string{}
			if err := json.Unmarshal([]byte(valueToString(providerPayload)), &payload); err == nil {
				if payloadPassword := payload["password"]; payloadPassword != "" {
					password = payloadPassword
				}
				if payloadColor := payload["color"]; payloadColor != "" {
					color = payloadColor
				}
			}
		}

		if color == "" {
			color = "blue"
		}
		authenticated := "401"
		if password == "s3cret" {
			authenticated = "200"
		}

		props.Fields["authenticated"] = structpb.NewStringValue(authenticated)
		props.Fields["color"] = structpb.NewStringValue(color)
		delete(props.Fields, "configureMode")
	}

	return &pulumirpc.CreateResponse{
		Id:         fmt.Sprintf("%d", p.id),
		Properties: props,
	}, nil
}

func (p *dynamicProvider) Update(
	ctx context.Context,
	req *pulumirpc.UpdateRequest,
) (*pulumirpc.UpdateResponse, error) {
	_ = ctx
	return &pulumirpc.UpdateResponse{Properties: req.GetNews()}, nil
}

func (p *dynamicProvider) Delete(ctx context.Context, req *pulumirpc.DeleteRequest) (*empty.Empty, error) {
	_ = ctx
	_ = req
	return &empty.Empty{}, nil
}

func (p *dynamicProvider) Read(
	ctx context.Context,
	req *pulumirpc.ReadRequest,
) (*pulumirpc.ReadResponse, error) {
	_ = ctx
	return &pulumirpc.ReadResponse{
		Id:         req.GetId(),
		Properties: req.GetProperties(),
		Inputs:     req.GetProperties(),
	}, nil
}

func (p *dynamicProvider) GetPluginInfo(ctx context.Context, req *empty.Empty) (*pulumirpc.PluginInfo, error) {
	_ = ctx
	_ = req
	return &pulumirpc.PluginInfo{Version: p.version}, nil
}

func (p *dynamicProvider) Attach(ctx context.Context, req *pulumirpc.PluginAttach) (*empty.Empty, error) {
	_ = ctx
	_ = req
	return &empty.Empty{}, nil
}

func (p *dynamicProvider) GetSchema(ctx context.Context, req *pulumirpc.GetSchemaRequest) (*pulumirpc.GetSchemaResponse, error) {
	_ = ctx
	_ = req
	return &pulumirpc.GetSchemaResponse{}, nil
}

func (p *dynamicProvider) Cancel(ctx context.Context, req *empty.Empty) (*empty.Empty, error) {
	_ = ctx
	_ = req
	return &empty.Empty{}, nil
}

func getConfigValue(req *pulumirpc.ConfigureRequest, key string) string {
	for k, v := range req.GetVariables() {
		if k == key || strings.HasSuffix(k, ":"+key) {
			return v
		}
	}

	args := req.GetArgs()
	if args == nil {
		return ""
	}

	for k, field := range args.GetFields() {
		if k == key || strings.HasSuffix(k, ":"+key) {
			return valueToString(field)
		}
	}

	return ""
}

func valueToString(value *structpb.Value) string {
	if value == nil {
		return ""
	}

	switch kind := value.Kind.(type) {
	case *structpb.Value_StringValue:
		return kind.StringValue
	case *structpb.Value_NumberValue:
		return fmt.Sprintf("%v", kind.NumberValue)
	case *structpb.Value_BoolValue:
		if kind.BoolValue {
			return "true"
		}
		return "false"
	case *structpb.Value_StructValue:
		fields := kind.StructValue.GetFields()
		// Pulumi secret envelope: {sig: secretSig, value: ...}
		if sig, ok := fields["4dabf18193072939515e22adb298388d"]; ok &&
			sig.GetStringValue() == "1b47061264138c4ac30d75fd1eb44270" {
			return valueToString(fields["value"])
		}
		// Alternate secret envelope shape.
		if secret, ok := fields["fn::secret"]; ok {
			return valueToString(secret)
		}
		if inner, ok := fields["value"]; ok {
			return valueToString(inner)
		}
		return fmt.Sprint(value.AsInterface())
	default:
		return fmt.Sprint(value.AsInterface())
	}
}

const providerKey = "__provider"
