// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_browse_carousel_card_browse_carousel_card_item_open_url_action_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image_response.dart';

/// Browsing carousel tile
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse {
  /// Optional. Description of the carousel item. Maximum of four lines of text.
  final String description;

  /// Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum of one line of text.
  final String footer;

  /// Optional. Hero image for the carousel item.
  final GoogleCloudDialogflowV2beta1IntentMessageImageResponse image;

  /// Action to present to the user.
  final GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse
      openUriAction;

  /// Title of the carousel item. Maximum of two lines of text.
  final String title;

  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse({
    required this.description,
    required this.footer,
    required this.image,
    required this.openUriAction,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['footer'] = footer;
    map['image'] = image.toMap();
    map['openUriAction'] = openUriAction.toMap();
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse(
      description: map['description'] as String,
      footer: map['footer'] as String,
      image: GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap(
          (map['image'] as Map).cast<String, dynamic>()),
      openUriAction:
          GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse
              .fromMap((map['openUriAction'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
    );
  }
}
