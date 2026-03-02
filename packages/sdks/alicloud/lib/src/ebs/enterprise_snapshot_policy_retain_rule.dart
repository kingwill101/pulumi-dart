// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseSnapshotPolicyRetainRule {
  /// Retention based on counting method.
  final pulumi.Input<int>? number;
  /// Time unit.
  final pulumi.Input<int>? timeInterval;
  /// Time-based retention.
  final pulumi.Input<String>? timeUnit;

  /// Creates a new [EnterpriseSnapshotPolicyRetainRule].
  /// [number] Retention based on counting method.
  /// [timeInterval] Time unit.
  /// [timeUnit] Time-based retention.
  EnterpriseSnapshotPolicyRetainRule({
    this.number,
    this.timeInterval,
    this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': ?number,
      'timeInterval': ?timeInterval,
      'timeUnit': ?timeUnit,
    };
  }

  factory EnterpriseSnapshotPolicyRetainRule.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicyRetainRule(
      number: map['number'] == null ? null : (map['number'] as int).input(),
      timeInterval: map['timeInterval'] == null ? null : (map['timeInterval'] as int).input(),
      timeUnit: map['timeUnit'] == null ? null : (map['timeUnit'] as String).input(),
    );
  }
}

