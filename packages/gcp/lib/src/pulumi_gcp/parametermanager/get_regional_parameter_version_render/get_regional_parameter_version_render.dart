import 'package:pulumi/pulumi.dart';
import 'get_regional_parameter_version_render_args.dart';
import 'get_regional_parameter_version_render_result.dart';

/// Get the value and metadata from a Parameter Manager Regional Parameter version with rendered payload data. For this datasource to work as expected, the principal of the parameter must be provided with the [Secret Manager Secret Accessor](https://cloud.google.com/secret-manager/docs/access-control#secretmanager.secretAccessor) role. For more information see the [official documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/overview)  and [API](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions/render).
///
/// > **Warning:** To use this data source, we must grant the `Secret Manager Secret Accessor` role to the principal of the parameter. Please note that it can take up to 7 minutes for the role to take effect. Hence, we might need to wait approximately 7 minutes after granting  `Secret Manager Secret Accessor` role to the principal of the parameter. For more information see the [access change propagation documentation](https://cloud.google.com/iam/docs/access-change-propagation).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.parametermanager.getRegionalParameterVersionRender({
/// parameter: "test-regional-parameter",
/// parameterVersionId: "test-regional-parameter-version",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.parametermanager.get_regional_parameter_version_render(parameter="test-regional-parameter",
/// parameter_version_id="test-regional-parameter-version",
/// location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var basic = Gcp.ParameterManager.GetRegionalParameterVersionRender.Invoke(new()
/// {
/// Parameter = "test-regional-parameter",
/// ParameterVersionId = "test-regional-parameter-version",
/// Location = "us-central1",
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
/// _, err := parametermanager.GetRegionalParameterVersionRender(ctx, &parametermanager.GetRegionalParameterVersionRenderArgs{
/// Parameter:          "test-regional-parameter",
/// ParameterVersionId: "test-regional-parameter-version",
/// Location:           pulumi.StringRef("us-central1"),
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
/// import com.pulumi.gcp.parametermanager.inputs.GetRegionalParameterVersionRenderArgs;
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
/// final var basic = ParametermanagerFunctions.getRegionalParameterVersionRender(GetRegionalParameterVersionRenderArgs.builder()
/// .parameter("test-regional-parameter")
/// .parameterVersionId("test-regional-parameter-version")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// basic:
/// fn::invoke:
/// function: gcp:parametermanager:getRegionalParameterVersionRender
/// arguments:
/// parameter: test-regional-parameter
/// parameterVersionId: test-regional-parameter-version
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionalParameterVersionRenderResult>
    getRegionalParameterVersionRender(
  GetRegionalParameterVersionRenderArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getRegionalParameterVersionRender:getRegionalParameterVersionRender',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionalParameterVersionRenderResult.fromMap(result);
}
