// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateInstanceRequirementsMemoryMib {
  /// Maximum.
  final pulumi.Input<int?>? max;
  /// Minimum.
  final pulumi.Input<int> min;

  /// Creates a new [LaunchTemplateInstanceRequirementsMemoryMib].
  /// [max] Maximum.
  /// [min] Minimum.
  const LaunchTemplateInstanceRequirementsMemoryMib({
    this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': min,
    };
  }

  factory LaunchTemplateInstanceRequirementsMemoryMib.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateInstanceRequirementsMemoryMib(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      min: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['min'])),
    );
  }
}
