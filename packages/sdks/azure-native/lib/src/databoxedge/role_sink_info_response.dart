// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Compute role against which events will be raised.
class RoleSinkInfoResponse {
  /// Compute role ID.
  final pulumi.Input<String> roleId;

  /// Creates a new [RoleSinkInfoResponse].
  /// [roleId] Compute role ID.
  RoleSinkInfoResponse({required this.roleId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'roleId': roleId};
  }

  factory RoleSinkInfoResponse.fromMap(Map<String, dynamic> map) {
    return RoleSinkInfoResponse(
      roleId: pulumi.Input.fromValue(map['roleId'] as String),
    );
  }
}
