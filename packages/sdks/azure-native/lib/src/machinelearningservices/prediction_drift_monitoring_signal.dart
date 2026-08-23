// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'categorical_prediction_drift_metric_threshold.dart';
import 'fixed_input_data.dart';

class PredictionDriftMonitoringSignal {
  /// A dictionary that maps feature names to their respective data types.
  final pulumi.Input<Map<String, String>>? featureDataTypeOverride;
  /// [Required] A list of metrics to calculate and their associated thresholds.
  final pulumi.Input<List<CategoricalPredictionDriftMetricThreshold>> metricThresholds;
  /// The current notification mode for this signal.
  final pulumi.Input<List<String>>? notificationTypes;
  /// [Required] The data which drift will be calculated for.
  final pulumi.Input<FixedInputData> productionData;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>>? properties;
  /// [Required] The data to calculate drift against.
  final pulumi.Input<FixedInputData> referenceData;
  /// Expected value is 'PredictionDrift'.
  final pulumi.Input<String> signalType;

  /// Creates a new [PredictionDriftMonitoringSignal].
  /// [featureDataTypeOverride] A dictionary that maps feature names to their respective data types.
  /// [metricThresholds] [Required] A list of metrics to calculate and their associated thresholds.
  /// [notificationTypes] The current notification mode for this signal.
  /// [productionData] [Required] The data which drift will be calculated for.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [referenceData] [Required] The data to calculate drift against.
  /// [signalType] Expected value is 'PredictionDrift'.
  const PredictionDriftMonitoringSignal({
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
      'metricThresholds': pulumi.Input.mapInputValue<List<CategoricalPredictionDriftMetricThreshold>, List<Map<String, dynamic>>>(metricThresholds, (value) => pulumi.Input.encodeList<CategoricalPredictionDriftMetricThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationTypes': ?notificationTypes,
      'productionData': pulumi.Input.mapInputValue<FixedInputData, Map<String, dynamic>>(productionData, (value) => value.toMap()),
      'properties': ?properties,
      'referenceData': pulumi.Input.mapInputValue<FixedInputData, Map<String, dynamic>>(referenceData, (value) => value.toMap()),
      'signalType': signalType,
    };
  }

  factory PredictionDriftMonitoringSignal.fromMap(Map<String, dynamic> map) {
    return PredictionDriftMonitoringSignal(
      featureDataTypeOverride: (() { final guardedValue = map['featureDataTypeOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metricThresholds: pulumi.Input.fromValue(pulumi.Input.decodeList<CategoricalPredictionDriftMetricThreshold>(map['metricThresholds']!, (value) => CategoricalPredictionDriftMetricThreshold.fromMap((value as Map).cast<String, dynamic>()))),
      notificationTypes: (() { final guardedValue = map['notificationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      productionData: pulumi.Input.fromValue(FixedInputData.fromMap((map['productionData']! as Map).cast<String, dynamic>())),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      referenceData: pulumi.Input.fromValue(FixedInputData.fromMap((map['referenceData']! as Map).cast<String, dynamic>())),
      signalType: pulumi.Input.fromValue(map['signalType'] as String),
    );
  }
}
