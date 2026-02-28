// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_intent_message_browse_carousel_card_browse_carousel_card_item_open_url_action.dart';
import 'google_cloud_dialogflow_v2_intent_message_image.dart';

/// Browsing carousel tile
class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem {
  /// Optional. Description of the carousel item. Maximum of four lines of text.
  final String? description;

  /// Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum of one line of text.
  final String? footer;

  /// Optional. Hero image for the carousel item.
  final GoogleCloudDialogflowV2IntentMessageImage? image;

  /// Action to present to the user.
  final GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
      openUriAction;

  /// Title of the carousel item. Maximum of two lines of text.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem].
  /// [description] Optional. Description of the carousel item. Maximum of four lines of text.
  /// [footer] Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum of one line of text.
  /// [image] Optional. Hero image for the carousel item.
  /// [openUriAction] Action to present to the user.
  /// [title] Title of the carousel item. Maximum of two lines of text.
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem({
    this.description,
    this.footer,
    this.image,
    required this.openUriAction,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final footerValue = footer;
    if (footerValue != null) {
      map['footer'] = footerValue;
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue.toMap();
    }
    map['openUriAction'] = openUriAction.toMap();
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
      description:
          map['description'] == null ? null : map['description'] as String,
      footer: map['footer'] == null ? null : map['footer'] as String,
      image: map['image'] == null
          ? null
          : GoogleCloudDialogflowV2IntentMessageImage.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
      openUriAction:
          GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
              .fromMap((map['openUriAction'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
    );
  }
}
