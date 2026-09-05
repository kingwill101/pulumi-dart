// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolAccountRecoverySettingRecoveryMechanism {
  /// Recovery method for a user. Can be of the following: `verifiedEmail`, `verifiedPhoneNumber`, and `adminOnly`.
  final pulumi.Input<String> name;
  /// Positive integer specifying priority of a method with 1 being the highest priority.
  final pulumi.Input<int> priority;

  /// Creates a new [UserPoolAccountRecoverySettingRecoveryMechanism].
  /// [name] Recovery method for a user. Can be of the following: `verifiedEmail`, `verifiedPhoneNumber`, and `adminOnly`.
  /// [priority] Positive integer specifying priority of a method with 1 being the highest priority.
  const UserPoolAccountRecoverySettingRecoveryMechanism({
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'priority': priority,
    };
  }

  factory UserPoolAccountRecoverySettingRecoveryMechanism.fromMap(Map<String, dynamic> map) {
    return UserPoolAccountRecoverySettingRecoveryMechanism(
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
    );
  }
}
