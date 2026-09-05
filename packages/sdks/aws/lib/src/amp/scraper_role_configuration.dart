// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScraperRoleConfiguration {
  /// ARN of the source role configuration. Must be an IAM role ARN.
  final pulumi.Input<String?>? sourceRoleArn;
  /// ARN of the target role configuration. Must be an IAM role ARN.
  final pulumi.Input<String?>? targetRoleArn;

  /// Creates a new [ScraperRoleConfiguration].
  /// [sourceRoleArn] ARN of the source role configuration. Must be an IAM role ARN.
  /// [targetRoleArn] ARN of the target role configuration. Must be an IAM role ARN.
  const ScraperRoleConfiguration({
    this.sourceRoleArn,
    this.targetRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceRoleArn': ?sourceRoleArn,
      'targetRoleArn': ?targetRoleArn,
    };
  }

  factory ScraperRoleConfiguration.fromMap(Map<String, dynamic> map) {
    return ScraperRoleConfiguration(
      sourceRoleArn: (() { final guardedValue = map['sourceRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetRoleArn: (() { final guardedValue = map['targetRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
