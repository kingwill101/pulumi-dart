// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of Cognitive Services account deployment model. (Deprecated, please use Deployment.sku instead.)
class DeploymentScaleSettings {
  /// Deployment capacity.
  final pulumi.Input<int?>? capacity;
  /// Deployment scale type.
  final pulumi.Input<dynamic>? scaleType;

  /// Creates a new [DeploymentScaleSettings].
  /// [capacity] Deployment capacity.
  /// [scaleType] Deployment scale type.
  const DeploymentScaleSettings({
    this.capacity,
    this.scaleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'scaleType': ?scaleType,
    };
  }

  factory DeploymentScaleSettings.fromMap(Map<String, dynamic> map) {
    return DeploymentScaleSettings(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      scaleType: (() { final guardedValue = map['scaleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
