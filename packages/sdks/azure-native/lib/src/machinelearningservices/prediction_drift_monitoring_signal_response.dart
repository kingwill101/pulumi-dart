// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PredictionDriftMonitoringSignalResponse {
  /// A dictionary that maps feature names to their respective data types.
  final pulumi.Input<Map<String, String>?>? featureDataTypeOverride;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final pulumi.Input<List<dynamic>> metricThresholds;
  /// The current notification mode for this signal.
  final pulumi.Input<List<String>?>? notificationTypes;
  /// [Required] The data which drift will be calculated for.
  final pulumi.Input<dynamic> productionData;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>?>? properties;
  /// [Required] The data to calculate drift against.
  final pulumi.Input<dynamic> referenceData;
  /// Expected value is 'PredictionDrift'.
  final pulumi.Input<String> signalType;

  /// Creates a new [PredictionDriftMonitoringSignalResponse].
  /// [featureDataTypeOverride] A dictionary that maps feature names to their respective data types.
  /// [metricThresholds] [Required] A list of metrics to calculate and their associated thresholds.
  /// [notificationTypes] The current notification mode for this signal.
  /// [productionData] [Required] The data which drift will be calculated for.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [referenceData] [Required] The data to calculate drift against.
  /// [signalType] Expected value is 'PredictionDrift'.
  const PredictionDriftMonitoringSignalResponse({
    this.featureDataTypeOverride,
    required this.metricThresholds,
    this.notificationTypes,
    required this.productionData,
    this.properties,
    required this.referenceData,
    required this.signalType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureDataTypeOverride': ?featureDataTypeOverride,
      'metricThresholds': metricThresholds,
      'notificationTypes': ?notificationTypes,
      'productionData': productionData,
      'properties': ?properties,
      'referenceData': referenceData,
      'signalType': signalType,
    };
  }

  factory PredictionDriftMonitoringSignalResponse.fromMap(Map<String, dynamic> map) {
    return PredictionDriftMonitoringSignalResponse(
      featureDataTypeOverride: (() { final guardedValue = map['featureDataTypeOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metricThresholds: pulumi.Input.fromValue((map['metricThresholds'] as List).cast<dynamic>()),
      notificationTypes: (() { final guardedValue = map['notificationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      productionData: pulumi.Input.fromValue(map['productionData']),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      referenceData: pulumi.Input.fromValue(map['referenceData']),
      signalType: pulumi.Input.fromValue(map['signalType'] as String),
    );
  }
}
