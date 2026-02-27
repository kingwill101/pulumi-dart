import 'package:pulumi/pulumi.dart' as pulumi;
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
///
///
/// ## Import
///
/// Customized IAM organization role can be imported using their URI, e.g.
///
/// ```sh
/// $ pulumi import gcp:organizations/iAMCustomRole:IAMCustomRole my-custom-role organizations/123456789/roles/myCustomRole
/// ```
class IAMCustomRole extends pulumi.CustomResource {
  /// (Optional) The current deleted state of the role.
  late final pulumi.Output<bool> deleted;

  /// A human-readable description for the role.
  late final pulumi.Output<String?> description;

  /// The name of the role in the format `organizations/{{org_id}}/roles/{{role_id}}`. Like `id`, this field can be used as a reference in other resources such as IAM role bindings.
  late final pulumi.Output<String> name;

  /// The numeric ID of the organization in which you want to create a custom role.
  late final pulumi.Output<String> orgId;

  /// The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  late final pulumi.Output<List<String>> permissions;

  /// The role id to use for this role.
  late final pulumi.Output<String> roleId;

  /// The current launch stage of the role.
  /// Defaults to `GA`.
  /// List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  late final pulumi.Output<String?> stage;

  /// A human-readable title for the role.
  late final pulumi.Output<String> title;

  IAMCustomRole(
    String name, {
    IAMCustomRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/iAMCustomRole:IAMCustomRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
