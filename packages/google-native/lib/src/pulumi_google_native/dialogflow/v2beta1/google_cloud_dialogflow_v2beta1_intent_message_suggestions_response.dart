// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_suggestion_response.dart';

/// The collection of suggestions.
class GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse {
  /// The list of suggested replies.
  final List<GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse>
      suggestions;

  GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse({
    required this.suggestions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['suggestions'] = Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse,
        Map<String, dynamic>>(suggestions, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse(
      suggestions: Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse>(
          map['suggestions'],
          (value) => GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
