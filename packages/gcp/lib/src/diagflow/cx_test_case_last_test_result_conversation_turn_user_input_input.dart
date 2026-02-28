// ignore_for_file: unused_element, unnecessary_cast

import 'cx_test_case_last_test_result_conversation_turn_user_input_input_dtmf.dart';
import 'cx_test_case_last_test_result_conversation_turn_user_input_input_event.dart';
import 'cx_test_case_last_test_result_conversation_turn_user_input_input_text.dart';

class CxTestCaseLastTestResultConversationTurnUserInputInput {
  /// The DTMF event to be handled.
  /// Structure is documented below.
  final CxTestCaseLastTestResultConversationTurnUserInputInputDtmf? dtmf;

  /// The event to be triggered.
  /// Structure is documented below.
  final CxTestCaseLastTestResultConversationTurnUserInputInputEvent? event;

  /// The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes.
  /// Note that queries in the same session do not necessarily need to specify the same language.
  final String? languageCode;

  /// The natural language text to be processed.
  /// Structure is documented below.
  final CxTestCaseLastTestResultConversationTurnUserInputInputText? text;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnUserInputInput].
  /// [dtmf] The DTMF event to be handled.
  /// [event] The event to be triggered.
  /// [languageCode] The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes.
  /// [text] The natural language text to be processed.
  CxTestCaseLastTestResultConversationTurnUserInputInput({
    this.dtmf,
    this.event,
    this.languageCode,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dtmfValue = dtmf;
    if (dtmfValue != null) {
      map['dtmf'] = dtmfValue.toMap();
    }
    final eventValue = event;
    if (eventValue != null) {
      map['event'] = eventValue.toMap();
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue.toMap();
    }
    return map;
  }

  factory CxTestCaseLastTestResultConversationTurnUserInputInput.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnUserInputInput(
      dtmf: map['dtmf'] == null
          ? null
          : CxTestCaseLastTestResultConversationTurnUserInputInputDtmf.fromMap(
              (map['dtmf'] as Map).cast<String, dynamic>()),
      event: map['event'] == null
          ? null
          : CxTestCaseLastTestResultConversationTurnUserInputInputEvent.fromMap(
              (map['event'] as Map).cast<String, dynamic>()),
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      text: map['text'] == null
          ? null
          : CxTestCaseLastTestResultConversationTurnUserInputInputText.fromMap(
              (map['text'] as Map).cast<String, dynamic>()),
    );
  }
}
