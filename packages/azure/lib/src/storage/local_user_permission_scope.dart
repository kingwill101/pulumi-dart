// ignore_for_file: unused_element, unnecessary_cast

import 'local_user_permission_scope_permissions.dart';

class LocalUserPermissionScope {
  /// A `permissions` block as defined below.
  final LocalUserPermissionScopePermissions permissions;
  /// The container name (when `service` is set to `blob`) or the file share name (when `service` is set to `file`), used by the Storage Account Local User.
  final String resourceName;
  /// The storage service used by this Storage Account Local User. Possible values are `blob` and `file`.
  final String service;

  /// Creates a new [LocalUserPermissionScope].
  /// [permissions] A `permissions` block as defined below.
  /// [resourceName] The container name (when `service` is set to `blob`) or the file share name (when `service` is set to `file`), used by the Storage Account Local User.
  /// [service] The storage service used by this Storage Account Local User. Possible values are `blob` and `file`.
  LocalUserPermissionScope({
    required this.permissions,
    required this.resourceName,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': permissions.toMap(),
      'resourceName': resourceName,
      'service': service,
    };
  }

  factory LocalUserPermissionScope.fromMap(Map<String, dynamic> map) {
    return LocalUserPermissionScope(
      permissions: LocalUserPermissionScopePermissions.fromMap((map['permissions'] as Map).cast<String, dynamic>()),
      resourceName: map['resourceName'] as String,
      service: map['service'] as String,
    );
  }
}

