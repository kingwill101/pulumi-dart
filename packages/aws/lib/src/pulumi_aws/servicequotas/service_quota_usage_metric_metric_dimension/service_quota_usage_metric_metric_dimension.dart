// ignore_for_file: unused_element, unnecessary_cast

class ServiceQuotaUsageMetricMetricDimension {
  final String? class_;
  final String? resource;
  final String? service;
  final String? type;

  ServiceQuotaUsageMetricMetricDimension({
    this.class_,
    this.resource,
    this.service,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final class_Value = class_;
    if (class_Value != null) {
      map['class'] = class_Value;
    }
    final resourceValue = resource;
    if (resourceValue != null) {
      map['resource'] = resourceValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ServiceQuotaUsageMetricMetricDimension.fromMap(
      Map<String, dynamic> map) {
    return ServiceQuotaUsageMetricMetricDimension(
      class_: map['class'] == null ? null : map['class'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
      service: map['service'] == null ? null : map['service'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
