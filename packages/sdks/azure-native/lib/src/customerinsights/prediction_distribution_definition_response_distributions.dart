// ignore_for_file: unused_element, unnecessary_cast


/// The definition of a prediction distribution.
class PredictionDistributionDefinitionResponseDistributions {
  /// Number of negatives.
  final double? negatives;
  /// Number of negatives above threshold.
  final double? negativesAboveThreshold;
  /// Number of positives.
  final double? positives;
  /// Number of positives above threshold.
  final double? positivesAboveThreshold;
  /// Score threshold.
  final int? scoreThreshold;

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
      negatives: map['negatives'] == null ? null : map['negatives'] as double,
      negativesAboveThreshold: map['negativesAboveThreshold'] == null ? null : map['negativesAboveThreshold'] as double,
      positives: map['positives'] == null ? null : map['positives'] as double,
      positivesAboveThreshold: map['positivesAboveThreshold'] == null ? null : map['positivesAboveThreshold'] as double,
      scoreThreshold: map['scoreThreshold'] == null ? null : map['scoreThreshold'] as int,
    );
  }
}

