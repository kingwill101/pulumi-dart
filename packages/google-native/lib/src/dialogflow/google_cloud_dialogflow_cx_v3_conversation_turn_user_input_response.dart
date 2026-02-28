// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_query_input_response.dart';

/// The input from the human user.
class GoogleCloudDialogflowCxV3ConversationTurnUserInputResponse {
  /// Whether sentiment analysis is enabled.
  final bool enableSentimentAnalysis;

  /// Parameters that need to be injected into the conversation during intent detection.
  final Map<String, String> injectedParameters;

  /// Supports text input, event input, dtmf input in the test case.
  final GoogleCloudDialogflowCxV3QueryInputResponse input;

  /// If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled.
  final bool isWebhookEnabled;

  /// Creates a new [GoogleCloudDialogflowCxV3ConversationTurnUserInputResponse].
  /// [enableSentimentAnalysis] Whether sentiment analysis is enabled.
  /// [injectedParameters] Parameters that need to be injected into the conversation during intent detection.
  /// [input] Supports text input, event input, dtmf input in the test case.
  /// [isWebhookEnabled] If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled.
  GoogleCloudDialogflowCxV3ConversationTurnUserInputResponse({
    required this.enableSentimentAnalysis,
    required this.injectedParameters,
    required this.input,
    required this.isWebhookEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableSentimentAnalysis'] = enableSentimentAnalysis;
    map['injectedParameters'] = injectedParameters;
    map['input'] = input.toMap();
    map['isWebhookEnabled'] = isWebhookEnabled;
    return map;
  }

  factory GoogleCloudDialogflowCxV3ConversationTurnUserInputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ConversationTurnUserInputResponse(
      enableSentimentAnalysis: map['enableSentimentAnalysis'] as bool,
      injectedParameters:
          (map['injectedParameters'] as Map).cast<String, String>(),
      input: GoogleCloudDialogflowCxV3QueryInputResponse.fromMap(
          (map['input'] as Map).cast<String, dynamic>()),
      isWebhookEnabled: map['isWebhookEnabled'] as bool,
    );
  }
}
