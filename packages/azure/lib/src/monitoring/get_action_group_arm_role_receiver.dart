// ignore_for_file: unused_element, unnecessary_cast


class GetActionGroupArmRoleReceiver {
  /// Specifies the name of the Action Group.
  final String name;
  /// The arm role id.
  final String roleId;
  /// Indicates whether to use common alert schema.
  final bool useCommonAlertSchema;

  /// Creates a new [GetActionGroupArmRoleReceiver].
  /// [name] Specifies the name of the Action Group.
  /// [roleId] The arm role id.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  GetActionGroupArmRoleReceiver({
    required this.name,
    required this.roleId,
    required this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'roleId': roleId,
      'useCommonAlertSchema': useCommonAlertSchema,
    };
  }

  factory GetActionGroupArmRoleReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupArmRoleReceiver(
      name: map['name'] as String,
      roleId: map['roleId'] as String,
      useCommonAlertSchema: map['useCommonAlertSchema'] as bool,
    );
  }
}

