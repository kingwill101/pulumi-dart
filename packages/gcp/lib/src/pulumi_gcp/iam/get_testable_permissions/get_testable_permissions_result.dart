// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_testable_permissions_permission/get_testable_permissions_permission.dart';

/// Result data returned by getTestablePermissions.
class GetTestablePermissionsResult {
  /// The the support level of this permission for custom roles.
  final String? customSupportLevel;
  final String fullResourceName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of permissions matching the provided input. Structure is defined below.
  final List<GetTestablePermissionsPermission> permissions;
  final List<String>? stages;

  GetTestablePermissionsResult({
    this.customSupportLevel,
    required this.fullResourceName,
    required this.id,
    required this.permissions,
    this.stages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customSupportLevelValue = customSupportLevel;
    if (customSupportLevelValue != null) {
      map['customSupportLevel'] = customSupportLevelValue;
    }
    map['fullResourceName'] = fullResourceName;
    map['id'] = id;
    map['permissions'] = Input.encodeList<GetTestablePermissionsPermission,
        Map<String, dynamic>>(permissions, (value) => value.toMap());
    final stagesValue = stages;
    if (stagesValue != null) {
      map['stages'] = stagesValue;
    }
    return map;
  }

  factory GetTestablePermissionsResult.fromMap(Map<String, dynamic> map) {
    return GetTestablePermissionsResult(
      customSupportLevel: map['customSupportLevel'] == null
          ? null
          : map['customSupportLevel'] as String,
      fullResourceName: map['fullResourceName'] as String,
      id: map['id'] as String,
      permissions: Input.decodeList<GetTestablePermissionsPermission>(
          map['permissions'],
          (value) => GetTestablePermissionsPermission.fromMap(
              (value as Map).cast<String, dynamic>())),
      stages:
          map['stages'] == null ? null : (map['stages'] as List).cast<String>(),
    );
  }
}
