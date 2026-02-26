// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_image_response.dart';

/// Response media object for media content card.
class GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObjectResponse {
  /// Url where the media is stored.
  final String contentUrl;

  /// Optional. Description of media card.
  final String description;

  /// Optional. Icon to display above media content.
  final GoogleCloudDialogflowV2beta1IntentMessageImageResponse icon;

  /// Optional. Image to display above media content.
  final GoogleCloudDialogflowV2beta1IntentMessageImageResponse largeImage;

  /// Name of media card.
  final String name;

  GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObjectResponse({
    required this.contentUrl,
    required this.description,
    required this.icon,
    required this.largeImage,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentUrl'] = contentUrl;
    map['description'] = description;
    map['icon'] = icon.toMap();
    map['largeImage'] = largeImage.toMap();
    map['name'] = name;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObjectResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObjectResponse(
      contentUrl: map['contentUrl'] as String,
      description: map['description'] as String,
      icon: GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap(
          (map['icon'] as Map).cast<String, dynamic>()),
      largeImage:
          GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap(
              (map['largeImage'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
