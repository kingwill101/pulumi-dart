// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2_intent_message_list_select_item_response.dart';

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2IntentMessageListSelectResponse {
  /// List items.
  final List<GoogleCloudDialogflowV2IntentMessageListSelectItemResponse> items;

  /// Optional. Subtitle of the list.
  final String subtitle;

  /// Optional. The overall title of the list.
  final String title;

  GoogleCloudDialogflowV2IntentMessageListSelectResponse({
    required this.items,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = Input.encodeList<
        GoogleCloudDialogflowV2IntentMessageListSelectItemResponse,
        Map<String, dynamic>>(items, (value) => value.toMap());
    map['subtitle'] = subtitle;
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageListSelectResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageListSelectResponse(
      items: Input.decodeList<
              GoogleCloudDialogflowV2IntentMessageListSelectItemResponse>(
          map['items'],
          (value) => GoogleCloudDialogflowV2IntentMessageListSelectItemResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      subtitle: map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}
