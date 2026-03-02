// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition of a prediction grade.
class PredictionResponseGrades {
  /// Name of the grade.
  final pulumi.Input<String>? gradeName;
  /// Maximum score threshold.
  final pulumi.Input<int>? maxScoreThreshold;
  /// Minimum score threshold.
  final pulumi.Input<int>? minScoreThreshold;

  /// Creates a new [PredictionResponseGrades].
  /// [gradeName] Name of the grade.
  /// [maxScoreThreshold] Maximum score threshold.
  /// [minScoreThreshold] Minimum score threshold.
  PredictionResponseGrades({
    this.gradeName,
    this.maxScoreThreshold,
    this.minScoreThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gradeName': ?gradeName,
      'maxScoreThreshold': ?maxScoreThreshold,
      'minScoreThreshold': ?minScoreThreshold,
    };
  }

  factory PredictionResponseGrades.fromMap(Map<String, dynamic> map) {
    return PredictionResponseGrades(
      gradeName: map['gradeName'] == null ? null : (map['gradeName'] as String).input(),
      maxScoreThreshold: map['maxScoreThreshold'] == null ? null : (map['maxScoreThreshold'] as int).input(),
      minScoreThreshold: map['minScoreThreshold'] == null ? null : (map['minScoreThreshold'] as int).input(),
    );
  }
}

