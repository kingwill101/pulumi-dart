import 'package:pulumi/pulumi.dart';
import 'role_args.dart';

/// Creates a new custom Role.
class Role4 extends CustomResource {
  /// The current deleted state of the role. This field is read only. It will be ignored in calls to CreateRole and UpdateRole.
  late final Output<bool> deleted;

  /// Optional. A human-readable description for the role.
  late final Output<String> description;

  /// Used to perform a consistent read-modify-write.
  late final Output<String> etag;

  /// The names of the permissions this role grants when bound in an IAM policy.
  late final Output<List<String>> includedPermissions;

  /// The name of the role. When `Role` is used in `CreateRole`, the role name must not be set. When `Role` is used in output and other input such as `UpdateRole`, the role name is the complete path. For example, `roles/logging.viewer` for predefined roles, `organizations/{ORGANIZATION_ID}/roles/my-role` for organization-level custom roles, and `projects/{PROJECT_ID}/roles/my-role` for project-level custom roles.
  late final Output<String> name;
  late final Output<String> project;

  /// The current launch stage of the role. If the `ALPHA` launch stage has been selected for a role, the `stage` field will not be included in the returned definition for the role.
  late final Output<String> stage;

  /// Optional. A human-readable title for the role. Typically this is limited to 100 UTF-8 bytes.
  late final Output<String> title;

  Role4(
    String name, {
    RoleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:iam/v1:Role',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deleted = Output.createUnknown<bool>();
    this.description = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.includedPermissions = Output.createUnknown<List<String>>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.stage = Output.createUnknown<String>();
    this.title = Output.createUnknown<String>();
  }
}
