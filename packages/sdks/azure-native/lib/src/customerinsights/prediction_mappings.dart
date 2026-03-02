// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of the link mapping of prediction.
class PredictionMappings {
  /// The grade of the link mapping.
  final pulumi.Input<String> grade;
  /// The reason of the link mapping.
  final pulumi.Input<String> reason;
  /// The score of the link mapping.
  final pulumi.Input<String> score;

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
      grade: (map['grade'] as String).input(),
      reason: (map['reason'] as String).input(),
      score: (map['score'] as String).input(),
    );
  }
}

