// ignore_for_file: unused_element, unnecessary_cast


class ServiceQuotaUsageMetricMetricDimension {
  final String? class_;
  final String? resource;
  final String? service;
  final String? type;

  /// Creates a new [ServiceQuotaUsageMetricMetricDimension].
  /// [class_] Optional.
  /// [resource] Optional.
  /// [service] Optional.
  /// [type] Optional.
  ServiceQuotaUsageMetricMetricDimension({
    this.class_,
    this.resource,
    this.service,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'class': ?class_,
      'resource': ?resource,
      'service': ?service,
      'type': ?type,
    };
  }

  factory ServiceQuotaUsageMetricMetricDimension.fromMap(Map<String, dynamic> map) {
    return ServiceQuotaUsageMetricMetricDimension(
      class_: map['class'] == null ? null : map['class'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
      service: map['service'] == null ? null : map['service'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

