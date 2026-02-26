import 'package:pulumi/pulumi.dart';
import 'get_testable_permissions_args.dart';
import 'get_testable_permissions_result.dart';

/// Retrieve a list of testable permissions for a resource. Testable permissions mean the permissions that user can add or remove in a role at a given resource. The resource can be referenced either via the full resource name or via a URI.
///
/// ## Example Usage
///
/// Retrieve all the supported permissions able to be set on `my-project` that are in either GA or BETA. This is useful for dynamically constructing custom roles.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const perms = gcp.iam.getTestablePermissions({
/// fullResourceName: "//cloudresourcemanager.googleapis.com/projects/my-project",
/// stages: [
/// "GA",
/// "BETA",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// perms = gcp.iam.get_testable_permissions(full_resource_name="//cloudresourcemanager.googleapis.com/projects/my-project",
/// stages=[
/// "GA",
/// "BETA",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var perms = Gcp.Iam.GetTestablePermissions.Invoke(new()
/// {
/// FullResourceName = "//cloudresourcemanager.googleapis.com/projects/my-project",
/// Stages = new[]
/// {
/// "GA",
/// "BETA",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.GetTestablePermissions(ctx, &iam.GetTestablePermissionsArgs{
/// FullResourceName: "//cloudresourcemanager.googleapis.com/projects/my-project",
/// Stages: []string{
/// "GA",
/// "BETA",
/// },
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
/// import com.pulumi.gcp.iam.IamFunctions;
/// import com.pulumi.gcp.iam.inputs.GetTestablePermissionsArgs;
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
/// final var perms = IamFunctions.getTestablePermissions(GetTestablePermissionsArgs.builder()
/// .fullResourceName("//cloudresourcemanager.googleapis.com/projects/my-project")
/// .stages(
/// "GA",
/// "BETA")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// perms:
/// fn::invoke:
/// function: gcp:iam:getTestablePermissions
/// arguments:
/// fullResourceName: //cloudresourcemanager.googleapis.com/projects/my-project
/// stages:
/// - GA
/// - BETA
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTestablePermissionsResult> getTestablePermissions(
  GetTestablePermissionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iam/getTestablePermissions:getTestablePermissions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTestablePermissionsResult.fromMap(result);
}
