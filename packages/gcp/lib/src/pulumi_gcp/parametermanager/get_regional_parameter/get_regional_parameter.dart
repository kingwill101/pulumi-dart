import 'package:pulumi/pulumi.dart';
import 'get_regional_parameter_args.dart';
import 'get_regional_parameter_result.dart';

/// Use this data source to get information about a Parameter Manager Regional Parameter.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regParameterDatasource = gcp.parametermanager.getRegionalParameter({
/// parameterId: "foobar",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// reg_parameter_datasource = gcp.parametermanager.get_regional_parameter(parameter_id="foobar",
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
/// var regParameterDatasource = Gcp.ParameterManager.GetRegionalParameter.Invoke(new()
/// {
/// ParameterId = "foobar",
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
/// _, err := parametermanager.LookupRegionalParameter(ctx, &parametermanager.LookupRegionalParameterArgs{
/// ParameterId: "foobar",
/// Location:    "us-central1",
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
/// import com.pulumi.gcp.parametermanager.inputs.GetRegionalParameterArgs;
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
/// final var regParameterDatasource = ParametermanagerFunctions.getRegionalParameter(GetRegionalParameterArgs.builder()
/// .parameterId("foobar")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// regParameterDatasource:
/// fn::invoke:
/// function: gcp:parametermanager:getRegionalParameter
/// arguments:
/// parameterId: foobar
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionalParameterResult> getRegionalParameter(
  GetRegionalParameterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getRegionalParameter:getRegionalParameter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionalParameterResult.fromMap(result);
}
