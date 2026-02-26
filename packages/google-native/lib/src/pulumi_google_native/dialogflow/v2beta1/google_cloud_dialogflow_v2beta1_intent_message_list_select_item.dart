// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_image.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_select_item_info.dart';

/// An item in the list.
class GoogleCloudDialogflowV2beta1IntentMessageListSelectItem {
  /// Optional. The main text describing the item.
  final String? description;

  /// Optional. The image to display.
  final GoogleCloudDialogflowV2beta1IntentMessageImage? image;

  /// Additional information about this option.
  final GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo info;

  /// The title of the list item.
  final String title;

  GoogleCloudDialogflowV2beta1IntentMessageListSelectItem({
    this.description,
    this.image,
    required this.info,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue.toMap();
    }
    map['info'] = info.toMap();
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageListSelectItem.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageListSelectItem(
      description:
          map['description'] == null ? null : map['description'] as String,
      image: map['image'] == null
          ? null
          : GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
      info: GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromMap(
          (map['info'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
    );
  }
}
