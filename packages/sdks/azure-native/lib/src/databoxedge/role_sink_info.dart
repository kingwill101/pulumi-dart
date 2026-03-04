// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Compute role against which events will be raised.
class RoleSinkInfo {
  /// Compute role ID.
  final pulumi.Input<String> roleId;

  /// Creates a new [RoleSinkInfo].
  /// [roleId] Compute role ID.
  RoleSinkInfo({required this.roleId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'roleId': roleId};
  }

  factory RoleSinkInfo.fromMap(Map<String, dynamic> map) {
    return RoleSinkInfo(
      roleId: pulumi.Input.fromValue(map['roleId'] as String),
    );
  }
}
