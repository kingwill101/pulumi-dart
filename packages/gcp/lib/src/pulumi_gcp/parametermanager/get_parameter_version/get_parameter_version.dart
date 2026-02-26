import 'package:pulumi/pulumi.dart';
import 'get_parameter_version_args.dart';
import 'get_parameter_version_result.dart';

/// Get the value and metadata from a Parameter Manager Parameter version. For more information see the [official documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/overview)  and [API](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.parametermanager.getParameterVersion({
/// parameter: "test-parameter",
/// parameterVersionId: "test-parameter-version",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.parametermanager.get_parameter_version(parameter="test-parameter",
/// parameter_version_id="test-parameter-version")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basic = Gcp.ParameterManager.GetParameterVersion.Invoke(new()
/// {
/// Parameter = "test-parameter",
/// ParameterVersionId = "test-parameter-version",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := parametermanager.LookupParameterVersion(ctx, &parametermanager.LookupParameterVersionArgs{
/// Parameter:          "test-parameter",
/// ParameterVersionId: "test-parameter-version",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.ParametermanagerFunctions;
/// import com.pulumi.gcp.parametermanager.inputs.GetParameterVersionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var basic = ParametermanagerFunctions.getParameterVersion(GetParameterVersionArgs.builder()
/// .parameter("test-parameter")
/// .parameterVersionId("test-parameter-version")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// basic:
/// fn::invoke:
/// function: gcp:parametermanager:getParameterVersion
/// arguments:
/// parameter: test-parameter
/// parameterVersionId: test-parameter-version
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetParameterVersionResult> getParameterVersion(
  GetParameterVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getParameterVersion:getParameterVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetParameterVersionResult.fromMap(result);
}
