//go:build dart || all
// +build dart all

package examples

import (
	"path/filepath"
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/testing/integration"
	"github.com/stretchr/testify/require"
)

func TestRandomCueDart(t *testing.T) {
	t.Parallel()

	test := getBaseOptions(t).With(integration.ProgramTestOptions{
		RunUpdateTest: false,
		Dir:           filepath.Join(getCwd(t), "cue"),
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			password, ok := stackInfo.Outputs["password"].(string)
			require.True(t, ok)
			require.NotEmpty(t, password)
		},
	})

	integration.ProgramTest(t, &test)
}

func TestRandomYamlDart(t *testing.T) {
	t.Parallel()

	test := getBaseOptions(t).With(integration.ProgramTestOptions{
		RunUpdateTest: false,
		Dir:           filepath.Join(getCwd(t), "yaml"),
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			password, ok := stackInfo.Outputs["password"].(string)
			require.True(t, ok)
			require.NotEmpty(t, password)
		},
	})

	integration.ProgramTest(t, &test)
}
