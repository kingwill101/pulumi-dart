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
    final map = <String, dynamic>{};
    map['class'] = class_;
    map['resource'] = resource;
    map['service'] = service;
    map['type'] = type;
    return map;
  }

  factory GetServiceQuotaUsageMetricMetricDimension.fromMap(
      Map<String, dynamic> map) {
    return GetServiceQuotaUsageMetricMetricDimension(
      class_: map['class'] as String,
      resource: map['resource'] as String,
      service: map['service'] as String,
      type: map['type'] as String,
    );
  }
}
