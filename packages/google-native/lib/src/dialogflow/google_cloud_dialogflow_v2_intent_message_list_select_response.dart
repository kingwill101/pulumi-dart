// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_list_select_item_response.dart';

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2IntentMessageListSelectResponse {
  /// List items.
  final List<GoogleCloudDialogflowV2IntentMessageListSelectItemResponse> items;

  /// Optional. Subtitle of the list.
  final String subtitle;

  /// Optional. The overall title of the list.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageListSelectResponse].
  /// [items] List items.
  /// [subtitle] Optional. Subtitle of the list.
  /// [title] Optional. The overall title of the list.
  GoogleCloudDialogflowV2IntentMessageListSelectResponse({
    required this.items,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items':
          pulumi.Input.encodeList<
            GoogleCloudDialogflowV2IntentMessageListSelectItemResponse,
            Map<String, dynamic>
          >(items, (value) => value.toMap()),
      'subtitle': subtitle,
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageListSelectResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageListSelectResponse(
      items:
          pulumi.Input.decodeList<
            GoogleCloudDialogflowV2IntentMessageListSelectItemResponse
          >(
            map['items'],
            (value) =>
                GoogleCloudDialogflowV2IntentMessageListSelectItemResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      subtitle: map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}
