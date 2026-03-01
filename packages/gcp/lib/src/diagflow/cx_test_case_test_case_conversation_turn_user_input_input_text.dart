// ignore_for_file: unused_element, unnecessary_cast

class CxTestCaseTestCaseConversationTurnUserInputInputText {
  /// The natural language text to be processed. Text length must not exceed 256 characters.
  final String text;

  /// Creates a new [CxTestCaseTestCaseConversationTurnUserInputInputText].
  /// [text] The natural language text to be processed. Text length must not exceed 256 characters.
  CxTestCaseTestCaseConversationTurnUserInputInputText({required this.text});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': text};
  }

  factory CxTestCaseTestCaseConversationTurnUserInputInputText.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxTestCaseTestCaseConversationTurnUserInputInputText(
      text: map['text'] as String,
    );
  }
}
