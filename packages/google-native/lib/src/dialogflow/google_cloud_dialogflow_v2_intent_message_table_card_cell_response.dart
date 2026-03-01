// ignore_for_file: unused_element, unnecessary_cast

/// Cell of TableCardRow.
class GoogleCloudDialogflowV2IntentMessageTableCardCellResponse {
  /// Text in this cell.
  final String text;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageTableCardCellResponse].
  /// [text] Text in this cell.
  GoogleCloudDialogflowV2IntentMessageTableCardCellResponse({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': text};
  }

  factory GoogleCloudDialogflowV2IntentMessageTableCardCellResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageTableCardCellResponse(
      text: map['text'] as String,
    );
  }
}
