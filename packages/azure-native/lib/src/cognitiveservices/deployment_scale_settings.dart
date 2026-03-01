// ignore_for_file: unused_element, unnecessary_cast


/// Properties of Cognitive Services account deployment model. (Deprecated, please use Deployment.sku instead.)
class DeploymentScaleSettings {
  /// Deployment capacity.
  final int? capacity;
  /// Deployment scale type.
  final String? scaleType;

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
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      scaleType: map['scaleType'] == null ? null : map['scaleType'] as String,
    );
  }
}

