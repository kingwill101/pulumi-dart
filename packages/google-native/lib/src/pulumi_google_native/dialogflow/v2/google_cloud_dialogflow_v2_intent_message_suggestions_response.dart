// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_suggestion_response.dart';

/// The collection of suggestions.
class GoogleCloudDialogflowV2IntentMessageSuggestionsResponse {
  /// The list of suggested replies.
  final List<GoogleCloudDialogflowV2IntentMessageSuggestionResponse>
      suggestions;

  GoogleCloudDialogflowV2IntentMessageSuggestionsResponse({
    required this.suggestions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['suggestions'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2IntentMessageSuggestionResponse,
        Map<String, dynamic>>(suggestions, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageSuggestionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageSuggestionsResponse(
      suggestions: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2IntentMessageSuggestionResponse>(
          map['suggestions'],
          (value) =>
              GoogleCloudDialogflowV2IntentMessageSuggestionResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
