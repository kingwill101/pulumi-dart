// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_image_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_select_item_info_response.dart';

/// An item in the carousel.
class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse {
  /// Optional. The body text of the card.
  final String description;

  /// Optional. The image to display.
  final GoogleCloudDialogflowV2beta1IntentMessageImageResponse image;

  /// Additional info about the option item.
  final GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfoResponse info;

  /// Title of the carousel item.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse].
  /// [description] Optional. The body text of the card.
  /// [image] Optional. The image to display.
  /// [info] Additional info about the option item.
  /// [title] Title of the carousel item.
  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse({
    required this.description,
    required this.image,
    required this.info,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['image'] = image.toMap();
    map['info'] = info.toMap();
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse(
      description: map['description'] as String,
      image: GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap(
          (map['image'] as Map).cast<String, dynamic>()),
      info: GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfoResponse
          .fromMap((map['info'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
    );
  }
}
