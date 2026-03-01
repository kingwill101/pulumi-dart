// ignore_for_file: unused_element, unnecessary_cast


/// Definition of the link mapping of prediction.
class PredictionMappings {
  /// The grade of the link mapping.
  final String grade;
  /// The reason of the link mapping.
  final String reason;
  /// The score of the link mapping.
  final String score;

  /// Creates a new [PredictionMappings].
  /// [grade] The grade of the link mapping.
  /// [reason] The reason of the link mapping.
  /// [score] The score of the link mapping.
  PredictionMappings({
    required this.grade,
    required this.reason,
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grade': grade,
      'reason': reason,
      'score': score,
    };
  }

  factory PredictionMappings.fromMap(Map<String, dynamic> map) {
    return PredictionMappings(
      grade: map['grade'] as String,
      reason: map['reason'] as String,
      score: map['score'] as String,
    );
  }
}

