// ignore_for_file: unused_element, unnecessary_cast


/// The number of instances that can be used during this profile.
class ScaleCapacityResponse {
  /// the number of instances that will be set if metrics are not available for evaluation. The default is only used if the current instance count is lower than the default.
  final String default_;
  /// the maximum number of instances for the resource. The actual maximum number of instances is limited by the cores that are available in the subscription.
  final String maximum;
  /// the minimum number of instances for the resource.
  final String minimum;

  /// Creates a new [ScaleCapacityResponse].
  /// [default_] the number of instances that will be set if metrics are not available for evaluation. The default is only used if the current instance count is lower than the default.
  /// [maximum] the maximum number of instances for the resource. The actual maximum number of instances is limited by the cores that are available in the subscription.
  /// [minimum] the minimum number of instances for the resource.
  ScaleCapacityResponse({
    required this.default_,
    required this.maximum,
    required this.minimum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
      'maximum': maximum,
      'minimum': minimum,
    };
  }

  factory ScaleCapacityResponse.fromMap(Map<String, dynamic> map) {
    return ScaleCapacityResponse(
      default_: map['default'] as String,
      maximum: map['maximum'] as String,
      minimum: map['minimum'] as String,
    );
  }
}

