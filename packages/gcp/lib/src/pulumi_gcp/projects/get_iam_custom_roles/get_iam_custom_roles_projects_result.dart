// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_iam_custom_roles_role/get_iam_custom_roles_role_projects.dart';

/// Result data returned by getIamCustomRoles.
class GetIamCustomRolesProjectsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? project;

  /// A list of all retrieved custom roles roles. Structure is defined below.
  final List<GetIamCustomRolesRoleProjects> roles;
  final bool? showDeleted;
  final String? view;

  GetIamCustomRolesProjectsResult({
    required this.id,
    this.project,
    required this.roles,
    this.showDeleted,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['roles'] = pulumi.Input.encodeList<GetIamCustomRolesRoleProjects,
        Map<String, dynamic>>(roles, (value) => value.toMap());
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

  factory GetIamCustomRolesProjectsResult.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRolesProjectsResult(
      id: map['id'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      roles: pulumi.Input.decodeList<GetIamCustomRolesRoleProjects>(
          map['roles'],
          (value) => GetIamCustomRolesRoleProjects.fromMap(
              (value as Map).cast<String, dynamic>())),
      showDeleted:
          map['showDeleted'] == null ? null : map['showDeleted'] as bool,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
