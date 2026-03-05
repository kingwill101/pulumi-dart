// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'all_features_response.dart';
import 'categorical_data_quality_metric_threshold_response.dart';
import 'feature_importance_settings_response.dart';
import 'fixed_input_data_response.dart';

class DataQualityMonitoringSignalResponse {
  /// A dictionary that maps feature names to their respective data types.
  final pulumi.Input<Map<String, String>>? featureDataTypeOverride;
  /// The settings for computing feature importance.
  final pulumi.Input<FeatureImportanceSettingsResponse>? featureImportanceSettings;
  /// The features to calculate drift over.
  final pulumi.Input<AllFeaturesResponse>? features;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final pulumi.Input<List<CategoricalDataQualityMetricThresholdResponse>> metricThresholds;
  /// The current notification mode for this signal.
  final pulumi.Input<List<String>>? notificationTypes;
  /// [Required] The data produced by the production service which drift will be calculated for.
  final pulumi.Input<FixedInputDataResponse> productionData;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>>? properties;
  /// [Required] The data to calculate drift against.
  final pulumi.Input<FixedInputDataResponse> referenceData;
  /// Expected value is 'DataQuality'.
  final pulumi.Input<String> signalType;

  /// Creates a new [DataQualityMonitoringSignalResponse].
  /// [featureDataTypeOverride] A dictionary that maps feature names to their respective data types.
  /// [featureImportanceSettings] The settings for computing feature importance.
  /// [features] The features to calculate drift over.
  /// [metricThresholds] [Required] A list of metrics to calculate and their associated thresholds.
  /// [notificationTypes] The current notification mode for this signal.
  /// [productionData] [Required] The data produced by the production service which drift will be calculated for.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [referenceData] [Required] The data to calculate drift against.
  /// [signalType] Expected value is 'DataQuality'.
  DataQualityMonitoringSignalResponse({
    this.featureDataTypeOverride,
    this.featureImportanceSettings,
    this.features,
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
      'featureImportanceSettings': ?pulumi.Input.mapOptionalInputValue<FeatureImportanceSettingsResponse, Map<String, dynamic>>(featureImportanceSettings, (value) => value.toMap()),
      'features': ?pulumi.Input.mapOptionalInputValue<AllFeaturesResponse, Map<String, dynamic>>(features, (value) => value.toMap()),
      'metricThresholds': pulumi.Input.mapInputValue<List<CategoricalDataQualityMetricThresholdResponse>, List<Map<String, dynamic>>>(metricThresholds, (value) => pulumi.Input.encodeList<CategoricalDataQualityMetricThresholdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationTypes': ?notificationTypes,
      'productionData': pulumi.Input.mapInputValue<FixedInputDataResponse, Map<String, dynamic>>(productionData, (value) => value.toMap()),
      'properties': ?properties,
      'referenceData': pulumi.Input.mapInputValue<FixedInputDataResponse, Map<String, dynamic>>(referenceData, (value) => value.toMap()),
      'signalType': signalType,
    };
  }

  factory DataQualityMonitoringSignalResponse.fromMap(Map<String, dynamic> map) {
    return DataQualityMonitoringSignalResponse(
      featureDataTypeOverride: (() { final guardedValue = map['featureDataTypeOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      featureImportanceSettings: (() { final guardedValue = map['featureImportanceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureImportanceSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AllFeaturesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricThresholds: pulumi.Input.fromValue(pulumi.Input.decodeList<CategoricalDataQualityMetricThresholdResponse>(map['metricThresholds']!, (value) => CategoricalDataQualityMetricThresholdResponse.fromMap((value as Map).cast<String, dynamic>()))),
      notificationTypes: (() { final guardedValue = map['notificationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      productionData: pulumi.Input.fromValue(FixedInputDataResponse.fromMap((map['productionData']! as Map).cast<String, dynamic>())),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      referenceData: pulumi.Input.fromValue(FixedInputDataResponse.fromMap((map['referenceData']! as Map).cast<String, dynamic>())),
      signalType: pulumi.Input.fromValue(map['signalType'] as String),
    );
  }
}

