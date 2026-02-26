// ignore_for_file: unused_element, unnecessary_cast

/// Cell of TableCardRow.
class GoogleCloudDialogflowV2IntentMessageTableCardCell {
  /// Text in this cell.
  final String text;

  GoogleCloudDialogflowV2IntentMessageTableCardCell({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageTableCardCell.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageTableCardCell(
      text: map['text'] as String,
    );
  }
}
