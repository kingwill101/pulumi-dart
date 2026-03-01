// ignore_for_file: unused_element, unnecessary_cast


/// An arm role receiver.
class ArmRoleReceiverResponse {
  /// The name of the arm role receiver. Names must be unique across all receivers within an action group.
  final String name;
  /// The arm role id.
  final String roleId;
  /// Indicates whether to use common alert schema.
  final bool? useCommonAlertSchema;

  /// Creates a new [ArmRoleReceiverResponse].
  /// [name] The name of the arm role receiver. Names must be unique across all receivers within an action group.
  /// [roleId] The arm role id.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  ArmRoleReceiverResponse({
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
      name: map['name'] as String,
      roleId: map['roleId'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
    );
  }
}

