// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIamCustomRoles.
class GetIamCustomRolesProjectsArgs {
  /// The project were the custom role has been created in. Defaults to the provider project configuration.
  final pulumi.Input<String>? project;

  /// Include Roles that have been deleted. Defaults to `false`.
  final pulumi.Input<bool>? showDeleted;

  /// When `"FULL"` is specified, the `permissions` field is returned, which includes a list of all permissions in the role. The default value is `"BASIC"`, which does not return the `permissions`.
  final pulumi.Input<String>? view;

  GetIamCustomRolesProjectsArgs({
    this.project,
    this.showDeleted,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final showDeletedValue = showDeleted;
    if (showDeletedValue != null) {
      map['showDeleted'] = showDeletedValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetIamCustomRolesProjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRolesProjectsArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      showDeleted: pulumi.Input.asOptionalInput<bool>(map['showDeleted']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
