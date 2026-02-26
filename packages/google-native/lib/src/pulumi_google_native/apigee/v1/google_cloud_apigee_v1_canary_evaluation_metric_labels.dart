// ignore_for_file: unused_element, unnecessary_cast

/// Labels that can be used to filter Apigee metrics.
class GoogleCloudApigeeV1CanaryEvaluationMetricLabels {
  /// The environment ID associated with the metrics.
  final String? env;

  /// The instance ID associated with the metrics. In Apigee Hybrid, the value is configured during installation.
  final String instanceId;

  /// The location associated with the metrics.
  final String location;

  GoogleCloudApigeeV1CanaryEvaluationMetricLabels({
    this.env,
    required this.instanceId,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final envValue = env;
    if (envValue != null) {
      map['env'] = envValue;
    }
    map['instanceId'] = instanceId;
    map['location'] = location;
    return map;
  }

  factory GoogleCloudApigeeV1CanaryEvaluationMetricLabels.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1CanaryEvaluationMetricLabels(
      env: map['env'] == null ? null : map['env'] as String,
      instanceId: map['instanceId'] as String,
      location: map['location'] as String,
    );
  }
}
