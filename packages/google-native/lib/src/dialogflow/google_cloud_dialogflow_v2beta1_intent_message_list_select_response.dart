// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_list_select_item_response.dart';

/// The card for presenting a list of options to select from.
class GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse {
  /// List items.
  final List<GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse>
      items;

  /// Optional. Subtitle of the list.
  final String subtitle;

  /// Optional. The overall title of the list.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse].
  /// [items] List items.
  /// [subtitle] Optional. Subtitle of the list.
  /// [title] Optional. The overall title of the list.
  GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse({
    required this.items,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse,
        Map<String, dynamic>>(items, (value) => value.toMap());
    map['subtitle'] = subtitle;
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse(
      items: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse>(
          map['items'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageListSelectItemResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      subtitle: map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}
