// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'all_features_response.dart';
import 'categorical_data_drift_metric_threshold_response.dart';
import 'feature_importance_settings_response.dart';
import 'fixed_input_data_response.dart';

class DataDriftMonitoringSignalResponse {
  /// A dictionary that maps feature names to their respective data types.
  final Map<String, String>? featureDataTypeOverride;
  /// The settings for computing feature importance.
  final FeatureImportanceSettingsResponse? featureImportanceSettings;
  /// The feature filter which identifies which feature to calculate drift over.
  final AllFeaturesResponse? features;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final List<CategoricalDataDriftMetricThresholdResponse> metricThresholds;
  /// The current notification mode for this signal.
  final List<String>? notificationTypes;
  /// [Required] The data which drift will be calculated for.
  final FixedInputDataResponse productionData;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final Map<String, String>? properties;
  /// [Required] The data to calculate drift against.
  final FixedInputDataResponse referenceData;
  /// Expected value is 'DataDrift'.
  final String signalType;

  /// Creates a new [DataDriftMonitoringSignalResponse].
  /// [featureDataTypeOverride] A dictionary that maps feature names to their respective data types.
  /// [featureImportanceSettings] The settings for computing feature importance.
  /// [features] The feature filter which identifies which feature to calculate drift over.
  /// [metricThresholds] [Required] A list of metrics to calculate and their associated thresholds.
  /// [notificationTypes] The current notification mode for this signal.
  /// [productionData] [Required] The data which drift will be calculated for.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [referenceData] [Required] The data to calculate drift against.
  /// [signalType] Expected value is 'DataDrift'.
  DataDriftMonitoringSignalResponse({
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
      'featureImportanceSettings': ?featureImportanceSettings == null ? null : featureImportanceSettings!.toMap(),
      'features': ?features == null ? null : features!.toMap(),
      'metricThresholds': pulumi.Input.encodeList<CategoricalDataDriftMetricThresholdResponse, Map<String, dynamic>>(metricThresholds, (value) => value.toMap()),
      'notificationTypes': ?notificationTypes,
      'productionData': productionData.toMap(),
      'properties': ?properties,
      'referenceData': referenceData.toMap(),
      'signalType': signalType,
    };
  }

  factory DataDriftMonitoringSignalResponse.fromMap(Map<String, dynamic> map) {
    return DataDriftMonitoringSignalResponse(
      featureDataTypeOverride: map['featureDataTypeOverride'] == null ? null : (map['featureDataTypeOverride'] as Map).cast<String, String>(),
      featureImportanceSettings: map['featureImportanceSettings'] == null ? null : FeatureImportanceSettingsResponse.fromMap((map['featureImportanceSettings'] as Map).cast<String, dynamic>()),
      features: map['features'] == null ? null : AllFeaturesResponse.fromMap((map['features'] as Map).cast<String, dynamic>()),
      metricThresholds: pulumi.Input.decodeList<CategoricalDataDriftMetricThresholdResponse>(map['metricThresholds'], (value) => CategoricalDataDriftMetricThresholdResponse.fromMap((value as Map).cast<String, dynamic>())),
      notificationTypes: map['notificationTypes'] == null ? null : (map['notificationTypes'] as List).cast<String>(),
      productionData: FixedInputDataResponse.fromMap((map['productionData'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      referenceData: FixedInputDataResponse.fromMap((map['referenceData'] as Map).cast<String, dynamic>()),
      signalType: map['signalType'] as String,
    );
  }
}

