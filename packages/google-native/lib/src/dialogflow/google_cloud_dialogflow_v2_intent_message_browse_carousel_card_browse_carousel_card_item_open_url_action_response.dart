// ignore_for_file: unused_element, unnecessary_cast

/// Actions on Google action to open a given url.
class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse {
  /// URL
  final String url;

  /// Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.
  final String urlTypeHint;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse].
  /// [url] URL
  /// [urlTypeHint] Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse({
    required this.url,
    required this.urlTypeHint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'url': url, 'urlTypeHint': urlTypeHint};
  }

  factory GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse(
      url: map['url'] as String,
      urlTypeHint: map['urlTypeHint'] as String,
    );
  }
}
