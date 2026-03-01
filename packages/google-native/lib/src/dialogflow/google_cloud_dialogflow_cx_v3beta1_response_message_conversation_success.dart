// ignore_for_file: unused_element, unnecessary_cast

/// Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about. Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess. You may set this, for example: * In the entry_fulfillment of a Page if entering the page indicates that the conversation succeeded. * In a webhook response when you determine that you handled the customer issue.
class GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess {
  /// Custom metadata. Dialogflow doesn't impose any structure on this.
  final Map<String, String>? metadata;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess].
  /// [metadata] Custom metadata. Dialogflow doesn't impose any structure on this.
  GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess({
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metadata': ?metadata};
  }

  factory GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess(
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
    );
  }
}
