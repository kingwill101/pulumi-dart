// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_attribution_metric_threshold_response.dart';
import 'feature_importance_settings_response.dart';

class FeatureAttributionDriftMonitoringSignalResponse {
  /// A dictionary that maps feature names to their respective data types.
  final pulumi.Input<Map<String, String>?>? featureDataTypeOverride;
  /// [Required] The settings for computing feature importance.
  final pulumi.Input<FeatureImportanceSettingsResponse> featureImportanceSettings;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final pulumi.Input<FeatureAttributionMetricThresholdResponse> metricThreshold;
  /// The current notification mode for this signal.
  final pulumi.Input<List<String>?>? notificationTypes;
  /// [Required] The data which drift will be calculated for.
  final pulumi.Input<List<dynamic>> productionData;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>?>? properties;
  /// [Required] The data to calculate drift against.
  final pulumi.Input<dynamic> referenceData;
  /// Expected value is 'FeatureAttributionDrift'.
  final pulumi.Input<String> signalType;

  /// Creates a new [FeatureAttributionDriftMonitoringSignalResponse].
  /// [featureDataTypeOverride] A dictionary that maps feature names to their respective data types.
  /// [featureImportanceSettings] [Required] The settings for computing feature importance.
  /// [metricThreshold] [Required] A list of metrics to calculate and their associated thresholds.
  /// [notificationTypes] The current notification mode for this signal.
  /// [productionData] [Required] The data which drift will be calculated for.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [referenceData] [Required] The data to calculate drift against.
  /// [signalType] Expected value is 'FeatureAttributionDrift'.
  const FeatureAttributionDriftMonitoringSignalResponse({
    this.featureDataTypeOverride,
    required this.featureImportanceSettings,
    required this.metricThreshold,
    this.notificationTypes,
    required this.productionData,
    this.properties,
    required this.referenceData,
    required this.signalType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureDataTypeOverride': ?featureDataTypeOverride,
      'featureImportanceSettings': pulumi.Input.mapInputValue<FeatureImportanceSettingsResponse, Map<String, dynamic>>(featureImportanceSettings, (value) => value.toMap()),
      'metricThreshold': pulumi.Input.mapInputValue<FeatureAttributionMetricThresholdResponse, Map<String, dynamic>>(metricThreshold, (value) => value.toMap()),
      'notificationTypes': ?notificationTypes,
      'productionData': productionData,
      'properties': ?properties,
      'referenceData': referenceData,
      'signalType': signalType,
    };
  }

  factory FeatureAttributionDriftMonitoringSignalResponse.fromMap(Map<String, dynamic> map) {
    return FeatureAttributionDriftMonitoringSignalResponse(
      featureDataTypeOverride: (() { final guardedValue = map['featureDataTypeOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      featureImportanceSettings: pulumi.Input.fromValue(FeatureImportanceSettingsResponse.fromMap((map['featureImportanceSettings']! as Map).cast<String, dynamic>())),
      metricThreshold: pulumi.Input.fromValue(FeatureAttributionMetricThresholdResponse.fromMap((map['metricThreshold']! as Map).cast<String, dynamic>())),
      notificationTypes: (() { final guardedValue = map['notificationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      productionData: pulumi.Input.fromValue((map['productionData'] as List).cast<dynamic>()),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      referenceData: pulumi.Input.fromValue(map['referenceData']),
      signalType: pulumi.Input.fromValue(map['signalType'] as String),
    );
  }
}
