// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton {
  /// Text that appears on the button. Use this to tell the user what value is returned when they choose this button.
  final String text;

  /// Value returned to Amazon Lex when the user chooses this button. This must be one of the slot values configured for the slot.
  final String value;

  /// Creates a new [V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton].
  /// [text] Text that appears on the button. Use this to tell the user what value is returned when they choose this button.
  /// [value] Value returned to Amazon Lex when the user chooses this button. This must be one of the slot values configured for the slot.
  V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton({
    required this.text,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingConditionalConditionalBranchResponseMessageGroupMessageImageResponseCardButton(
      text: map['text'] as String,
      value: map['value'] as String,
    );
  }
}
