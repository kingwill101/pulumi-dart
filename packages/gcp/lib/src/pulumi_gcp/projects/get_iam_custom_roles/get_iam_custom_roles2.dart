import 'package:pulumi/pulumi.dart';
import 'get_iam_custom_roles_args2.dart';
import 'get_iam_custom_roles_result2.dart';

/// Get information about Google Cloud IAM Custom Roles from a project.
/// Note that you must have the `roles/iam.roleViewer`.
/// See [the official documentation](https://cloud.google.com/iam/docs/creating-custom-roles)
/// and [API](https://cloud.google.com/iam/docs/reference/rest/v1/projects.roles/list).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.projects.getIamCustomRoles({
/// project: "your-project-id",
/// showDeleted: true,
/// view: "FULL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.projects.get_iam_custom_roles(project="your-project-id",
/// show_deleted=True,
/// view="FULL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Gcp.Projects.GetIamCustomRoles.Invoke(new()
/// {
/// Project = "your-project-id",
/// ShowDeleted = true,
/// View = "FULL",
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
/// _, err := projects.GetIamCustomRoles(ctx, &projects.GetIamCustomRolesArgs{
/// Project:     pulumi.StringRef("your-project-id"),
/// ShowDeleted: pulumi.BoolRef(true),
/// View:        pulumi.StringRef("FULL"),
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
/// import com.pulumi.gcp.projects.inputs.GetIamCustomRolesArgs;
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
/// final var example = ProjectsFunctions.getIamCustomRoles(GetIamCustomRolesArgs.builder()
/// .project("your-project-id")
/// .showDeleted(true)
/// .view("FULL")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:projects:getIamCustomRoles
/// arguments:
/// project: your-project-id
/// showDeleted: true
/// view: FULL
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetIamCustomRolesResult2> getIamCustomRoles2(
  GetIamCustomRolesArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getIamCustomRoles:getIamCustomRoles',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIamCustomRolesResult2.fromMap(result);
}
