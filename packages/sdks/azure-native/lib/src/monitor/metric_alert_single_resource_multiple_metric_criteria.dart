// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_criteria.dart';

/// Specifies the metric alert criteria for a single resource that has multiple metric criteria.
class MetricAlertSingleResourceMultipleMetricCriteria {
  /// The list of metric criteria for this 'all of' operation.
  final pulumi.Input<List<MetricCriteria>>? allOf;
  /// specifies the type of the alert criteria.
  /// Expected value is 'Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria'.
  final pulumi.Input<String> odataType;

  /// Creates a new [MetricAlertSingleResourceMultipleMetricCriteria].
  /// [allOf] The list of metric criteria for this 'all of' operation.
  /// [odataType] specifies the type of the alert criteria.
  const MetricAlertSingleResourceMultipleMetricCriteria({
    this.allOf,
    required this.odataType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf': ?pulumi.Input.mapOptionalInputValue<List<MetricCriteria>, List<Map<String, dynamic>>>(allOf, (value) => pulumi.Input.encodeList<MetricCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'odataType': odataType,
    };
  }

  factory MetricAlertSingleResourceMultipleMetricCriteria.fromMap(Map<String, dynamic> map) {
    return MetricAlertSingleResourceMultipleMetricCriteria(
      allOf: (() { final guardedValue = map['allOf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetricCriteria>(guardedValue, (value) => MetricCriteria.fromMap((value as Map).cast<String, dynamic>()))); })(),
      odataType: pulumi.Input.fromValue(map['odataType'] as String),
    );
  }
}
