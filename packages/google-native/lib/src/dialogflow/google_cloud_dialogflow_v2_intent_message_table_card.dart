// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_basic_card_button.dart';
import 'google_cloud_dialogflow_v2_intent_message_column_properties.dart';
import 'google_cloud_dialogflow_v2_intent_message_image.dart';
import 'google_cloud_dialogflow_v2_intent_message_table_card_row.dart';

/// Table card for Actions on Google.
class GoogleCloudDialogflowV2IntentMessageTableCard {
  /// Optional. List of buttons for the card.
  final List<GoogleCloudDialogflowV2IntentMessageBasicCardButton>? buttons;

  /// Optional. Display properties for the columns in this table.
  final List<GoogleCloudDialogflowV2IntentMessageColumnProperties>?
      columnProperties;

  /// Optional. Image which should be displayed on the card.
  final GoogleCloudDialogflowV2IntentMessageImage? image;

  /// Optional. Rows in this table of data.
  final List<GoogleCloudDialogflowV2IntentMessageTableCardRow>? rows;

  /// Optional. Subtitle to the title.
  final String? subtitle;

  /// Title of the card.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageTableCard].
  /// [buttons] Optional. List of buttons for the card.
  /// [columnProperties] Optional. Display properties for the columns in this table.
  /// [image] Optional. Image which should be displayed on the card.
  /// [rows] Optional. Rows in this table of data.
  /// [subtitle] Optional. Subtitle to the title.
  /// [title] Title of the card.
  GoogleCloudDialogflowV2IntentMessageTableCard({
    this.buttons,
    this.columnProperties,
    this.image,
    this.rows,
    this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buttonsValue = buttons;
    if (buttonsValue != null) {
      map['buttons'] = pulumi.Input.encodeList<
          GoogleCloudDialogflowV2IntentMessageBasicCardButton,
          Map<String, dynamic>>(buttonsValue, (value) => value.toMap());
    }
    final columnPropertiesValue = columnProperties;
    if (columnPropertiesValue != null) {
      map['columnProperties'] = pulumi.Input.encodeList<
              GoogleCloudDialogflowV2IntentMessageColumnProperties,
              Map<String, dynamic>>(
          columnPropertiesValue, (value) => value.toMap());
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue.toMap();
    }
    final rowsValue = rows;
    if (rowsValue != null) {
      map['rows'] = pulumi.Input.encodeList<
          GoogleCloudDialogflowV2IntentMessageTableCardRow,
          Map<String, dynamic>>(rowsValue, (value) => value.toMap());
    }
    final subtitleValue = subtitle;
    if (subtitleValue != null) {
      map['subtitle'] = subtitleValue;
    }
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageTableCard.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageTableCard(
      buttons: map['buttons'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowV2IntentMessageBasicCardButton>(
              map['buttons'],
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromMap(
                      (value as Map).cast<String, dynamic>())),
      columnProperties: map['columnProperties'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowV2IntentMessageColumnProperties>(
              map['columnProperties'],
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageColumnProperties.fromMap(
                      (value as Map).cast<String, dynamic>())),
      image: map['image'] == null
          ? null
          : GoogleCloudDialogflowV2IntentMessageImage.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
      rows: map['rows'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowV2IntentMessageTableCardRow>(
              map['rows'],
              (value) =>
                  GoogleCloudDialogflowV2IntentMessageTableCardRow.fromMap(
                      (value as Map).cast<String, dynamic>())),
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}
