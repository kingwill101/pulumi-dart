// ignore_for_file: unused_element, unnecessary_cast

import '../cx_test_case_test_case_conversation_turn_user_input_input_dtmf/cx_test_case_test_case_conversation_turn_user_input_input_dtmf.dart';
import '../cx_test_case_test_case_conversation_turn_user_input_input_event/cx_test_case_test_case_conversation_turn_user_input_input_event.dart';
import '../cx_test_case_test_case_conversation_turn_user_input_input_text/cx_test_case_test_case_conversation_turn_user_input_input_text.dart';

class CxTestCaseTestCaseConversationTurnUserInputInput {
  /// The DTMF event to be handled.
  /// Structure is documented below.
  final CxTestCaseTestCaseConversationTurnUserInputInputDtmf? dtmf;

  /// The event to be triggered.
  /// Structure is documented below.
  final CxTestCaseTestCaseConversationTurnUserInputInputEvent? event;

  /// The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes.
  /// Note that queries in the same session do not necessarily need to specify the same language.
  final String? languageCode;

  /// The natural language text to be processed.
  /// Structure is documented below.
  final CxTestCaseTestCaseConversationTurnUserInputInputText? text;

  CxTestCaseTestCaseConversationTurnUserInputInput({
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

  factory CxTestCaseTestCaseConversationTurnUserInputInput.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnUserInputInput(
      dtmf: map['dtmf'] == null
          ? null
          : CxTestCaseTestCaseConversationTurnUserInputInputDtmf.fromMap(
              (map['dtmf'] as Map).cast<String, dynamic>()),
      event: map['event'] == null
          ? null
          : CxTestCaseTestCaseConversationTurnUserInputInputEvent.fromMap(
              (map['event'] as Map).cast<String, dynamic>()),
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      text: map['text'] == null
          ? null
          : CxTestCaseTestCaseConversationTurnUserInputInputText.fromMap(
              (map['text'] as Map).cast<String, dynamic>()),
    );
  }
}
