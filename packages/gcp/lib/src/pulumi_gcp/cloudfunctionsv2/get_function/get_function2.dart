import 'package:pulumi/pulumi.dart';
import 'get_function_args2.dart';
import 'get_function_result2.dart';

/// Get information about a Google Cloud Function (2nd gen). For more information see:
///
/// * [API documentation](https://cloud.google.com/functions/docs/reference/rest/v2beta/projects.locations.functions).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_function = gcp.cloudfunctionsv2.getFunction({
/// name: "function",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_function = gcp.cloudfunctionsv2.get_function(name="function",
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
/// var my_function = Gcp.CloudFunctionsV2.GetFunction.Invoke(new()
/// {
/// Name = "function",
/// Location = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfunctionsv2.LookupFunction(ctx, &cloudfunctionsv2.LookupFunctionArgs{
/// Name:     "function",
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
/// import com.pulumi.gcp.cloudfunctionsv2.Cloudfunctionsv2Functions;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.GetFunctionArgs;
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
/// final var my-function = Cloudfunctionsv2Functions.getFunction(GetFunctionArgs.builder()
/// .name("function")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-function:
/// fn::invoke:
/// function: gcp:cloudfunctionsv2:getFunction
/// arguments:
/// name: function
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFunctionResult2> getFunction2(
  GetFunctionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctionsv2/getFunction:getFunction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult2.fromMap(result);
}
