// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceQuotaUsageMetricMetricDimension {
  final pulumi.Input<String>? class_;
  final pulumi.Input<String>? resource;
  final pulumi.Input<String>? service;
  final pulumi.Input<String>? type;

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

  factory ServiceQuotaUsageMetricMetricDimension.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceQuotaUsageMetricMetricDimension(
      class_: (() {
        final guardedValue = map['class'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resource: (() {
        final guardedValue = map['resource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      service: (() {
        final guardedValue = map['service'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
