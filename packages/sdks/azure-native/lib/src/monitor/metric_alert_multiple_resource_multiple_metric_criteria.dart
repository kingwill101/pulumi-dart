// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_metric_criteria.dart';

/// Specifies the metric alert criteria for multiple resource that has multiple metric criteria.
class MetricAlertMultipleResourceMultipleMetricCriteria {
  /// the list of multiple metric criteria for this 'all of' operation.
  final pulumi.Input<List<DynamicMetricCriteria>>? allOf;
  /// specifies the type of the alert criteria.
  /// Expected value is 'Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria'.
  final pulumi.Input<String> odataType;

  /// Creates a new [MetricAlertMultipleResourceMultipleMetricCriteria].
  /// [allOf] the list of multiple metric criteria for this 'all of' operation.
  /// [odataType] specifies the type of the alert criteria.
  MetricAlertMultipleResourceMultipleMetricCriteria({
    this.allOf,
    required this.odataType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf': ?pulumi.Input.mapOptionalInputValue<List<DynamicMetricCriteria>, List<Map<String, dynamic>>>(allOf, (value) => pulumi.Input.encodeList<DynamicMetricCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'odataType': odataType,
    };
  }

  factory MetricAlertMultipleResourceMultipleMetricCriteria.fromMap(Map<String, dynamic> map) {
    return MetricAlertMultipleResourceMultipleMetricCriteria(
      allOf: map['allOf'] == null ? null : (pulumi.Input.decodeList<DynamicMetricCriteria>(map['allOf']!, (value) => DynamicMetricCriteria.fromMap((value as Map).cast<String, dynamic>()))).input(),
      odataType: (map['odataType'] as String).input(),
    );
  }
}

