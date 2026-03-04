package examples

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/testing/integration"
	"github.com/stretchr/testify/require"
)

func getCwd(t *testing.T) string {
	t.Helper()

	cwd, err := os.Getwd()
	require.NoError(t, err)
	return cwd
}

func getBaseOptions(t *testing.T) integration.ProgramTestOptions {
	t.Helper()

	return integration.ProgramTestOptions{
		Quick:                true,
		SkipRefresh:          true,
		ExpectRefreshChanges: true,
		Env:                  getDartTestEnv(t),
	}
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

func ensureDockerAvailable(t *testing.T) {
	t.Helper()

	_, err := exec.LookPath("docker")
	if err != nil {
		t.Skip("docker not found, skipping docker example test")
	}

	cmd := exec.Command("docker", "info")
	if err := cmd.Run(); err != nil {
		t.Skip("docker daemon is not reachable, skipping docker example test")
	}
}
