// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An arm role receiver.
class ArmRoleReceiver {
  /// The name of the arm role receiver. Names must be unique across all receivers within an action group.
  final pulumi.Input<String> name;
  /// The arm role id.
  final pulumi.Input<String> roleId;
  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

  /// Creates a new [ArmRoleReceiver].
  /// [name] The name of the arm role receiver. Names must be unique across all receivers within an action group.
  /// [roleId] The arm role id.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  ArmRoleReceiver({
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

  factory ArmRoleReceiver.fromMap(Map<String, dynamic> map) {
    return ArmRoleReceiver(
      name: (map['name'] as String).input(),
      roleId: (map['roleId'] as String).input(),
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : (map['useCommonAlertSchema'] as bool).input(),
    );
  }
}

