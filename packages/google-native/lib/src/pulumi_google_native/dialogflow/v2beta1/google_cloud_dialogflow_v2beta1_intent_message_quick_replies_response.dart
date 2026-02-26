// ignore_for_file: unused_element, unnecessary_cast

/// The quick replies response message.
class GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse {
  /// Optional. The collection of quick replies.
  final List<String> quickReplies;

  /// Optional. The title of the collection of quick replies.
  final String title;

  GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse({
    required this.quickReplies,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['quickReplies'] = quickReplies;
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse(
      quickReplies: (map['quickReplies'] as List).cast<String>(),
      title: map['title'] as String,
    );
  }
}
