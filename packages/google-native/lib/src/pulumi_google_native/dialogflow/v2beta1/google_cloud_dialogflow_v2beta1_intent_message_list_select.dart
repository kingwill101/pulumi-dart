// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_list_select_item.dart';

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2beta1IntentMessageListSelect {
  /// List items.
  final List<GoogleCloudDialogflowV2beta1IntentMessageListSelectItem> items;

  /// Optional. Subtitle of the list.
  final String? subtitle;

  /// Optional. The overall title of the list.
  final String? title;

  GoogleCloudDialogflowV2beta1IntentMessageListSelect({
    required this.items,
    this.subtitle,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageListSelectItem,
        Map<String, dynamic>>(items, (value) => value.toMap());
    final subtitleValue = subtitle;
    if (subtitleValue != null) {
      map['subtitle'] = subtitleValue;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageListSelect.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageListSelect(
      items: Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>(
          map['items'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageListSelectItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
