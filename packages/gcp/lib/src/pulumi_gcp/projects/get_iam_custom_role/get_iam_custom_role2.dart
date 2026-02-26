import 'package:pulumi/pulumi.dart';
import 'get_iam_custom_role_args2.dart';
import 'get_iam_custom_role_result2.dart';

/// Get information about a Google Cloud Project IAM Custom Role. Note that you must have the `roles/iam.roleViewer` role (or equivalent permissions) at the project level to use this datasource.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.projects.getIamCustomRole({
/// project: "your-project-id",
/// roleId: "your-role-id",
/// });
/// const project = new gcp.projects.IAMMember("project", {
/// project: "your-project-id",
/// role: example.then(example => example.name),
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.projects.get_iam_custom_role(project="your-project-id",
/// role_id="your-role-id")
/// project = gcp.projects.IAMMember("project",
/// project="your-project-id",
/// role=example.name,
/// member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Gcp.Projects.GetIamCustomRole.Invoke(new()
/// {
/// Project = "your-project-id",
/// RoleId = "your-role-id",
/// });
///
/// var project = new Gcp.Projects.IAMMember("project", new()
/// {
/// Project = "your-project-id",
/// Role = example.Apply(getIamCustomRoleResult => getIamCustomRoleResult.Name),
/// Member = "user:jane@example.com",
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
/// example, err := projects.GetIamCustomRole(ctx, &projects.GetIamCustomRoleArgs{
/// Project: pulumi.StringRef("your-project-id"),
/// RoleId:  "your-role-id",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = projects.NewIAMMember(ctx, "project", &projects.IAMMemberArgs{
/// Project: pulumi.String("your-project-id"),
/// Role:    pulumi.String(example.Name),
/// Member:  pulumi.String("user:jane@example.com"),
/// })
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
/// import com.pulumi.gcp.projects.inputs.GetIamCustomRoleArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
/// final var example = ProjectsFunctions.getIamCustomRole(GetIamCustomRoleArgs.builder()
/// .project("your-project-id")
/// .roleId("your-role-id")
/// .build());
///
/// var project = new IAMMember("project", IAMMemberArgs.builder()
/// .project("your-project-id")
/// .role(example.name())
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:projects:IAMMember
/// properties:
/// project: your-project-id
/// role: ${example.name}
/// member: user:jane@example.com
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:projects:getIamCustomRole
/// arguments:
/// project: your-project-id
/// roleId: your-role-id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetIamCustomRoleResult2> getIamCustomRole2(
  GetIamCustomRoleArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getIamCustomRole:getIamCustomRole',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIamCustomRoleResult2.fromMap(result);
}
