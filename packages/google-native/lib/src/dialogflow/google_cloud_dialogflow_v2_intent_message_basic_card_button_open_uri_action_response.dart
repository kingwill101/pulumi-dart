// ignore_for_file: unused_element, unnecessary_cast

/// Opens the given URI.
class GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriActionResponse {
  /// The HTTP or HTTPS scheme URI.
  final String uri;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriActionResponse].
  /// [uri] The HTTP or HTTPS scheme URI.
  GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriActionResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uri'] = uri;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriActionResponse(
      uri: map['uri'] as String,
    );
  }
}
