// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_suggestion.dart';

/// The collection of suggestions.
class GoogleCloudDialogflowV2IntentMessageSuggestions {
  /// The list of suggested replies.
  final List<GoogleCloudDialogflowV2IntentMessageSuggestion> suggestions;

  GoogleCloudDialogflowV2IntentMessageSuggestions({
    required this.suggestions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['suggestions'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2IntentMessageSuggestion,
        Map<String, dynamic>>(suggestions, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageSuggestions.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageSuggestions(
      suggestions: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2IntentMessageSuggestion>(
          map['suggestions'],
          (value) => GoogleCloudDialogflowV2IntentMessageSuggestion.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
