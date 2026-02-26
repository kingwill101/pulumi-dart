// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_browse_carousel_card_browse_carousel_card_item_open_url_action.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image.dart';

/// Browsing carousel tile
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem {
  /// Optional. Description of the carousel item. Maximum of four lines of text.
  final String? description;

  /// Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum of one line of text.
  final String? footer;

  /// Optional. Hero image for the carousel item.
  final GoogleCloudDialogflowV2beta1IntentMessageImage? image;

  /// Action to present to the user.
  final GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
      openUriAction;

  /// Title of the carousel item. Maximum of two lines of text.
  final String title;

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem({
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

  factory GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
      description:
          map['description'] == null ? null : map['description'] as String,
      footer: map['footer'] == null ? null : map['footer'] as String,
      image: map['image'] == null
          ? null
          : GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
      openUriAction:
          GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
              .fromMap((map['openUriAction'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
    );
  }
}
