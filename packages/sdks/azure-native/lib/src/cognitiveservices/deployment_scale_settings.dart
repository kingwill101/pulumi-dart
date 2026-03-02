// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of Cognitive Services account deployment model. (Deprecated, please use Deployment.sku instead.)
class DeploymentScaleSettings {
  /// Deployment capacity.
  final pulumi.Input<int>? capacity;
  /// Deployment scale type.
  final pulumi.Input<String>? scaleType;

  /// Creates a new [DeploymentScaleSettings].
  /// [capacity] Deployment capacity.
  /// [scaleType] Deployment scale type.
  DeploymentScaleSettings({
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
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      scaleType: map['scaleType'] == null ? null : (map['scaleType'] as String).input(),
    );
  }
}

