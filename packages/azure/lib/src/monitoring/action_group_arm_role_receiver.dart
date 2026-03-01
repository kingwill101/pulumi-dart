// ignore_for_file: unused_element, unnecessary_cast


class ActionGroupArmRoleReceiver {
  /// The name of the ARM role receiver.
  final String name;
  /// The arm role id.
  final String roleId;
  /// Enables or disables the common alert schema.
  final bool? useCommonAlertSchema;

  /// Creates a new [ActionGroupArmRoleReceiver].
  /// [name] The name of the ARM role receiver.
  /// [roleId] The arm role id.
  /// [useCommonAlertSchema] Enables or disables the common alert schema.
  ActionGroupArmRoleReceiver({
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

  factory ActionGroupArmRoleReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupArmRoleReceiver(
      name: map['name'] as String,
      roleId: map['roleId'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : map['useCommonAlertSchema'] as bool,
    );
  }
}

