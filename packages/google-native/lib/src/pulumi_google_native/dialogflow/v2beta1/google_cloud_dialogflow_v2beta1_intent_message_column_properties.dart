// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_intent_message_column_properties_horizontal_alignment.dart';

/// Column properties for TableCard.
class GoogleCloudDialogflowV2beta1IntentMessageColumnProperties {
  /// Column heading.
  final String header;

  /// Optional. Defines text alignment for all cells in this column.
  final GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment?
      horizontalAlignment;

  GoogleCloudDialogflowV2beta1IntentMessageColumnProperties({
    required this.header,
    this.horizontalAlignment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['header'] = header;
    final horizontalAlignmentValue = horizontalAlignment;
    if (horizontalAlignmentValue != null) {
      map['horizontalAlignment'] = horizontalAlignmentValue.value;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageColumnProperties.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageColumnProperties(
      header: map['header'] as String,
      horizontalAlignment: map['horizontalAlignment'] == null
          ? null
          : GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesHorizontalAlignment
              .fromValue(map['horizontalAlignment'] as String),
    );
  }
}
