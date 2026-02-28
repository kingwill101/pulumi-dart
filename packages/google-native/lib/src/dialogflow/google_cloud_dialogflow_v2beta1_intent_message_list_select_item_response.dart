// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_image_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_select_item_info_response.dart';

/// An item in the list.
class GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse {
  /// Optional. The main text describing the item.
  final String description;
  /// Optional. The image to display.
  final GoogleCloudDialogflowV2beta1IntentMessageImageResponse image;
  /// Additional information about this option.
  final GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfoResponse info;
  /// The title of the list item.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse].
  /// [description] Optional. The main text describing the item.
  /// [image] Optional. The image to display.
  /// [info] Additional information about this option.
  /// [title] The title of the list item.
  GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse({
    required this.description,
    required this.image,
    required this.info,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'image': image.toMap(),
      'info': info.toMap(),
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse(
      description: map['description'] as String,
      image: GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap((map['image'] as Map).cast<String, dynamic>()),
      info: GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfoResponse.fromMap((map['info'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
    );
  }
}

