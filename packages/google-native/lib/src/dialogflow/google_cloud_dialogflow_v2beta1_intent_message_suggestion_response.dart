// ignore_for_file: unused_element, unnecessary_cast

/// The suggestion chip message that the user can tap to quickly post a reply to the conversation.
class GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse {
  /// The text shown the in the suggestion chip.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse].
  /// [title] The text shown the in the suggestion chip.
  GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse({
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse(
      title: map['title'] as String,
    );
  }
}
