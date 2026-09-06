// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition of a prediction grade.
class PredictionResponseGrades {
  /// Name of the grade.
  final pulumi.Input<String?>? gradeName;
  /// Maximum score threshold.
  final pulumi.Input<int?>? maxScoreThreshold;
  /// Minimum score threshold.
  final pulumi.Input<int?>? minScoreThreshold;

  /// Creates a new [PredictionResponseGrades].
  /// [gradeName] Name of the grade.
  /// [maxScoreThreshold] Maximum score threshold.
  /// [minScoreThreshold] Minimum score threshold.
  const PredictionResponseGrades({
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
      gradeName: (() { final guardedValue = map['gradeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxScoreThreshold: (() { final guardedValue = map['maxScoreThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minScoreThreshold: (() { final guardedValue = map['minScoreThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
