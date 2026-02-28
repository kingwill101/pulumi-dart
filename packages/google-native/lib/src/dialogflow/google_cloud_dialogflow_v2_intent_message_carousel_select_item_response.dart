// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_intent_message_image_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_select_item_info_response.dart';

/// An item in the carousel.
class GoogleCloudDialogflowV2IntentMessageCarouselSelectItemResponse {
  /// Optional. The body text of the card.
  final String description;

  /// Optional. The image to display.
  final GoogleCloudDialogflowV2IntentMessageImageResponse image;

  /// Additional info about the option item.
  final GoogleCloudDialogflowV2IntentMessageSelectItemInfoResponse info;

  /// Title of the carousel item.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageCarouselSelectItemResponse].
  /// [description] Optional. The body text of the card.
  /// [image] Optional. The image to display.
  /// [info] Additional info about the option item.
  /// [title] Title of the carousel item.
  GoogleCloudDialogflowV2IntentMessageCarouselSelectItemResponse({
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

  factory GoogleCloudDialogflowV2IntentMessageCarouselSelectItemResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageCarouselSelectItemResponse(
      description: map['description'] as String,
      image: GoogleCloudDialogflowV2IntentMessageImageResponse.fromMap(
          (map['image'] as Map).cast<String, dynamic>()),
      info: GoogleCloudDialogflowV2IntentMessageSelectItemInfoResponse.fromMap(
          (map['info'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
    );
  }
}
