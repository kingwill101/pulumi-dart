// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_detector_configuration_random_cut_forest_ignore_near_expected_from_above.dart';
import 'anomaly_detector_configuration_random_cut_forest_ignore_near_expected_from_below.dart';

class AnomalyDetectorConfigurationRandomCutForest {
  /// Configuration block for suppressing anomalies when the observed value is slightly above the expected value. See `ignoreNearExpectedFromAbove` below.
  final pulumi.Input<AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove>? ignoreNearExpectedFromAbove;
  /// Configuration block for suppressing anomalies when the observed value is slightly below the expected value. See `ignoreNearExpectedFromBelow` below.
  final pulumi.Input<AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow>? ignoreNearExpectedFromBelow;
  /// PromQL query used to select the time series for anomaly detection.
  final pulumi.Input<String> query;
  /// Number of data points used to train the model. Must be at least `256`.
  final pulumi.Input<int>? sampleSize;
  /// Number of consecutive data points that form a single input to the model. Must be at least `2`.
  final pulumi.Input<int>? shingleSize;

  /// Creates a new [AnomalyDetectorConfigurationRandomCutForest].
  /// [ignoreNearExpectedFromAbove] Configuration block for suppressing anomalies when the observed value is slightly above the expected value. See `ignoreNearExpectedFromAbove` below.
  /// [ignoreNearExpectedFromBelow] Configuration block for suppressing anomalies when the observed value is slightly below the expected value. See `ignoreNearExpectedFromBelow` below.
  /// [query] PromQL query used to select the time series for anomaly detection.
  /// [sampleSize] Number of data points used to train the model. Must be at least `256`.
  /// [shingleSize] Number of consecutive data points that form a single input to the model. Must be at least `2`.
  const AnomalyDetectorConfigurationRandomCutForest({
    this.ignoreNearExpectedFromAbove,
    this.ignoreNearExpectedFromBelow,
    required this.query,
    this.sampleSize,
    this.shingleSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreNearExpectedFromAbove': ?pulumi.Input.mapOptionalInputValue<AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove, Map<String, dynamic>>(ignoreNearExpectedFromAbove, (value) => value.toMap()),
      'ignoreNearExpectedFromBelow': ?pulumi.Input.mapOptionalInputValue<AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow, Map<String, dynamic>>(ignoreNearExpectedFromBelow, (value) => value.toMap()),
      'query': query,
      'sampleSize': ?sampleSize,
      'shingleSize': ?shingleSize,
    };
  }

  factory AnomalyDetectorConfigurationRandomCutForest.fromMap(Map<String, dynamic> map) {
    return AnomalyDetectorConfigurationRandomCutForest(
      ignoreNearExpectedFromAbove: (() { final guardedValue = map['ignoreNearExpectedFromAbove']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromAbove.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ignoreNearExpectedFromBelow: (() { final guardedValue = map['ignoreNearExpectedFromBelow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnomalyDetectorConfigurationRandomCutForestIgnoreNearExpectedFromBelow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      sampleSize: (() { final guardedValue = map['sampleSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shingleSize: (() { final guardedValue = map['shingleSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
