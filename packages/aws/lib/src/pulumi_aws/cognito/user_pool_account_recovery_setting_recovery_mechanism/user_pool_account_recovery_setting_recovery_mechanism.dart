// ignore_for_file: unused_element, unnecessary_cast

class UserPoolAccountRecoverySettingRecoveryMechanism {
  /// Recovery method for a user. Can be of the following: `verified_email`, `verified_phone_number`, and `admin_only`.
  final String name;

  /// Positive integer specifying priority of a method with 1 being the highest priority.
  final int priority;

  UserPoolAccountRecoverySettingRecoveryMechanism({
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['priority'] = priority;
    return map;
  }

  factory UserPoolAccountRecoverySettingRecoveryMechanism.fromMap(
      Map<String, dynamic> map) {
    return UserPoolAccountRecoverySettingRecoveryMechanism(
      name: map['name'] as String,
      priority: map['priority'] as int,
    );
  }
}
