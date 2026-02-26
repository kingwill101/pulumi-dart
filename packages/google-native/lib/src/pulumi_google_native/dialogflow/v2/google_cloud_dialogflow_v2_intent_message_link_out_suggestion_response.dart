// ignore_for_file: unused_element, unnecessary_cast

/// The suggestion chip message that allows the user to jump out to the app or website associated with this agent.
class GoogleCloudDialogflowV2IntentMessageLinkOutSuggestionResponse {
  /// The name of the app or site this chip is linking to.
  final String destinationName;

  /// The URI of the app or site to open when the user taps the suggestion chip.
  final String uri;

  GoogleCloudDialogflowV2IntentMessageLinkOutSuggestionResponse({
    required this.destinationName,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationName'] = destinationName;
    map['uri'] = uri;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageLinkOutSuggestionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageLinkOutSuggestionResponse(
      destinationName: map['destinationName'] as String,
      uri: map['uri'] as String,
    );
  }
}
