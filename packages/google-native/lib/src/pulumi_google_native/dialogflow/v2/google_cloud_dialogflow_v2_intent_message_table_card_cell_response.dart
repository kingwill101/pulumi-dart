// ignore_for_file: unused_element, unnecessary_cast

/// Cell of TableCardRow.
class GoogleCloudDialogflowV2IntentMessageTableCardCellResponse {
  /// Text in this cell.
  final String text;

  GoogleCloudDialogflowV2IntentMessageTableCardCellResponse({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageTableCardCellResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageTableCardCellResponse(
      text: map['text'] as String,
    );
  }
}
