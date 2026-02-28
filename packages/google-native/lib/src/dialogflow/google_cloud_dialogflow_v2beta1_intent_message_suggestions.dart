// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_suggestion.dart';

/// The collection of suggestions.
class GoogleCloudDialogflowV2beta1IntentMessageSuggestions {
  /// The list of suggested replies.
  final List<GoogleCloudDialogflowV2beta1IntentMessageSuggestion> suggestions;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageSuggestions].
  /// [suggestions] The list of suggested replies.
  GoogleCloudDialogflowV2beta1IntentMessageSuggestions({
    required this.suggestions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['suggestions'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageSuggestion,
        Map<String, dynamic>>(suggestions, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSuggestions.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSuggestions(
      suggestions: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageSuggestion>(
          map['suggestions'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageSuggestion.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
