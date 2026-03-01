// ignore_for_file: unused_element, unnecessary_cast


/// The definition of a scoping question.
class ScopingQuestionResponse {
  /// Input type of the question answer.
  final String inputType;
  /// Option id list.
  final List<String> optionIds;
  /// Question id.
  final String questionId;
  /// The rule of the question.
  final List<String> rules;
  /// The answer value to show the sub questions.
  final String showSubQuestionsValue;
  /// Superior question id.
  final String superiorQuestionId;

  /// Creates a new [ScopingQuestionResponse].
  /// [inputType] Input type of the question answer.
  /// [optionIds] Option id list.
  /// [questionId] Question id.
  /// [rules] The rule of the question.
  /// [showSubQuestionsValue] The answer value to show the sub questions.
  /// [superiorQuestionId] Superior question id.
  ScopingQuestionResponse({
    required this.inputType,
    required this.optionIds,
    required this.questionId,
    required this.rules,
    required this.showSubQuestionsValue,
    required this.superiorQuestionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputType': inputType,
      'optionIds': optionIds,
      'questionId': questionId,
      'rules': rules,
      'showSubQuestionsValue': showSubQuestionsValue,
      'superiorQuestionId': superiorQuestionId,
    };
  }

  factory ScopingQuestionResponse.fromMap(Map<String, dynamic> map) {
    return ScopingQuestionResponse(
      inputType: map['inputType'] as String,
      optionIds: (map['optionIds'] as List).cast<String>(),
      questionId: map['questionId'] as String,
      rules: (map['rules'] as List).cast<String>(),
      showSubQuestionsValue: map['showSubQuestionsValue'] as String,
      superiorQuestionId: map['superiorQuestionId'] as String,
    );
  }
}

