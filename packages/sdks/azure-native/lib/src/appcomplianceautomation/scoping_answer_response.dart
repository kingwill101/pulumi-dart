// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scoping answer.
class ScopingAnswerResponse {
  /// Question answer value list.
  final pulumi.Input<List<String>> answers;
  /// Question id.
  final pulumi.Input<String> questionId;

  /// Creates a new [ScopingAnswerResponse].
  /// [answers] Question answer value list.
  /// [questionId] Question id.
  ScopingAnswerResponse({
    required this.answers,
    required this.questionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'answers': answers,
      'questionId': questionId,
    };
  }

  factory ScopingAnswerResponse.fromMap(Map<String, dynamic> map) {
    return ScopingAnswerResponse(
      answers: pulumi.Input.fromValue((map['answers'] as List).cast<String>()),
      questionId: pulumi.Input.fromValue(map['questionId'] as String),
    );
  }
}

