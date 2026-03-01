// ignore_for_file: unused_element, unnecessary_cast

/// Cell of TableCardRow.
class GoogleCloudDialogflowV2beta1IntentMessageTableCardCell {
  /// Text in this cell.
  final String text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageTableCardCell].
  /// [text] Text in this cell.
  GoogleCloudDialogflowV2beta1IntentMessageTableCardCell({required this.text});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': text};
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageTableCardCell.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageTableCardCell(
      text: map['text'] as String,
    );
  }
}
