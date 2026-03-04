//go:build dart || all
// +build dart all

package examples

import (
	"path/filepath"
	"testing"

	"github.com/pulumi/pulumi/pkg/v3/testing/integration"
	"github.com/stretchr/testify/require"
)

func TestMultiContainerAppDart(t *testing.T) {
	ensureDockerAvailable(t)

	test := getBaseOptions(t).With(integration.ProgramTestOptions{
		RunUpdateTest: false,
		Dir:           filepath.Join(getCwd(t), "multi-container-app"),
		ExtraRuntimeValidation: func(t *testing.T, stackInfo integration.RuntimeValidationStackInfo) {
			url, ok := stackInfo.Outputs["url"].(string)
			require.True(t, ok)
			require.Equal(t, "http://localhost:3000", url)
		},
	})

	integration.ProgramTest(t, &test)
}
