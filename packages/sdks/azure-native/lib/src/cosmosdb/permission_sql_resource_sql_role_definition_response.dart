// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of data plane operations permitted through this Role Definition.
class PermissionSqlResourceSqlRoleDefinitionResponse {
  /// An array of data actions that are allowed.
  final pulumi.Input<List<String>?>? dataActions;
  /// An array of data actions that are denied.
  final pulumi.Input<List<String>?>? notDataActions;

  /// Creates a new [PermissionSqlResourceSqlRoleDefinitionResponse].
  /// [dataActions] An array of data actions that are allowed.
  /// [notDataActions] An array of data actions that are denied.
  const PermissionSqlResourceSqlRoleDefinitionResponse({
    this.dataActions,
    this.notDataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataActions': ?dataActions,
      'notDataActions': ?notDataActions,
    };
  }

  factory PermissionSqlResourceSqlRoleDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return PermissionSqlResourceSqlRoleDefinitionResponse(
      dataActions: (() { final guardedValue = map['dataActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notDataActions: (() { final guardedValue = map['notDataActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
