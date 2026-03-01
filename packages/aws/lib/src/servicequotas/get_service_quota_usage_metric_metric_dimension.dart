// ignore_for_file: unused_element, unnecessary_cast

class GetServiceQuotaUsageMetricMetricDimension {
  final String class_;
  final String resource;
  final String service;
  final String type;

  /// Creates a new [GetServiceQuotaUsageMetricMetricDimension].
  /// [class_] Required.
  /// [resource] Required.
  /// [service] Required.
  /// [type] Required.
  GetServiceQuotaUsageMetricMetricDimension({
    required this.class_,
    required this.resource,
    required this.service,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'class': class_,
      'resource': resource,
      'service': service,
      'type': type,
    };
  }

  factory GetServiceQuotaUsageMetricMetricDimension.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceQuotaUsageMetricMetricDimension(
      class_: map['class'] as String,
      resource: map['resource'] as String,
      service: map['service'] as String,
      type: map['type'] as String,
    );
  }
}
