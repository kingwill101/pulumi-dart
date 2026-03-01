// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'all_features.dart';
import 'categorical_data_drift_metric_threshold.dart';
import 'feature_importance_settings.dart';
import 'fixed_input_data.dart';

class DataDriftMonitoringSignal {
  /// A dictionary that maps feature names to their respective data types.
  final Map<String, String>? featureDataTypeOverride;
  /// The settings for computing feature importance.
  final FeatureImportanceSettings? featureImportanceSettings;
  /// The feature filter which identifies which feature to calculate drift over.
  final AllFeatures? features;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final List<CategoricalDataDriftMetricThreshold> metricThresholds;
  /// The current notification mode for this signal.
  final List<String>? notificationTypes;
  /// [Required] The data which drift will be calculated for.
  final FixedInputData productionData;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final Map<String, String>? properties;
  /// [Required] The data to calculate drift against.
  final FixedInputData referenceData;
  /// Expected value is 'DataDrift'.
  final String signalType;

  /// Creates a new [DataDriftMonitoringSignal].
  /// [featureDataTypeOverride] A dictionary that maps feature names to their respective data types.
  /// [featureImportanceSettings] The settings for computing feature importance.
  /// [features] The feature filter which identifies which feature to calculate drift over.
  /// [metricThresholds] [Required] A list of metrics to calculate and their associated thresholds.
  /// [notificationTypes] The current notification mode for this signal.
  /// [productionData] [Required] The data which drift will be calculated for.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [referenceData] [Required] The data to calculate drift against.
  /// [signalType] Expected value is 'DataDrift'.
  DataDriftMonitoringSignal({
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
      'metricThresholds': pulumi.Input.encodeList<CategoricalDataDriftMetricThreshold, Map<String, dynamic>>(metricThresholds, (value) => value.toMap()),
      'notificationTypes': ?notificationTypes,
      'productionData': productionData.toMap(),
      'properties': ?properties,
      'referenceData': referenceData.toMap(),
      'signalType': signalType,
    };
  }

  factory DataDriftMonitoringSignal.fromMap(Map<String, dynamic> map) {
    return DataDriftMonitoringSignal(
      featureDataTypeOverride: map['featureDataTypeOverride'] == null ? null : (map['featureDataTypeOverride'] as Map).cast<String, String>(),
      featureImportanceSettings: map['featureImportanceSettings'] == null ? null : FeatureImportanceSettings.fromMap((map['featureImportanceSettings'] as Map).cast<String, dynamic>()),
      features: map['features'] == null ? null : AllFeatures.fromMap((map['features'] as Map).cast<String, dynamic>()),
      metricThresholds: pulumi.Input.decodeList<CategoricalDataDriftMetricThreshold>(map['metricThresholds'], (value) => CategoricalDataDriftMetricThreshold.fromMap((value as Map).cast<String, dynamic>())),
      notificationTypes: map['notificationTypes'] == null ? null : (map['notificationTypes'] as List).cast<String>(),
      productionData: FixedInputData.fromMap((map['productionData'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      referenceData: FixedInputData.fromMap((map['referenceData'] as Map).cast<String, dynamic>()),
      signalType: map['signalType'] as String,
    );
  }
}

