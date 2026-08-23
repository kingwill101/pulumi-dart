// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition of a prediction distribution.
class PredictionDistributionDefinitionResponseDistributions {
  /// Number of negatives.
  final pulumi.Input<double>? negatives;
  /// Number of negatives above threshold.
  final pulumi.Input<double>? negativesAboveThreshold;
  /// Number of positives.
  final pulumi.Input<double>? positives;
  /// Number of positives above threshold.
  final pulumi.Input<double>? positivesAboveThreshold;
  /// Score threshold.
  final pulumi.Input<int>? scoreThreshold;

  /// Creates a new [PredictionDistributionDefinitionResponseDistributions].
  /// [negatives] Number of negatives.
  /// [negativesAboveThreshold] Number of negatives above threshold.
  /// [positives] Number of positives.
  /// [positivesAboveThreshold] Number of positives above threshold.
  /// [scoreThreshold] Score threshold.
  const PredictionDistributionDefinitionResponseDistributions({
    this.negatives,
    this.negativesAboveThreshold,
    this.positives,
    this.positivesAboveThreshold,
    this.scoreThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'negatives': ?negatives,
      'negativesAboveThreshold': ?negativesAboveThreshold,
      'positives': ?positives,
      'positivesAboveThreshold': ?positivesAboveThreshold,
      'scoreThreshold': ?scoreThreshold,
    };
  }

  factory PredictionDistributionDefinitionResponseDistributions.fromMap(Map<String, dynamic> map) {
    return PredictionDistributionDefinitionResponseDistributions(
      negatives: (() { final guardedValue = map['negatives']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      negativesAboveThreshold: (() { final guardedValue = map['negativesAboveThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      positives: (() { final guardedValue = map['positives']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      positivesAboveThreshold: (() { final guardedValue = map['positivesAboveThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      scoreThreshold: (() { final guardedValue = map['scoreThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
