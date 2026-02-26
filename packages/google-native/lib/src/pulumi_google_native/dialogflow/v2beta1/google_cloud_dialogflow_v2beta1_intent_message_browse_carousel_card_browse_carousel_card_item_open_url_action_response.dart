// ignore_for_file: unused_element, unnecessary_cast

/// Actions on Google action to open a given url.
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse {
  /// URL
  final String url;

  /// Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.
  final String urlTypeHint;

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse({
    required this.url,
    required this.urlTypeHint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['urlTypeHint'] = urlTypeHint;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse(
      url: map['url'] as String,
      urlTypeHint: map['urlTypeHint'] as String,
    );
  }
}
