import 'package:pulumi/pulumi.dart';
import 'get_iam_custom_roles_args.dart';
import 'get_iam_custom_roles_result.dart';

/// Get information about a Google Cloud Organization IAM Custom Roles.
/// Note that you must have the `roles/iam.organizationRoleViewer`.
/// See [the official documentation](https://cloud.google.com/iam/docs/creating-custom-roles)
/// and [API](https://cloud.google.com/iam/docs/reference/rest/v1/organizations.roles/list).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.organizations.getIamCustomRoles({
/// orgId: "1234567890",
/// showDeleted: true,
/// view: "FULL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.organizations.get_iam_custom_roles(org_id="1234567890",
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
/// var example = Gcp.Organizations.GetIamCustomRoles.Invoke(new()
/// {
/// OrgId = "1234567890",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.GetIamCustomRoles(ctx, &organizations.GetIamCustomRolesArgs{
/// OrgId:       pulumi.StringRef("1234567890"),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIamCustomRolesArgs;
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
/// final var example = OrganizationsFunctions.getIamCustomRoles(GetIamCustomRolesArgs.builder()
/// .orgId("1234567890")
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
/// function: gcp:organizations:getIamCustomRoles
/// arguments:
/// orgId: '1234567890'
/// showDeleted: true
/// view: FULL
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetIamCustomRolesResult> getIamCustomRoles(
  GetIamCustomRolesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getIamCustomRoles:getIamCustomRoles',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIamCustomRolesResult.fromMap(result);
}
