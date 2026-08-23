// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scoping answer.
class ScopingAnswer {
  /// Question answer value list.
  final pulumi.Input<List<String>> answers;
  /// Question id.
  final pulumi.Input<String> questionId;

  /// Creates a new [ScopingAnswer].
  /// [answers] Question answer value list.
  /// [questionId] Question id.
  const ScopingAnswer({
    required this.answers,
    required this.questionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'answers': answers,
      'questionId': questionId,
    };
  }

  factory ScopingAnswer.fromMap(Map<String, dynamic> map) {
    return ScopingAnswer(
      answers: pulumi.Input.fromValue((map['answers'] as List).cast<String>()),
      questionId: pulumi.Input.fromValue(map['questionId'] as String),
    );
  }
}
