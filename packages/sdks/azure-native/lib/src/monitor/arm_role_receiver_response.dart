// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An arm role receiver.
class ArmRoleReceiverResponse {
  /// The name of the arm role receiver. Names must be unique across all receivers within an action group.
  final pulumi.Input<String> name;
  /// The arm role id.
  final pulumi.Input<String> roleId;
  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

  /// Creates a new [ArmRoleReceiverResponse].
  /// [name] The name of the arm role receiver. Names must be unique across all receivers within an action group.
  /// [roleId] The arm role id.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  const ArmRoleReceiverResponse({
    required this.name,
    required this.roleId,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'roleId': roleId,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory ArmRoleReceiverResponse.fromMap(Map<String, dynamic> map) {
    return ArmRoleReceiverResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      roleId: pulumi.Input.fromValue(map['roleId'] as String),
      useCommonAlertSchema: (() { final guardedValue = map['useCommonAlertSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

