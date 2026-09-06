// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the metric alert criteria for multiple resource that has multiple metric criteria.
class MetricAlertMultipleResourceMultipleMetricCriteriaResponse {
  /// the list of multiple metric criteria for this 'all of' operation.
  final pulumi.Input<List<dynamic>?>? allOf;
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
      'allOf': ?allOf,
      'odataType': odataType,
    };
  }

  factory MetricAlertMultipleResourceMultipleMetricCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return MetricAlertMultipleResourceMultipleMetricCriteriaResponse(
      allOf: (() { final guardedValue = map['allOf']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      odataType: pulumi.Input.fromValue(map['odataType'] as String),
    );
  }
}
