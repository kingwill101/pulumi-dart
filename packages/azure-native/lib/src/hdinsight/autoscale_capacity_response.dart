// ignore_for_file: unused_element, unnecessary_cast


/// The load-based autoscale request parameters
class AutoscaleCapacityResponse {
  /// The maximum instance count of the cluster
  final int? maxInstanceCount;
  /// The minimum instance count of the cluster
  final int? minInstanceCount;

  /// Creates a new [AutoscaleCapacityResponse].
  /// [maxInstanceCount] The maximum instance count of the cluster
  /// [minInstanceCount] The minimum instance count of the cluster
  AutoscaleCapacityResponse({
    this.maxInstanceCount,
    this.minInstanceCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': ?maxInstanceCount,
      'minInstanceCount': ?minInstanceCount,
    };
  }

  factory AutoscaleCapacityResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleCapacityResponse(
      maxInstanceCount: map['maxInstanceCount'] == null ? null : map['maxInstanceCount'] as int,
      minInstanceCount: map['minInstanceCount'] == null ? null : map['minInstanceCount'] as int,
    );
  }
}

