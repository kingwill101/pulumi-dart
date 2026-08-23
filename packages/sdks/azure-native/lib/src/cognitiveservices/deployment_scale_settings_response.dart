// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of Cognitive Services account deployment model. (Deprecated, please use Deployment.sku instead.)
class DeploymentScaleSettingsResponse {
  /// Deployment active capacity. This value might be different from `capacity` if customer recently updated `capacity`.
  final pulumi.Input<int> activeCapacity;
  /// Deployment capacity.
  final pulumi.Input<int>? capacity;
  /// Deployment scale type.
  final pulumi.Input<String>? scaleType;

  /// Creates a new [DeploymentScaleSettingsResponse].
  /// [activeCapacity] Deployment active capacity. This value might be different from `capacity` if customer recently updated `capacity`.
  /// [capacity] Deployment capacity.
  /// [scaleType] Deployment scale type.
  const DeploymentScaleSettingsResponse({
    required this.activeCapacity,
    this.capacity,
    this.scaleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeCapacity': activeCapacity,
      'capacity': ?capacity,
      'scaleType': ?scaleType,
    };
  }

  factory DeploymentScaleSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentScaleSettingsResponse(
      activeCapacity: pulumi.Input.fromValue(map['activeCapacity'] as int),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scaleType: (() { final guardedValue = map['scaleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
