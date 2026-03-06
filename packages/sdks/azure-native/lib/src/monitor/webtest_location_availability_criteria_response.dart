// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the metric alert rule criteria for a web test resource.
class WebtestLocationAvailabilityCriteriaResponse {
  /// The Application Insights resource Id.
  final pulumi.Input<String> componentId;
  /// The number of failed locations.
  final pulumi.Input<double> failedLocationCount;
  /// specifies the type of the alert criteria.
  /// Expected value is 'Microsoft.Azure.Monitor.WebtestLocationAvailabilityCriteria'.
  final pulumi.Input<String> odataType;
  /// The Application Insights web test Id.
  final pulumi.Input<String> webTestId;

  /// Creates a new [WebtestLocationAvailabilityCriteriaResponse].
  /// [componentId] The Application Insights resource Id.
  /// [failedLocationCount] The number of failed locations.
  /// [odataType] specifies the type of the alert criteria.
  /// [webTestId] The Application Insights web test Id.
  const WebtestLocationAvailabilityCriteriaResponse({
    required this.componentId,
    required this.failedLocationCount,
    required this.odataType,
    required this.webTestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': componentId,
      'failedLocationCount': failedLocationCount,
      'odataType': odataType,
      'webTestId': webTestId,
    };
  }

  factory WebtestLocationAvailabilityCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return WebtestLocationAvailabilityCriteriaResponse(
      componentId: pulumi.Input.fromValue(map['componentId'] as String),
      failedLocationCount: pulumi.Input.fromValue(map['failedLocationCount'] as double),
      odataType: pulumi.Input.fromValue(map['odataType'] as String),
      webTestId: pulumi.Input.fromValue(map['webTestId'] as String),
    );
  }
}

