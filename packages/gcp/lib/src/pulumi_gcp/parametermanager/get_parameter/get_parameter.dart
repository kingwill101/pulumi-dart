import 'package:pulumi/pulumi.dart';
import 'get_parameter_args.dart';
import 'get_parameter_result.dart';

/// Use this data source to get information about a Parameter Manager Parameter.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const parameterDatasource = gcp.parametermanager.getParameter({
/// parameterId: "foobar",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// parameter_datasource = gcp.parametermanager.get_parameter(parameter_id="foobar")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var parameterDatasource = Gcp.ParameterManager.GetParameter.Invoke(new()
/// {
/// ParameterId = "foobar",
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
/// _, err := parametermanager.LookupParameter(ctx, &parametermanager.LookupParameterArgs{
/// ParameterId: "foobar",
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
/// import com.pulumi.gcp.parametermanager.inputs.GetParameterArgs;
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
/// final var parameterDatasource = ParametermanagerFunctions.getParameter(GetParameterArgs.builder()
/// .parameterId("foobar")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// parameterDatasource:
/// fn::invoke:
/// function: gcp:parametermanager:getParameter
/// arguments:
/// parameterId: foobar
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetParameterResult> getParameter(
  GetParameterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getParameter:getParameter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetParameterResult.fromMap(result);
}
