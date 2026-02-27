import 'package:pulumi/pulumi.dart' as pulumi;
import 'iamcustom_role_projects_iamcustom_role_args.dart';

/// Allows management of a customized Cloud IAM project role. For more information see
/// [the official documentation](https://cloud.google.com/iam/docs/understanding-custom-roles)
/// and
/// [API](https://cloud.google.com/iam/reference/rest/v1/projects.roles).
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
/// This snippet creates a customized IAM role.
///
///
///
/// ## Import
///
/// Custom Roles can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/roles/{{role_id}}`
///
/// * `{{project}}/{{role_id}}`
///
/// * `{{role_id}}`
///
/// When using the `pulumi import` command, Custom Roles can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/iAMCustomRole:IAMCustomRole default projects/{{project}}/roles/{{role_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:projects/iAMCustomRole:IAMCustomRole default {{project}}/{{role_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:projects/iAMCustomRole:IAMCustomRole default {{role_id}}
/// ```
class IAMCustomRoleProjectsIAmcustomRole extends pulumi.CustomResource {
  /// (Optional) The current deleted state of the role.
  late final pulumi.Output<bool> deleted;

  /// A human-readable description for the role.
  late final pulumi.Output<String?> description;

  /// The name of the role in the format `projects/{{project}}/roles/{{role_id}}`. Like `id`, this field can be used as a reference in other resources such as IAM role bindings.
  late final pulumi.Output<String> name;

  /// The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  late final pulumi.Output<List<String>> permissions;

  /// The project that the custom role will be created in.
  /// Defaults to the provider project configuration.
  late final pulumi.Output<String> project;

  /// The camel case role id to use for this role. Cannot contain `-` characters.
  late final pulumi.Output<String> roleId;

  /// The current launch stage of the role.
  /// Defaults to `GA`.
  /// List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  late final pulumi.Output<String?> stage;

  /// A human-readable title for the role.
  late final pulumi.Output<String> title;

  IAMCustomRoleProjectsIAmcustomRole(
    String name, {
    IAMCustomRoleProjectsIAmcustomRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/iAMCustomRole:IAMCustomRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deleted = registerOutput<bool>('deleted');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.permissions = registerOutput<List<String>>('permissions');
    this.project = registerOutput<String>('project');
    this.roleId = registerOutput<String>('roleId');
    this.stage = registerOutput<String?>('stage');
    this.title = registerOutput<String>('title');
  }
}
