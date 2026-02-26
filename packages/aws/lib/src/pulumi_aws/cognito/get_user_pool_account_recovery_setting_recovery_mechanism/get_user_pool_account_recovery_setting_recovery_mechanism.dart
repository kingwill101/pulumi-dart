// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolAccountRecoverySettingRecoveryMechanism {
  /// - Name of the attribute.
  final String name;

  /// - Priority of this mechanism in the recovery process (lower numbers are higher priority).
  final int priority;

  GetUserPoolAccountRecoverySettingRecoveryMechanism({
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['priority'] = priority;
    return map;
  }

  factory GetUserPoolAccountRecoverySettingRecoveryMechanism.fromMap(
      Map<String, dynamic> map) {
    return GetUserPoolAccountRecoverySettingRecoveryMechanism(
      name: map['name'] as String,
      priority: map['priority'] as int,
    );
  }
}
