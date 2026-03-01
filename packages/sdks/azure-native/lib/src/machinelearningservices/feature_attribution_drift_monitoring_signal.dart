// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_attribution_metric_threshold.dart';
import 'feature_importance_settings.dart';
import 'fixed_input_data.dart';

class FeatureAttributionDriftMonitoringSignal {
  /// A dictionary that maps feature names to their respective data types.
  final Map<String, String>? featureDataTypeOverride;
  /// [Required] The settings for computing feature importance.
  final FeatureImportanceSettings featureImportanceSettings;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final FeatureAttributionMetricThreshold metricThreshold;
  /// The current notification mode for this signal.
  final List<String>? notificationTypes;
  /// [Required] The data which drift will be calculated for.
  final List<FixedInputData> productionData;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final Map<String, String>? properties;
  /// [Required] The data to calculate drift against.
  final FixedInputData referenceData;
  /// Expected value is 'FeatureAttributionDrift'.
  final String signalType;

  /// Creates a new [FeatureAttributionDriftMonitoringSignal].
  /// [featureDataTypeOverride] A dictionary that maps feature names to their respective data types.
  /// [featureImportanceSettings] [Required] The settings for computing feature importance.
  /// [metricThreshold] [Required] A list of metrics to calculate and their associated thresholds.
  /// [notificationTypes] The current notification mode for this signal.
  /// [productionData] [Required] The data which drift will be calculated for.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [referenceData] [Required] The data to calculate drift against.
  /// [signalType] Expected value is 'FeatureAttributionDrift'.
  FeatureAttributionDriftMonitoringSignal({
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
      'featureImportanceSettings': featureImportanceSettings.toMap(),
      'metricThreshold': metricThreshold.toMap(),
      'notificationTypes': ?notificationTypes,
      'productionData': pulumi.Input.encodeList<FixedInputData, Map<String, dynamic>>(productionData, (value) => value.toMap()),
      'properties': ?properties,
      'referenceData': referenceData.toMap(),
      'signalType': signalType,
    };
  }

  factory FeatureAttributionDriftMonitoringSignal.fromMap(Map<String, dynamic> map) {
    return FeatureAttributionDriftMonitoringSignal(
      featureDataTypeOverride: map['featureDataTypeOverride'] == null ? null : (map['featureDataTypeOverride'] as Map).cast<String, String>(),
      featureImportanceSettings: FeatureImportanceSettings.fromMap((map['featureImportanceSettings'] as Map).cast<String, dynamic>()),
      metricThreshold: FeatureAttributionMetricThreshold.fromMap((map['metricThreshold'] as Map).cast<String, dynamic>()),
      notificationTypes: map['notificationTypes'] == null ? null : (map['notificationTypes'] as List).cast<String>(),
      productionData: pulumi.Input.decodeList<FixedInputData>(map['productionData'], (value) => FixedInputData.fromMap((value as Map).cast<String, dynamic>())),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      referenceData: FixedInputData.fromMap((map['referenceData'] as Map).cast<String, dynamic>()),
      signalType: map['signalType'] as String,
    );
  }
}

