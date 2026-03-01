// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_intent_message_browse_carousel_card_browse_carousel_card_item_open_url_action_url_type_hint.dart';

/// Actions on Google action to open a given url.
class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction {
  /// URL
  final String url;

  /// Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.
  final GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionUrlTypeHint?
  urlTypeHint;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction].
  /// [url] URL
  /// [urlTypeHint] Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction({
    required this.url,
    this.urlTypeHint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'urlTypeHint': ?urlTypeHint == null ? null : urlTypeHint!.value,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction(
      url: map['url'] as String,
      urlTypeHint: map['urlTypeHint'] == null
          ? null
          : GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionUrlTypeHint.fromValue(
              map['urlTypeHint'] as String,
            ),
    );
  }
}
