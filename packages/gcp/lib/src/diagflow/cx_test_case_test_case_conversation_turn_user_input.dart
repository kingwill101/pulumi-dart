// ignore_for_file: unused_element, unnecessary_cast

import 'cx_test_case_test_case_conversation_turn_user_input_input.dart';

class CxTestCaseTestCaseConversationTurnUserInput {
  /// Whether sentiment analysis is enabled.
  final bool? enableSentimentAnalysis;

  /// Parameters that need to be injected into the conversation during intent detection.
  final String? injectedParameters;

  /// User input. Supports text input, event input, dtmf input in the test case.
  /// Structure is documented below.
  final CxTestCaseTestCaseConversationTurnUserInputInput? input;

  /// If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled.
  final bool? isWebhookEnabled;

  /// Creates a new [CxTestCaseTestCaseConversationTurnUserInput].
  /// [enableSentimentAnalysis] Whether sentiment analysis is enabled.
  /// [injectedParameters] Parameters that need to be injected into the conversation during intent detection.
  /// [input] User input. Supports text input, event input, dtmf input in the test case.
  /// [isWebhookEnabled] If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled.
  CxTestCaseTestCaseConversationTurnUserInput({
    this.enableSentimentAnalysis,
    this.injectedParameters,
    this.input,
    this.isWebhookEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableSentimentAnalysisValue = enableSentimentAnalysis;
    if (enableSentimentAnalysisValue != null) {
      map['enableSentimentAnalysis'] = enableSentimentAnalysisValue;
    }
    final injectedParametersValue = injectedParameters;
    if (injectedParametersValue != null) {
      map['injectedParameters'] = injectedParametersValue;
    }
    final inputValue = input;
    if (inputValue != null) {
      map['input'] = inputValue.toMap();
    }
    final isWebhookEnabledValue = isWebhookEnabled;
    if (isWebhookEnabledValue != null) {
      map['isWebhookEnabled'] = isWebhookEnabledValue;
    }
    return map;
  }

  factory CxTestCaseTestCaseConversationTurnUserInput.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnUserInput(
      enableSentimentAnalysis: map['enableSentimentAnalysis'] == null
          ? null
          : map['enableSentimentAnalysis'] as bool,
      injectedParameters: map['injectedParameters'] == null
          ? null
          : map['injectedParameters'] as String,
      input: map['input'] == null
          ? null
          : CxTestCaseTestCaseConversationTurnUserInputInput.fromMap(
              (map['input'] as Map).cast<String, dynamic>()),
      isWebhookEnabled: map['isWebhookEnabled'] == null
          ? null
          : map['isWebhookEnabled'] as bool,
    );
  }
}
