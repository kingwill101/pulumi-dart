// ignore_for_file: unused_element, unnecessary_cast

/// Opens the user's default web browser app to the specified uri If the user has an app installed that is registered as the default handler for the URL, then this app will be opened instead, and its icon will be used in the suggested action UI.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUriResponse {
  /// The uri to open on the user device
  final String uri;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUriResponse].
  /// [uri] The uri to open on the user device
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUriResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': uri};
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUriResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUriResponse(
      uri: map['uri'] as String,
    );
  }
}
