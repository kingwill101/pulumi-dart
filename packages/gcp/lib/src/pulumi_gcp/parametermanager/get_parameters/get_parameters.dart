import 'package:pulumi/pulumi.dart';
import 'get_parameters_args.dart';
import 'get_parameters_result.dart';

/// Use this data source to list the Parameter Manager Parameters.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const parameters = gcp.parametermanager.getParameters({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// parameters = gcp.parametermanager.get_parameters()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var parameters = Gcp.ParameterManager.GetParameters.Invoke();
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
/// _, err := parametermanager.GetParameters(ctx, &parametermanager.GetParametersArgs{}, nil)
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
/// import com.pulumi.gcp.parametermanager.inputs.GetParametersArgs;
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
/// final var parameters = ParametermanagerFunctions.getParameters(GetParametersArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// parameters:
/// fn::invoke:
/// function: gcp:parametermanager:getParameters
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetParametersResult> getParameters(
  GetParametersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getParameters:getParameters',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetParametersResult.fromMap(result);
}
