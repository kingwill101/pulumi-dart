// ignore_for_file: unused_element, unnecessary_cast

/// The suggestion chip message that the user can tap to quickly post a reply to the conversation.
class GoogleCloudDialogflowV2beta1IntentMessageSuggestion {
  /// The text shown the in the suggestion chip.
  final String title;

  GoogleCloudDialogflowV2beta1IntentMessageSuggestion({
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSuggestion.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSuggestion(
      title: map['title'] as String,
    );
  }
}
