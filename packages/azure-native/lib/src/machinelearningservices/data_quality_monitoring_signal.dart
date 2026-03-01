// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'all_features.dart';
import 'categorical_data_quality_metric_threshold.dart';
import 'feature_importance_settings.dart';
import 'fixed_input_data.dart';

class DataQualityMonitoringSignal {
  /// A dictionary that maps feature names to their respective data types.
  final Map<String, String>? featureDataTypeOverride;
  /// The settings for computing feature importance.
  final FeatureImportanceSettings? featureImportanceSettings;
  /// The features to calculate drift over.
  final AllFeatures? features;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final List<CategoricalDataQualityMetricThreshold> metricThresholds;
  /// The current notification mode for this signal.
  final List<String>? notificationTypes;
  /// [Required] The data produced by the production service which drift will be calculated for.
  final FixedInputData productionData;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final Map<String, String>? properties;
  /// [Required] The data to calculate drift against.
  final FixedInputData referenceData;
  /// Expected value is 'DataQuality'.
  final String signalType;

  /// Creates a new [DataQualityMonitoringSignal].
  /// [featureDataTypeOverride] A dictionary that maps feature names to their respective data types.
  /// [featureImportanceSettings] The settings for computing feature importance.
  /// [features] The features to calculate drift over.
  /// [metricThresholds] [Required] A list of metrics to calculate and their associated thresholds.
  /// [notificationTypes] The current notification mode for this signal.
  /// [productionData] [Required] The data produced by the production service which drift will be calculated for.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [referenceData] [Required] The data to calculate drift against.
  /// [signalType] Expected value is 'DataQuality'.
  DataQualityMonitoringSignal({
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
      'metricThresholds': pulumi.Input.encodeList<CategoricalDataQualityMetricThreshold, Map<String, dynamic>>(metricThresholds, (value) => value.toMap()),
      'notificationTypes': ?notificationTypes,
      'productionData': productionData.toMap(),
      'properties': ?properties,
      'referenceData': referenceData.toMap(),
      'signalType': signalType,
    };
  }

  factory DataQualityMonitoringSignal.fromMap(Map<String, dynamic> map) {
    return DataQualityMonitoringSignal(
      featureDataTypeOverride: map['featureDataTypeOverride'] == null ? null : (map['featureDataTypeOverride'] as Map).cast<String, String>(),
      featureImportanceSettings: map['featureImportanceSettings'] == null ? null : FeatureImportanceSettings.fromMap((map['featureImportanceSettings'] as Map).cast<String, dynamic>()),
      features: map['features'] == null ? null : AllFeatures.fromMap((map['features'] as Map).cast<String, dynamic>()),
      metricThresholds: pulumi.Input.decodeList<CategoricalDataQualityMetricThreshold>(map['metricThresholds'], (value) => CategoricalDataQualityMetricThreshold.fromMap((value as Map).cast<String, dynamic>())),
      notificationTypes: map['notificationTypes'] == null ? null : (map['notificationTypes'] as List).cast<String>(),
      productionData: FixedInputData.fromMap((map['productionData'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      referenceData: FixedInputData.fromMap((map['referenceData'] as Map).cast<String, dynamic>()),
      signalType: map['signalType'] as String,
    );
  }
}

