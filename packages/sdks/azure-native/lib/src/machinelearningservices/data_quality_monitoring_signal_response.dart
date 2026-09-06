// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_importance_settings_response.dart';

class DataQualityMonitoringSignalResponse {
  /// A dictionary that maps feature names to their respective data types.
  final pulumi.Input<Map<String, String>?>? featureDataTypeOverride;
  /// The settings for computing feature importance.
  final pulumi.Input<FeatureImportanceSettingsResponse?>? featureImportanceSettings;
  /// The features to calculate drift over.
  final pulumi.Input<dynamic>? features;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final pulumi.Input<List<dynamic>> metricThresholds;
  /// The current notification mode for this signal.
  final pulumi.Input<List<String>?>? notificationTypes;
  /// [Required] The data produced by the production service which drift will be calculated for.
  final pulumi.Input<dynamic> productionData;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>?>? properties;
  /// [Required] The data to calculate drift against.
  final pulumi.Input<dynamic> referenceData;
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
  const DataQualityMonitoringSignalResponse({
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
      'features': ?features,
      'metricThresholds': metricThresholds,
      'notificationTypes': ?notificationTypes,
      'productionData': productionData,
      'properties': ?properties,
      'referenceData': referenceData,
      'signalType': signalType,
    };
  }

  factory DataQualityMonitoringSignalResponse.fromMap(Map<String, dynamic> map) {
    return DataQualityMonitoringSignalResponse(
      featureDataTypeOverride: (() { final guardedValue = map['featureDataTypeOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      featureImportanceSettings: (() { final guardedValue = map['featureImportanceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureImportanceSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      metricThresholds: pulumi.Input.fromValue((map['metricThresholds'] as List).cast<dynamic>()),
      notificationTypes: (() { final guardedValue = map['notificationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      productionData: pulumi.Input.fromValue(map['productionData']),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      referenceData: pulumi.Input.fromValue(map['referenceData']),
      signalType: pulumi.Input.fromValue(map['signalType'] as String),
    );
  }
}
