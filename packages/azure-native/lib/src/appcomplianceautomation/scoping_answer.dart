// ignore_for_file: unused_element, unnecessary_cast


/// Scoping answer.
class ScopingAnswer {
  /// Question answer value list.
  final List<String> answers;
  /// Question id.
  final String questionId;

  /// Creates a new [ScopingAnswer].
  /// [answers] Question answer value list.
  /// [questionId] Question id.
  ScopingAnswer({
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
      answers: (map['answers'] as List).cast<String>(),
      questionId: map['questionId'] as String,
    );
  }
}

