// ignore_for_file: unused_element, unnecessary_cast

/// The quick replies response message.
class GoogleCloudDialogflowV2beta1IntentMessageQuickReplies {
  /// Optional. The collection of quick replies.
  final List<String>? quickReplies;

  /// Optional. The title of the collection of quick replies.
  final String? title;

  GoogleCloudDialogflowV2beta1IntentMessageQuickReplies({
    this.quickReplies,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final quickRepliesValue = quickReplies;
    if (quickRepliesValue != null) {
      map['quickReplies'] = quickRepliesValue;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageQuickReplies(
      quickReplies: map['quickReplies'] == null
          ? null
          : (map['quickReplies'] as List).cast<String>(),
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
