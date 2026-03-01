// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_intent_message_image.dart';
import 'google_cloud_dialogflow_v2_intent_message_select_item_info.dart';

/// An item in the carousel.
class GoogleCloudDialogflowV2IntentMessageCarouselSelectItem {
  /// Optional. The body text of the card.
  final String? description;

  /// Optional. The image to display.
  final GoogleCloudDialogflowV2IntentMessageImage? image;

  /// Additional info about the option item.
  final GoogleCloudDialogflowV2IntentMessageSelectItemInfo info;

  /// Title of the carousel item.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageCarouselSelectItem].
  /// [description] Optional. The body text of the card.
  /// [image] Optional. The image to display.
  /// [info] Additional info about the option item.
  /// [title] Title of the carousel item.
  GoogleCloudDialogflowV2IntentMessageCarouselSelectItem({
    this.description,
    this.image,
    required this.info,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'image': ?image == null ? null : image!.toMap(),
      'info': info.toMap(),
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageCarouselSelectItem.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageCarouselSelectItem(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      image: map['image'] == null
          ? null
          : GoogleCloudDialogflowV2IntentMessageImage.fromMap(
              (map['image'] as Map).cast<String, dynamic>(),
            ),
      info: GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromMap(
        (map['info'] as Map).cast<String, dynamic>(),
      ),
      title: map['title'] as String,
    );
  }
}
