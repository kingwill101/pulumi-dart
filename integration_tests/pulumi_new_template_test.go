package integration_tests

import (
	"bytes"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"
	"time"

	"github.com/stretchr/testify/require"
)

func runCommand(t *testing.T, dir string, env []string, command string, args ...string) string {
	t.Helper()

	cmd := exec.Command(command, args...)
	cmd.Dir = dir
	cmd.Env = env

	var output bytes.Buffer
	cmd.Stdout = &output
	cmd.Stderr = &output

	err := cmd.Run()
	require.NoErrorf(t, err, "%s %s failed:\n%s", command, strings.Join(args, " "), output.String())
	return output.String()
}

func buildLanguageHostBinary(t *testing.T) string {
	t.Helper()

	languageHostDir, err := filepath.Abs("../pulumi-language-dart")
	require.NoError(t, err)
	binDir := t.TempDir()
	binPath := filepath.Join(binDir, "pulumi-language-dart")

	cmd := exec.Command("go", "build", "-o", binPath, ".")
	cmd.Dir = languageHostDir
	var output bytes.Buffer
	cmd.Stdout = &output
	cmd.Stderr = &output
	require.NoErrorf(t, cmd.Run(), "failed to build pulumi-language-dart:\n%s", output.String())
	return binDir
}

// TestPulumiNewDartTemplateE2E validates an end-to-end flow:
// pulumi new -> dependency install -> pulumi preview
// using the user-facing template and non-relative dependency resolution.
func TestPulumiNewDartTemplateE2E(t *testing.T) {
	if testing.Short() {
		t.Skip("skipping pulumi new e2e in short mode")
	}

	if _, err := exec.LookPath("pulumi"); err != nil {
		t.Skip("pulumi CLI not available on PATH")
	}
	if _, err := exec.LookPath("dart"); err != nil {
		t.Skip("dart executable not available on PATH")
	}

	languagePluginPath := buildLanguageHostBinary(t)
	templateDir, err := filepath.Abs("../templates/dart-minimal")
	require.NoError(t, err)
	pulumiSDKPath, err := pulumiSDKPath()
	require.NoError(t, err)

	workspaceDir := t.TempDir()
	projectDir := filepath.Join(workspaceDir, "project")
	require.NoError(t, os.MkdirAll(projectDir, 0o700))

	backendDir := filepath.Join(workspaceDir, "backend")
	require.NoError(t, os.MkdirAll(backendDir, 0o700))

	projectName := fmt.Sprintf("dart-template-%d", time.Now().UnixNano())
	env := append(os.Environ(),
		getProviderPath(languagePluginPath),
		"PULUMI_CONFIG_PASSPHRASE=pulumi-dart-test-passphrase",
		"PULUMI_BACKEND_URL=file://"+filepath.ToSlash(backendDir),
		"PULUMI_DART_PULUMI_DEPENDENCY_PATH="+pulumiSDKPath,
	)

	newOutput := runCommand(
		t,
		projectDir,
		env,
		"pulumi",
		"new",
		templateDir,
		"-y",
		"--name",
		projectName,
		"--stack",
		"dev",
		"--secrets-provider",
		"passphrase",
	)
	require.Contains(t, newOutput, "Created project")
	require.Contains(t, newOutput, "Installing dependencies")

	pubspecBytes, err := os.ReadFile(filepath.Join(projectDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspecContent := string(pubspecBytes)
	require.Contains(t, pubspecContent, "pulumi:")
	require.Contains(t, pubspecContent, filepath.ToSlash(pulumiSDKPath))

	previewOutput := runCommand(
		t,
		projectDir,
		env,
		"pulumi",
		"preview",
		"--non-interactive",
	)
	require.Contains(t, previewOutput, "Previewing update")
}

func TestPulumiNewDartRandomTemplateE2E(t *testing.T) {
	if testing.Short() {
		t.Skip("skipping pulumi new random template e2e in short mode")
	}

	if _, err := exec.LookPath("pulumi"); err != nil {
		t.Skip("pulumi CLI not available on PATH")
	}
	if _, err := exec.LookPath("dart"); err != nil {
		t.Skip("dart executable not available on PATH")
	}

	languagePluginPath := buildLanguageHostBinary(t)
	templateDir, err := filepath.Abs("../templates/dart-random")
	require.NoError(t, err)
	pulumiSDKPath, err := pulumiSDKPath()
	require.NoError(t, err)

	workspaceDir := t.TempDir()
	projectDir := filepath.Join(workspaceDir, "project")
	require.NoError(t, os.MkdirAll(projectDir, 0o700))

	backendDir := filepath.Join(workspaceDir, "backend")
	require.NoError(t, os.MkdirAll(backendDir, 0o700))

	projectName := fmt.Sprintf("dart-random-%d", time.Now().UnixNano())
	env := append(os.Environ(),
		getProviderPath(languagePluginPath),
		"PULUMI_CONFIG_PASSPHRASE=pulumi-dart-test-passphrase",
		"PULUMI_BACKEND_URL=file://"+filepath.ToSlash(backendDir),
		"PULUMI_DART_PULUMI_DEPENDENCY_PATH="+pulumiSDKPath,
	)

	newOutput := runCommand(
		t,
		projectDir,
		env,
		"pulumi",
		"new",
		templateDir,
		"-y",
		"--name",
		projectName,
		"--stack",
		"dev",
		"--secrets-provider",
		"passphrase",
	)
	require.Contains(t, newOutput, "Created project")
	require.Contains(t, newOutput, "Installing dependencies")

	pubspecBytes, err := os.ReadFile(filepath.Join(projectDir, "pubspec.yaml"))
	require.NoError(t, err)
	pubspecContent := string(pubspecBytes)
	require.Contains(t, pubspecContent, "dependency_overrides:")
	require.Contains(t, pubspecContent, filepath.ToSlash(pulumiSDKPath))

	previewOutput := runCommand(
		t,
		projectDir,
		env,
		"pulumi",
		"preview",
		"--non-interactive",
	)
	require.Contains(t, previewOutput, "petName")
}
