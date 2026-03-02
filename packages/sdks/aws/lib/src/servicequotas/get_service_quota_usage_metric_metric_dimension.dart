// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceQuotaUsageMetricMetricDimension {
  final pulumi.Input<String> class_;
  final pulumi.Input<String> resource;
  final pulumi.Input<String> service;
  final pulumi.Input<String> type;

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

  factory GetServiceQuotaUsageMetricMetricDimension.fromMap(Map<String, dynamic> map) {
    return GetServiceQuotaUsageMetricMetricDimension(
      class_: (map['class'] as String).input(),
      resource: (map['resource'] as String).input(),
      service: (map['service'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

