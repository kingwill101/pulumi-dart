// ignore_for_file: unused_element, unnecessary_cast

import 'cx_test_case_last_test_result_conversation_turn_user_input.dart';
import 'cx_test_case_last_test_result_conversation_turn_virtual_agent_output.dart';

class CxTestCaseLastTestResultConversationTurn {
  /// The user input.
  /// Structure is documented below.
  final CxTestCaseLastTestResultConversationTurnUserInput? userInput;
  /// The virtual agent output.
  /// Structure is documented below.
  final CxTestCaseLastTestResultConversationTurnVirtualAgentOutput? virtualAgentOutput;

  /// Creates a new [CxTestCaseLastTestResultConversationTurn].
  /// [userInput] The user input.
  /// [virtualAgentOutput] The virtual agent output.
  CxTestCaseLastTestResultConversationTurn({
    this.userInput,
    this.virtualAgentOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInput': ?userInput == null ? null : userInput!.toMap(),
      'virtualAgentOutput': ?virtualAgentOutput == null ? null : virtualAgentOutput!.toMap(),
    };
  }

  factory CxTestCaseLastTestResultConversationTurn.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurn(
      userInput: map['userInput'] == null ? null : CxTestCaseLastTestResultConversationTurnUserInput.fromMap((map['userInput'] as Map).cast<String, dynamic>()),
      virtualAgentOutput: map['virtualAgentOutput'] == null ? null : CxTestCaseLastTestResultConversationTurnVirtualAgentOutput.fromMap((map['virtualAgentOutput'] as Map).cast<String, dynamic>()),
    );
  }
}

