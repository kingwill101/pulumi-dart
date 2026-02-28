// ignore_for_file: unused_element, unnecessary_cast

/// Cell of TableCardRow.
class GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse {
  /// Text in this cell.
  final String text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse].
  /// [text] Text in this cell.
  GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageTableCardCellResponse(
      text: map['text'] as String,
    );
  }
}
