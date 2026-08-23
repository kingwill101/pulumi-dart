// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_metric_criteria_response.dart';

/// Specifies the metric alert criteria for multiple resource that has multiple metric criteria.
class MetricAlertMultipleResourceMultipleMetricCriteriaResponse {
  /// the list of multiple metric criteria for this 'all of' operation.
  final pulumi.Input<List<DynamicMetricCriteriaResponse>>? allOf;
  /// specifies the type of the alert criteria.
  /// Expected value is 'Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria'.
  final pulumi.Input<String> odataType;

  /// Creates a new [MetricAlertMultipleResourceMultipleMetricCriteriaResponse].
  /// [allOf] the list of multiple metric criteria for this 'all of' operation.
  /// [odataType] specifies the type of the alert criteria.
  const MetricAlertMultipleResourceMultipleMetricCriteriaResponse({
    this.allOf,
    required this.odataType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf': ?pulumi.Input.mapOptionalInputValue<List<DynamicMetricCriteriaResponse>, List<Map<String, dynamic>>>(allOf, (value) => pulumi.Input.encodeList<DynamicMetricCriteriaResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'odataType': odataType,
    };
  }

  factory MetricAlertMultipleResourceMultipleMetricCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return MetricAlertMultipleResourceMultipleMetricCriteriaResponse(
      allOf: (() { final guardedValue = map['allOf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DynamicMetricCriteriaResponse>(guardedValue, (value) => DynamicMetricCriteriaResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      odataType: pulumi.Input.fromValue(map['odataType'] as String),
    );
  }
}
