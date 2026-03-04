package examples

import (
	"context"
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/config"
	"github.com/aws/aws-sdk-go-v2/service/ecr"
	"github.com/pulumi/pulumi/pkg/v3/testing/integration"
	"github.com/stretchr/testify/require"
)

func getEnvRegion(t *testing.T) string {
	envRegion := os.Getenv("AWS_REGION")
	if envRegion == "" {
		t.Skipf("Skipping test due to missing AWS_REGION environment variable")
	}
	fmt.Printf("AWS Region: %v\n", envRegion)

	return envRegion
}

func getCwd(t *testing.T) string {
	cwd, err := os.Getwd()
	if err != nil {
		t.FailNow()
	}

	return cwd
}

func getBaseOptions(t *testing.T) integration.ProgramTestOptions {
	envRegion := getEnvRegion(t)
	baseJS := integration.ProgramTestOptions{
		Config: map[string]string{
			"aws:region": envRegion,
		},
		Quick:                true,
		SkipRefresh:          true,
		ExpectRefreshChanges: true,
		Env:                  getDartTestEnv(t),
	}

	return baseJS
}

func maxDuration(dur time.Duration, t *testing.T, test func(t *testing.T)) {
	t.Helper()
	timeout := time.After(dur)
	done := make(chan bool)
	go func() {
		test(t)
		done <- true
	}()
	select {
	case <-timeout:
		t.Fatalf("Test timed out after %v", dur)
	case <-done:
	}
}

func loadAwsDefaultConfig(t *testing.T) aws.Config {
	loadOpts := []func(*config.LoadOptions) error{}
	if p, ok := os.LookupEnv("AWS_PROFILE"); ok {
		loadOpts = append(loadOpts, config.WithSharedConfigProfile(p))
	}
	if r, ok := os.LookupEnv("AWS_REGION"); ok {
		loadOpts = append(loadOpts, config.WithRegion(r))
	}
	cfg, err := config.LoadDefaultConfig(context.TODO(), loadOpts...)
	require.NoError(t, err, "failed to load AWS config")

	return cfg
}

func createEcrClient(t *testing.T) *ecr.Client {
	client := ecr.NewFromConfig(loadAwsDefaultConfig(t))
	require.NotNil(t, client, "failed to create ECR client")
	return client
}

func getDartTestEnv(t *testing.T) []string {
	t.Helper()
	languagePluginPath, err := filepath.Abs("../../pulumi-language-dart")
	require.NoError(t, err)

	return []string{
		getProviderPath(languagePluginPath),
		"PULUMI_CONFIG_PASSPHRASE=pulumi-dart-test-passphrase",
	}
}

func getProviderPath(providerDir string) string {
	environ := os.Environ()
	for _, env := range environ {
		split := strings.SplitN(env, "=", 2)
		if len(split) != 2 {
			continue
		}
		key, value := split[0], split[1]

		if strings.EqualFold(key, "PATH") {
			return fmt.Sprintf("%s=%s%s%s", key, providerDir, string(os.PathListSeparator), value)
		}
	}

	return fmt.Sprintf("PATH=%s", providerDir)
}
