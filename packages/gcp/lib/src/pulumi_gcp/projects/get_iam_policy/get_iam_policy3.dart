import 'package:pulumi/pulumi.dart';
import 'get_iam_policy_args3.dart';
import 'get_iam_policy_result3.dart';

/// Retrieves the current IAM policy data for a project.
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.projects.getIamPolicy({
/// project: "myproject",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.projects.get_iam_policy(project="myproject")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Projects.GetIamPolicy.Invoke(new()
/// {
/// Project = "myproject",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := projects.GetIamPolicy(ctx, &projects.GetIamPolicyArgs{
/// Project: "myproject",
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
/// import com.pulumi.gcp.projects.ProjectsFunctions;
/// import com.pulumi.gcp.projects.inputs.GetIamPolicyArgs;
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
/// final var policy = ProjectsFunctions.getIamPolicy(GetIamPolicyArgs.builder()
/// .project("myproject")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:projects:getIamPolicy
/// arguments:
/// project: myproject
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetIamPolicyResult3> getIamPolicy3(
  GetIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyResult3.fromMap(result);
}
