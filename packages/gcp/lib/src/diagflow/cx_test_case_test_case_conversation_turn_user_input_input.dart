// ignore_for_file: unused_element, unnecessary_cast

import 'cx_test_case_test_case_conversation_turn_user_input_input_dtmf.dart';
import 'cx_test_case_test_case_conversation_turn_user_input_input_event.dart';
import 'cx_test_case_test_case_conversation_turn_user_input_input_text.dart';

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

  /// Creates a new [CxTestCaseTestCaseConversationTurnUserInputInput].
  /// [dtmf] The DTMF event to be handled.
  /// [event] The event to be triggered.
  /// [languageCode] The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes.
  /// [text] The natural language text to be processed.
  CxTestCaseTestCaseConversationTurnUserInputInput({
    this.dtmf,
    this.event,
    this.languageCode,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dtmf': ?dtmf == null ? null : dtmf!.toMap(),
      'event': ?event == null ? null : event!.toMap(),
      'languageCode': ?languageCode,
      'text': ?text == null ? null : text!.toMap(),
    };
  }

  factory CxTestCaseTestCaseConversationTurnUserInputInput.fromMap(Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnUserInputInput(
      dtmf: map['dtmf'] == null ? null : CxTestCaseTestCaseConversationTurnUserInputInputDtmf.fromMap((map['dtmf'] as Map).cast<String, dynamic>()),
      event: map['event'] == null ? null : CxTestCaseTestCaseConversationTurnUserInputInputEvent.fromMap((map['event'] as Map).cast<String, dynamic>()),
      languageCode: map['languageCode'] == null ? null : map['languageCode'] as String,
      text: map['text'] == null ? null : CxTestCaseTestCaseConversationTurnUserInputInputText.fromMap((map['text'] as Map).cast<String, dynamic>()),
    );
  }
}

