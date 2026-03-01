// ignore_for_file: unused_element, unnecessary_cast


/// The definition of a prediction grade.
class PredictionResponseGrades {
  /// Name of the grade.
  final String? gradeName;
  /// Maximum score threshold.
  final int? maxScoreThreshold;
  /// Minimum score threshold.
  final int? minScoreThreshold;

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
      gradeName: map['gradeName'] == null ? null : map['gradeName'] as String,
      maxScoreThreshold: map['maxScoreThreshold'] == null ? null : map['maxScoreThreshold'] as int,
      minScoreThreshold: map['minScoreThreshold'] == null ? null : map['minScoreThreshold'] as int,
    );
  }
}

