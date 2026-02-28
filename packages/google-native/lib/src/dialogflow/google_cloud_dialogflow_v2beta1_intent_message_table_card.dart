// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card_button.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_column_properties.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_table_card_row.dart';

/// Table card for Actions on Google.
class GoogleCloudDialogflowV2beta1IntentMessageTableCard {
  /// Optional. List of buttons for the card.
  final List<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>? buttons;

  /// Optional. Display properties for the columns in this table.
  final List<GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>?
      columnProperties;

  /// Optional. Image which should be displayed on the card.
  final GoogleCloudDialogflowV2beta1IntentMessageImage? image;

  /// Optional. Rows in this table of data.
  final List<GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>? rows;

  /// Optional. Subtitle to the title.
  final String? subtitle;

  /// Title of the card.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageTableCard].
  /// [buttons] Optional. List of buttons for the card.
  /// [columnProperties] Optional. Display properties for the columns in this table.
  /// [image] Optional. Image which should be displayed on the card.
  /// [rows] Optional. Rows in this table of data.
  /// [subtitle] Optional. Subtitle to the title.
  /// [title] Title of the card.
  GoogleCloudDialogflowV2beta1IntentMessageTableCard({
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
          GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton,
          Map<String, dynamic>>(buttonsValue, (value) => value.toMap());
    }
    final columnPropertiesValue = columnProperties;
    if (columnPropertiesValue != null) {
      map['columnProperties'] = pulumi.Input.encodeList<
              GoogleCloudDialogflowV2beta1IntentMessageColumnProperties,
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
          GoogleCloudDialogflowV2beta1IntentMessageTableCardRow,
          Map<String, dynamic>>(rowsValue, (value) => value.toMap());
    }
    final subtitleValue = subtitle;
    if (subtitleValue != null) {
      map['subtitle'] = subtitleValue;
    }
    map['title'] = title;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageTableCard.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageTableCard(
      buttons: map['buttons'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>(
              map['buttons'],
              (value) =>
                  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
                      .fromMap((value as Map).cast<String, dynamic>())),
      columnProperties: map['columnProperties'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>(
              map['columnProperties'],
              (value) =>
                  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties
                      .fromMap((value as Map).cast<String, dynamic>())),
      image: map['image'] == null
          ? null
          : GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap(
              (map['image'] as Map).cast<String, dynamic>()),
      rows: map['rows'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>(
              map['rows'],
              (value) =>
                  GoogleCloudDialogflowV2beta1IntentMessageTableCardRow.fromMap(
                      (value as Map).cast<String, dynamic>())),
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] as String,
    );
  }
}
