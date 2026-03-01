// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'categorical_prediction_drift_metric_threshold.dart';
import 'fixed_input_data.dart';

class PredictionDriftMonitoringSignal {
  /// A dictionary that maps feature names to their respective data types.
  final Map<String, String>? featureDataTypeOverride;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final List<CategoricalPredictionDriftMetricThreshold> metricThresholds;
  /// The current notification mode for this signal.
  final List<String>? notificationTypes;
  /// [Required] The data which drift will be calculated for.
  final FixedInputData productionData;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final Map<String, String>? properties;
  /// [Required] The data to calculate drift against.
  final FixedInputData referenceData;
  /// Expected value is 'PredictionDrift'.
  final String signalType;

  /// Creates a new [PredictionDriftMonitoringSignal].
  /// [featureDataTypeOverride] A dictionary that maps feature names to their respective data types.
  /// [metricThresholds] [Required] A list of metrics to calculate and their associated thresholds.
  /// [notificationTypes] The current notification mode for this signal.
  /// [productionData] [Required] The data which drift will be calculated for.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [referenceData] [Required] The data to calculate drift against.
  /// [signalType] Expected value is 'PredictionDrift'.
  PredictionDriftMonitoringSignal({
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
      'metricThresholds': pulumi.Input.encodeList<CategoricalPredictionDriftMetricThreshold, Map<String, dynamic>>(metricThresholds, (value) => value.toMap()),
      'notificationTypes': ?notificationTypes,
      'productionData': productionData.toMap(),
      'properties': ?properties,
      'referenceData': referenceData.toMap(),
      'signalType': signalType,
    };
  }

  factory PredictionDriftMonitoringSignal.fromMap(Map<String, dynamic> map) {
    return PredictionDriftMonitoringSignal(
      featureDataTypeOverride: map['featureDataTypeOverride'] == null ? null : (map['featureDataTypeOverride'] as Map).cast<String, String>(),
      metricThresholds: pulumi.Input.decodeList<CategoricalPredictionDriftMetricThreshold>(map['metricThresholds'], (value) => CategoricalPredictionDriftMetricThreshold.fromMap((value as Map).cast<String, dynamic>())),
      notificationTypes: map['notificationTypes'] == null ? null : (map['notificationTypes'] as List).cast<String>(),
      productionData: FixedInputData.fromMap((map['productionData'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      referenceData: FixedInputData.fromMap((map['referenceData'] as Map).cast<String, dynamic>()),
      signalType: map['signalType'] as String,
    );
  }
}

