// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount {
  /// Maximum.
  final pulumi.Input<int?>? max;
  /// Minimum.
  final pulumi.Input<int?>? min;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount].
  /// [max] Maximum.
  /// [min] Minimum.
  const SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
