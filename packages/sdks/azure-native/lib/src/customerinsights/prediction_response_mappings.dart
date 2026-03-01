// ignore_for_file: unused_element, unnecessary_cast


/// Definition of the link mapping of prediction.
class PredictionResponseMappings {
  /// The grade of the link mapping.
  final String grade;
  /// The reason of the link mapping.
  final String reason;
  /// The score of the link mapping.
  final String score;

  /// Creates a new [PredictionResponseMappings].
  /// [grade] The grade of the link mapping.
  /// [reason] The reason of the link mapping.
  /// [score] The score of the link mapping.
  PredictionResponseMappings({
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

  factory PredictionResponseMappings.fromMap(Map<String, dynamic> map) {
    return PredictionResponseMappings(
      grade: map['grade'] as String,
      reason: map['reason'] as String,
      score: map['score'] as String,
    );
  }
}

