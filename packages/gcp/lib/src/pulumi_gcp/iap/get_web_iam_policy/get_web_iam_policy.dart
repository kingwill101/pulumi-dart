import 'package:pulumi/pulumi.dart';
import 'get_web_iam_policy_args.dart';
import 'get_web_iam_policy_result.dart';

/// Retrieves the current IAM policy data for web
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebIamPolicy({
/// project: projectService.project,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_iam_policy(project=project_service["project"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Iap.GetWebIamPolicy.Invoke(new()
/// {
/// Project = projectService.Project,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.LookupWebIamPolicy(ctx, &iap.LookupWebIamPolicyArgs{
/// Project: pulumi.StringRef(projectService.Project),
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebIamPolicyArgs;
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
/// final var policy = IapFunctions.getWebIamPolicy(GetWebIamPolicyArgs.builder()
/// .project(projectService.project())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:iap:getWebIamPolicy
/// arguments:
/// project: ${projectService.project}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetWebIamPolicyResult> getWebIamPolicy(
  GetWebIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebIamPolicy:getWebIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebIamPolicyResult.fromMap(result);
}
