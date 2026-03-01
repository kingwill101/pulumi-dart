// ignore_for_file: unused_element, unnecessary_cast


class GetUserPoolAccountRecoverySettingRecoveryMechanism {
  /// - Name of the attribute.
  final String name;
  /// - Priority of this mechanism in the recovery process (lower numbers are higher priority).
  final int priority;

  /// Creates a new [GetUserPoolAccountRecoverySettingRecoveryMechanism].
  /// [name] - Name of the attribute.
  /// [priority] - Priority of this mechanism in the recovery process (lower numbers are higher priority).
  GetUserPoolAccountRecoverySettingRecoveryMechanism({
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'priority': priority,
    };
  }

  factory GetUserPoolAccountRecoverySettingRecoveryMechanism.fromMap(Map<String, dynamic> map) {
    return GetUserPoolAccountRecoverySettingRecoveryMechanism(
      name: map['name'] as String,
      priority: map['priority'] as int,
    );
  }
}

