// ignore_for_file: unused_element, unnecessary_cast

/// The suggestion chip message that the user can tap to quickly post a reply to the conversation.
class GoogleCloudDialogflowV2IntentMessageSuggestion {
  /// The text shown the in the suggestion chip.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageSuggestion].
  /// [title] The text shown the in the suggestion chip.
  GoogleCloudDialogflowV2IntentMessageSuggestion({required this.title});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'title': title};
  }

  factory GoogleCloudDialogflowV2IntentMessageSuggestion.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageSuggestion(
      title: map['title'] as String,
    );
  }
}
