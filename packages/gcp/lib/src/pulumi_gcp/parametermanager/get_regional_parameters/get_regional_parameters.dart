import 'package:pulumi/pulumi.dart';
import 'get_regional_parameters_args.dart';
import 'get_regional_parameters_result.dart';

/// Use this data source to list the Parameter Manager Regional Parameters.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_parameters = gcp.parametermanager.getRegionalParameters({
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_parameters = gcp.parametermanager.get_regional_parameters(location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var regional_parameters = Gcp.ParameterManager.GetRegionalParameters.Invoke(new()
/// {
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
/// _, err := parametermanager.GetRegionalParameters(ctx, &parametermanager.GetRegionalParametersArgs{
/// Location: "us-central1",
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
/// import com.pulumi.gcp.parametermanager.inputs.GetRegionalParametersArgs;
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
/// final var regional-parameters = ParametermanagerFunctions.getRegionalParameters(GetRegionalParametersArgs.builder()
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// regional-parameters:
/// fn::invoke:
/// function: gcp:parametermanager:getRegionalParameters
/// arguments:
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionalParametersResult> getRegionalParameters(
  GetRegionalParametersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getRegionalParameters:getRegionalParameters',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionalParametersResult.fromMap(result);
}
