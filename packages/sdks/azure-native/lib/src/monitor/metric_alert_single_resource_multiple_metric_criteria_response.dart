// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_criteria_response.dart';

/// Specifies the metric alert criteria for a single resource that has multiple metric criteria.
class MetricAlertSingleResourceMultipleMetricCriteriaResponse {
  /// The list of metric criteria for this 'all of' operation.
  final pulumi.Input<List<MetricCriteriaResponse>>? allOf;
  /// specifies the type of the alert criteria.
  /// Expected value is 'Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria'.
  final pulumi.Input<String> odataType;

  /// Creates a new [MetricAlertSingleResourceMultipleMetricCriteriaResponse].
  /// [allOf] The list of metric criteria for this 'all of' operation.
  /// [odataType] specifies the type of the alert criteria.
  MetricAlertSingleResourceMultipleMetricCriteriaResponse({
    this.allOf,
    required this.odataType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf': ?pulumi.Input.mapOptionalInputValue<List<MetricCriteriaResponse>, List<Map<String, dynamic>>>(allOf, (value) => pulumi.Input.encodeList<MetricCriteriaResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'odataType': odataType,
    };
  }

  factory MetricAlertSingleResourceMultipleMetricCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return MetricAlertSingleResourceMultipleMetricCriteriaResponse(
      allOf: map['allOf'] == null ? null : (pulumi.Input.decodeList<MetricCriteriaResponse>(map['allOf']!, (value) => MetricCriteriaResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      odataType: (map['odataType'] as String).input(),
    );
  }
}

