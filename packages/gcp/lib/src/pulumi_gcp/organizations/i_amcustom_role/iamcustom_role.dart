import 'package:pulumi/pulumi.dart';
import 'iamcustom_role_args.dart';

/// Allows management of a customized Cloud IAM organization role. For more information see
/// [the official documentation](https://cloud.google.com/iam/docs/understanding-custom-roles)
/// and
/// [API](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
///
/// > **Warning:** Note that custom roles in GCP have the concept of a soft-delete. There are two issues that may arise
/// from this and how roles are propagated. 1) creating a role may involve undeleting and then updating a role with the
/// same name, possibly causing confusing behavior between undelete and update. 2) A deleted role is permanently deleted
/// after 7 days, but it can take up to 30 more days (i.e. between 7 and 37 days after deletion) before the role name is
/// made available again. This means a deleted role that has been deleted for more than 7 days cannot be changed at all
/// by the provider, and new roles cannot share that name.
///
/// ## Example Usage
///
/// This snippet creates a customized IAM organization role.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_custom_role = new gcp.organizations.IAMCustomRole("my-custom-role", {
/// roleId: "myCustomRole",
/// orgId: "123456789",
/// title: "My Custom Role",
/// description: "A description",
/// permissions: [
/// "iam.roles.list",
/// "iam.roles.create",
/// "iam.roles.delete",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_custom_role = gcp.organizations.IAMCustomRole("my-custom-role",
/// role_id="myCustomRole",
/// org_id="123456789",
/// title="My Custom Role",
/// description="A description",
/// permissions=[
/// "iam.roles.list",
/// "iam.roles.create",
/// "iam.roles.delete",
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
/// var my_custom_role = new Gcp.Organizations.IAMCustomRole("my-custom-role", new()
/// {
/// RoleId = "myCustomRole",
/// OrgId = "123456789",
/// Title = "My Custom Role",
/// Description = "A description",
/// Permissions = new[]
/// {
/// "iam.roles.list",
/// "iam.roles.create",
/// "iam.roles.delete",
/// },
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
/// _, err := organizations.NewIAMCustomRole(ctx, "my-custom-role", &organizations.IAMCustomRoleArgs{
/// RoleId:      pulumi.String("myCustomRole"),
/// OrgId:       pulumi.String("123456789"),
/// Title:       pulumi.String("My Custom Role"),
/// Description: pulumi.String("A description"),
/// Permissions: pulumi.StringArray{
/// pulumi.String("iam.roles.list"),
/// pulumi.String("iam.roles.create"),
/// pulumi.String("iam.roles.delete"),
/// },
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
/// import com.pulumi.gcp.organizations.IAMCustomRole;
/// import com.pulumi.gcp.organizations.IAMCustomRoleArgs;
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
/// var my_custom_role = new IAMCustomRole("my-custom-role", IAMCustomRoleArgs.builder()
/// .roleId("myCustomRole")
/// .orgId("123456789")
/// .title("My Custom Role")
/// .description("A description")
/// .permissions(
/// "iam.roles.list",
/// "iam.roles.create",
/// "iam.roles.delete")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-custom-role:
/// type: gcp:organizations:IAMCustomRole
/// properties:
/// roleId: myCustomRole
/// orgId: '123456789'
/// title: My Custom Role
/// description: A description
/// permissions:
/// - iam.roles.list
/// - iam.roles.create
/// - iam.roles.delete
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Customized IAM organization role can be imported using their URI, e.g.
///
/// ```sh
/// $ pulumi import gcp:organizations/iAMCustomRole:IAMCustomRole my-custom-role organizations/123456789/roles/myCustomRole
/// ```
class IAMCustomRole extends CustomResource {
  /// (Optional) The current deleted state of the role.
  late final Output<bool> deleted;

  /// A human-readable description for the role.
  late final Output<String?> description;

  /// The name of the role in the format `organizations/{{org_id}}/roles/{{role_id}}`. Like <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>, this field can be used as a reference in other resources such as IAM role bindings.
  late final Output<String> name;

  /// The numeric ID of the organization in which you want to create a custom role.
  late final Output<String> orgId;

  /// The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  late final Output<List<String>> permissions;

  /// The role id to use for this role.
  late final Output<String> roleId;

  /// The current launch stage of the role.
  /// Defaults to `GA`.
  /// List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  late final Output<String?> stage;

  /// A human-readable title for the role.
  late final Output<String> title;

  IAMCustomRole(
    String name, {
    IAMCustomRoleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/iAMCustomRole:IAMCustomRole',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deleted = registerOutput<bool>('deleted');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
    this.permissions = registerOutput<List<String>>('permissions');
    this.roleId = registerOutput<String>('roleId');
    this.stage = registerOutput<String?>('stage');
    this.title = registerOutput<String>('title');
  }
}
