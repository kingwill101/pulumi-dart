import 'package:pulumi/pulumi.dart';
import 'get_function_iam_policy_args2.dart';
import 'get_function_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for function
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.cloudfunctionsv2.getFunctionIamPolicy({
/// project: _function.project,
/// location: _function.location,
/// cloudFunction: _function.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.cloudfunctionsv2.get_function_iam_policy(project=function["project"],
/// location=function["location"],
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
/// var policy = Gcp.CloudFunctionsV2.GetFunctionIamPolicy.Invoke(new()
/// {
/// Project = function.Project,
/// Location = function.Location,
/// CloudFunction = function.Name,
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
/// _, err := cloudfunctionsv2.LookupFunctionIamPolicy(ctx, &cloudfunctionsv2.LookupFunctionIamPolicyArgs{
/// Project:       pulumi.StringRef(function.Project),
/// Location:      pulumi.StringRef(function.Location),
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
/// import com.pulumi.gcp.cloudfunctionsv2.Cloudfunctionsv2Functions;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.GetFunctionIamPolicyArgs;
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
/// final var policy = Cloudfunctionsv2Functions.getFunctionIamPolicy(GetFunctionIamPolicyArgs.builder()
/// .project(function.project())
/// .location(function.location())
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
/// function: gcp:cloudfunctionsv2:getFunctionIamPolicy
/// arguments:
/// project: ${function.project}
/// location: ${function.location}
/// cloudFunction: ${function.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFunctionIamPolicyResult2> getFunctionIamPolicy2(
  GetFunctionIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudfunctionsv2/getFunctionIamPolicy:getFunctionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionIamPolicyResult2.fromMap(result);
}
