import 'package:pulumi/pulumi.dart';
import 'get_function_iam_policy_args.dart';
import 'get_function_iam_policy_result.dart';

/// Retrieves the current IAM policy data for cloudfunction
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.cloudfunctions.getFunctionIamPolicy({
/// project: _function.project,
/// region: _function.region,
/// cloudFunction: _function.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.cloudfunctions.get_function_iam_policy(project=function["project"],
/// region=function["region"],
/// cloud_function=function["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.CloudFunctions.GetFunctionIamPolicy.Invoke(new()
/// {
/// Project = function.Project,
/// Region = function.Region,
/// CloudFunction = function.Name,
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
/// _, err := cloudfunctions.LookupFunctionIamPolicy(ctx, &cloudfunctions.LookupFunctionIamPolicyArgs{
/// Project:       pulumi.StringRef(function.Project),
/// Region:        pulumi.StringRef(function.Region),
/// CloudFunction: function.Name,
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
/// import com.pulumi.gcp.cloudfunctions.inputs.GetFunctionIamPolicyArgs;
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
/// final var policy = CloudfunctionsFunctions.getFunctionIamPolicy(GetFunctionIamPolicyArgs.builder()
/// .project(function.project())
/// .region(function.region())
/// .cloudFunction(function.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:cloudfunctions:getFunctionIamPolicy
/// arguments:
/// project: ${function.project}
/// region: ${function.region}
/// cloudFunction: ${function.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFunctionIamPolicyResult> getFunctionIamPolicy(
  GetFunctionIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctions/getFunctionIamPolicy:getFunctionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyResult.fromMap(result);
}
