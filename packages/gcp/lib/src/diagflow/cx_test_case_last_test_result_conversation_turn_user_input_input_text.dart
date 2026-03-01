// ignore_for_file: unused_element, unnecessary_cast

class CxTestCaseLastTestResultConversationTurnUserInputInputText {
  /// The natural language text to be processed. Text length must not exceed 256 characters.
  final String text;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnUserInputInputText].
  /// [text] The natural language text to be processed. Text length must not exceed 256 characters.
  CxTestCaseLastTestResultConversationTurnUserInputInputText({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'text': text};
  }

  factory CxTestCaseLastTestResultConversationTurnUserInputInputText.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxTestCaseLastTestResultConversationTurnUserInputInputText(
      text: map['text'] as String,
    );
  }
}
