// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2_intent_message_list_select_item.dart';

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2IntentMessageListSelect {
  /// List items.
  final List<GoogleCloudDialogflowV2IntentMessageListSelectItem> items;

  /// Optional. Subtitle of the list.
  final String? subtitle;

  /// Optional. The overall title of the list.
  final String? title;

  GoogleCloudDialogflowV2IntentMessageListSelect({
    required this.items,
    this.subtitle,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = Input.encodeList<
        GoogleCloudDialogflowV2IntentMessageListSelectItem,
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

  factory GoogleCloudDialogflowV2IntentMessageListSelect.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageListSelect(
      items:
          Input.decodeList<GoogleCloudDialogflowV2IntentMessageListSelectItem>(
              map['items'],
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageListSelectItem.fromMap(
                      (value as Map).cast<String, dynamic>())),
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
