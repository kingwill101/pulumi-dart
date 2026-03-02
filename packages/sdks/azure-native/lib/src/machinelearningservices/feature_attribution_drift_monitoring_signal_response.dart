// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_attribution_metric_threshold_response.dart';
import 'feature_importance_settings_response.dart';
import 'fixed_input_data_response.dart';

class FeatureAttributionDriftMonitoringSignalResponse {
  /// A dictionary that maps feature names to their respective data types.
  final pulumi.Input<Map<String, String>>? featureDataTypeOverride;
  /// [Required] The settings for computing feature importance.
  final pulumi.Input<FeatureImportanceSettingsResponse> featureImportanceSettings;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final pulumi.Input<FeatureAttributionMetricThresholdResponse> metricThreshold;
  /// The current notification mode for this signal.
  final pulumi.Input<List<String>>? notificationTypes;
  /// [Required] The data which drift will be calculated for.
  final pulumi.Input<List<FixedInputDataResponse>> productionData;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>>? properties;
  /// [Required] The data to calculate drift against.
  final pulumi.Input<FixedInputDataResponse> referenceData;
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
  FeatureAttributionDriftMonitoringSignalResponse({
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
      'productionData': pulumi.Input.mapInputValue<List<FixedInputDataResponse>, List<Map<String, dynamic>>>(productionData, (value) => pulumi.Input.encodeList<FixedInputDataResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'properties': ?properties,
      'referenceData': pulumi.Input.mapInputValue<FixedInputDataResponse, Map<String, dynamic>>(referenceData, (value) => value.toMap()),
      'signalType': signalType,
    };
  }

  factory FeatureAttributionDriftMonitoringSignalResponse.fromMap(Map<String, dynamic> map) {
    return FeatureAttributionDriftMonitoringSignalResponse(
      featureDataTypeOverride: map['featureDataTypeOverride'] == null ? null : ((map['featureDataTypeOverride']! as Map).cast<String, String>()).input(),
      featureImportanceSettings: (FeatureImportanceSettingsResponse.fromMap((map['featureImportanceSettings'] as Map).cast<String, dynamic>())).input(),
      metricThreshold: (FeatureAttributionMetricThresholdResponse.fromMap((map['metricThreshold'] as Map).cast<String, dynamic>())).input(),
      notificationTypes: map['notificationTypes'] == null ? null : ((map['notificationTypes']! as List).cast<String>()).input(),
      productionData: (pulumi.Input.decodeList<FixedInputDataResponse>(map['productionData'], (value) => FixedInputDataResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      referenceData: (FixedInputDataResponse.fromMap((map['referenceData'] as Map).cast<String, dynamic>())).input(),
      signalType: (map['signalType'] as String).input(),
    );
  }
}

