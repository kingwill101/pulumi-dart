// ignore_for_file: unused_element, unnecessary_cast

class CxTestCaseLastTestResultConversationTurnUserInputInputText {
  /// The natural language text to be processed. Text length must not exceed 256 characters.
  final String text;

  CxTestCaseLastTestResultConversationTurnUserInputInputText({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['text'] = text;
    return map;
  }

  factory CxTestCaseLastTestResultConversationTurnUserInputInputText.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnUserInputInputText(
      text: map['text'] as String,
    );
  }
}
