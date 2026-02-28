// ignore_for_file: unused_element, unnecessary_cast

/// Opens the given URI.
class GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction {
  /// The HTTP or HTTPS scheme URI.
  final String uri;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction].
  /// [uri] The HTTP or HTTPS scheme URI.
  GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction(
      uri: map['uri'] as String,
    );
  }
}
