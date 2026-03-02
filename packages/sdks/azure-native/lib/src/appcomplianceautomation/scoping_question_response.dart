// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition of a scoping question.
class ScopingQuestionResponse {
  /// Input type of the question answer.
  final pulumi.Input<String> inputType;
  /// Option id list.
  final pulumi.Input<List<String>> optionIds;
  /// Question id.
  final pulumi.Input<String> questionId;
  /// The rule of the question.
  final pulumi.Input<List<String>> rules;
  /// The answer value to show the sub questions.
  final pulumi.Input<String> showSubQuestionsValue;
  /// Superior question id.
  final pulumi.Input<String> superiorQuestionId;

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
      inputType: (map['inputType'] as String).input(),
      optionIds: ((map['optionIds'] as List).cast<String>()).input(),
      questionId: (map['questionId'] as String).input(),
      rules: ((map['rules'] as List).cast<String>()).input(),
      showSubQuestionsValue: (map['showSubQuestionsValue'] as String).input(),
      superiorQuestionId: (map['superiorQuestionId'] as String).input(),
    );
  }
}

