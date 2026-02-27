// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_basic_card_button_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_column_properties_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_image_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_table_card_row_response.dart';

/// Table card for Actions on Google.
class GoogleCloudDialogflowV2IntentMessageTableCardResponse {
  /// Optional. List of buttons for the card.
  final List<GoogleCloudDialogflowV2IntentMessageBasicCardButtonResponse>
      buttons;

  /// Optional. Display properties for the columns in this table.
  final List<GoogleCloudDialogflowV2IntentMessageColumnPropertiesResponse>
      columnProperties;

  /// Optional. Image which should be displayed on the card.
  final GoogleCloudDialogflowV2IntentMessageImageResponse image;

  /// Optional. Rows in this table of data.
  final List<GoogleCloudDialogflowV2IntentMessageTableCardRowResponse> rows;

  /// Optional. Subtitle to the title.
  final String subtitle;

  /// Title of the card.
  final String title;

  GoogleCloudDialogflowV2IntentMessageTableCardResponse({
    required this.buttons,
    required this.columnProperties,
    required this.image,
    required this.rows,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buttons'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2IntentMessageBasicCardButtonResponse,
        Map<String, dynamic>>(buttons, (value) => value.toMap());
    map['columnProperties'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2IntentMessageColumnPropertiesResponse,
        Map<String, dynamic>>(columnProperties, (value) => value.toMap());
    map['image'] = image.toMap();
    map['rows'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2IntentMessageTableCardRowResponse,
        Map<String, dynamic>>(rows, (value) => value.toMap());
    map['subtitle'] = subtitle;
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageTableCardResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageTableCardResponse(
      buttons: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2IntentMessageBasicCardButtonResponse>(
          map['buttons'],
          (value) => GoogleCloudDialogflowV2IntentMessageBasicCardButtonResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      columnProperties: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2IntentMessageColumnPropertiesResponse>(
          map['columnProperties'],
          (value) =>
              GoogleCloudDialogflowV2IntentMessageColumnPropertiesResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      image: GoogleCloudDialogflowV2IntentMessageImageResponse.fromMap(
          (map['image'] as Map).cast<String, dynamic>()),
      rows: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2IntentMessageTableCardRowResponse>(
          map['rows'],
          (value) =>
              GoogleCloudDialogflowV2IntentMessageTableCardRowResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      subtitle: map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}
