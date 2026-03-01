// ignore_for_file: unused_element, unnecessary_cast

/// Cell of TableCardRow.
class GoogleCloudDialogflowV2IntentMessageTableCardCell {
  /// Text in this cell.
  final String text;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageTableCardCell].
  /// [text] Text in this cell.
  GoogleCloudDialogflowV2IntentMessageTableCardCell({required this.text});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': text};
  }

  factory GoogleCloudDialogflowV2IntentMessageTableCardCell.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageTableCardCell(
      text: map['text'] as String,
    );
  }
}
