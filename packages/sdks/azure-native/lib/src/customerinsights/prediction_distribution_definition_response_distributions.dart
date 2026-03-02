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
  PredictionDistributionDefinitionResponseDistributions({
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
      negatives: map['negatives'] == null ? null : (map['negatives']! as double).input(),
      negativesAboveThreshold: map['negativesAboveThreshold'] == null ? null : (map['negativesAboveThreshold']! as double).input(),
      positives: map['positives'] == null ? null : (map['positives']! as double).input(),
      positivesAboveThreshold: map['positivesAboveThreshold'] == null ? null : (map['positivesAboveThreshold']! as double).input(),
      scoreThreshold: map['scoreThreshold'] == null ? null : (map['scoreThreshold']! as int).input(),
    );
  }
}

