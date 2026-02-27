// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIamCustomRoles.
class GetIamCustomRolesArgs {
  /// The numeric ID of the organization.
  final pulumi.Input<String>? orgId;

  /// Include Roles that have been deleted. Defaults to `false`.
  final pulumi.Input<bool>? showDeleted;

  /// When `"FULL"` is specified, the `permissions` field is returned, which includes a list of all permissions in the role. The default value is `"BASIC"`, which does not return the `permissions`.
  final pulumi.Input<String>? view;

  GetIamCustomRolesArgs({
    this.orgId,
    this.showDeleted,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final orgIdValue = orgId;
    if (orgIdValue != null) {
      map['orgId'] = orgIdValue;
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

  factory GetIamCustomRolesArgs.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRolesArgs(
      orgId: pulumi.Input.asOptionalInput<String>(map['orgId']),
      showDeleted: pulumi.Input.asOptionalInput<bool>(map['showDeleted']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
