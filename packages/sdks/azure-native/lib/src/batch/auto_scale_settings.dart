// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AutoScale settings for the pool.
class AutoScaleSettings {
  /// If omitted, the default value is 15 minutes (PT15M).
  final pulumi.Input<String>? evaluationInterval;
  /// A formula for the desired number of compute nodes in the pool.
  final pulumi.Input<String> formula;

  /// Creates a new [AutoScaleSettings].
  /// [evaluationInterval] If omitted, the default value is 15 minutes (PT15M).
  /// [formula] A formula for the desired number of compute nodes in the pool.
  AutoScaleSettings({
    this.evaluationInterval,
    required this.formula,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationInterval': ?evaluationInterval,
      'formula': formula,
    };
  }

  factory AutoScaleSettings.fromMap(Map<String, dynamic> map) {
    return AutoScaleSettings(
      evaluationInterval: map['evaluationInterval'] == null ? null : (map['evaluationInterval']! as String).input(),
      formula: (map['formula'] as String).input(),
    );
  }
}

