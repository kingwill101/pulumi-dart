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
  DeploymentScaleSettingsResponse({
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
      activeCapacity: (map['activeCapacity'] as int).input(),
      capacity: map['capacity'] == null ? null : (map['capacity']! as int).input(),
      scaleType: map['scaleType'] == null ? null : (map['scaleType']! as String).input(),
    );
  }
}

