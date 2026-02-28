// ignore_for_file: unused_element, unnecessary_cast

/// Column properties for TableCard.
class GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse {
  /// Column heading.
  final String header;

  /// Optional. Defines text alignment for all cells in this column.
  final String horizontalAlignment;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse].
  /// [header] Column heading.
  /// [horizontalAlignment] Optional. Defines text alignment for all cells in this column.
  GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse({
    required this.header,
    required this.horizontalAlignment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['header'] = header;
    map['horizontalAlignment'] = horizontalAlignment;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageColumnPropertiesResponse(
      header: map['header'] as String,
      horizontalAlignment: map['horizontalAlignment'] as String,
    );
  }
}
