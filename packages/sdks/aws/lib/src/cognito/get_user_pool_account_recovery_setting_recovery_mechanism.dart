// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserPoolAccountRecoverySettingRecoveryMechanism {
  /// - Name of the attribute.
  final pulumi.Input<String> name;
  /// - Priority of this mechanism in the recovery process (lower numbers are higher priority).
  final pulumi.Input<int> priority;

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
      name: (map['name'] as String).input(),
      priority: (map['priority'] as int).input(),
    );
  }
}

