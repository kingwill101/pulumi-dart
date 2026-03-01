// ignore_for_file: unused_element, unnecessary_cast


/// Scoping answer.
class ScopingAnswerResponse {
  /// Question answer value list.
  final List<String> answers;
  /// Question id.
  final String questionId;

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
      answers: (map['answers'] as List).cast<String>(),
      questionId: map['questionId'] as String,
    );
  }
}

