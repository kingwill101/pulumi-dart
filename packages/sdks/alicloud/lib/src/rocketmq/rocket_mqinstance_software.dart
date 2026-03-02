// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RocketMQInstanceSoftware {
  /// Upgrade time period.
  final pulumi.Input<String>? maintainTime;
  /// Software version.
  final pulumi.Input<String>? softwareVersion;
  /// Upgrade method.
  final pulumi.Input<String>? upgradeMethod;

  /// Creates a new [RocketMQInstanceSoftware].
  /// [maintainTime] Upgrade time period.
  /// [softwareVersion] Software version.
  /// [upgradeMethod] Upgrade method.
  RocketMQInstanceSoftware({
    this.maintainTime,
    this.softwareVersion,
    this.upgradeMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintainTime': ?maintainTime,
      'softwareVersion': ?softwareVersion,
      'upgradeMethod': ?upgradeMethod,
    };
  }

  factory RocketMQInstanceSoftware.fromMap(Map<String, dynamic> map) {
    return RocketMQInstanceSoftware(
      maintainTime: map['maintainTime'] == null ? null : (map['maintainTime']! as String).input(),
      softwareVersion: map['softwareVersion'] == null ? null : (map['softwareVersion']! as String).input(),
      upgradeMethod: map['upgradeMethod'] == null ? null : (map['upgradeMethod']! as String).input(),
    );
  }
}

