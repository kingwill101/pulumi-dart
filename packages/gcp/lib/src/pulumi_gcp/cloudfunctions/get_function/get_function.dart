import 'package:pulumi/pulumi.dart';
import 'get_function_args.dart';
import 'get_function_result.dart';

/// Get information about a Google Cloud Function. For more information see
/// the [official documentation](https://cloud.google.com/functions/docs/)
/// and [API](https://cloud.google.com/functions/docs/apis).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_function = gcp.cloudfunctions.getFunction({
/// name: "function",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_function = gcp.cloudfunctions.get_function(name="function")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_function = Gcp.CloudFunctions.GetFunction.Invoke(new()
/// {
/// Name = "function",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctions"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfunctions.LookupFunction(ctx, &cloudfunctions.LookupFunctionArgs{
/// Name: "function",
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
/// import com.pulumi.gcp.cloudfunctions.CloudfunctionsFunctions;
/// import com.pulumi.gcp.cloudfunctions.inputs.GetFunctionArgs;
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
/// final var my-function = CloudfunctionsFunctions.getFunction(GetFunctionArgs.builder()
/// .name("function")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-function:
/// fn::invoke:
/// function: gcp:cloudfunctions:getFunction
/// arguments:
/// name: function
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFunctionResult> getFunction(
  GetFunctionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctions/getFunction:getFunction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult.fromMap(result);
}
