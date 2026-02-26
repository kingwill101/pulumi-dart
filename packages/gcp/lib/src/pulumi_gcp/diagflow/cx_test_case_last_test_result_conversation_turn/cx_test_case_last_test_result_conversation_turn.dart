// ignore_for_file: unused_element, unnecessary_cast

import '../cx_test_case_last_test_result_conversation_turn_user_input/cx_test_case_last_test_result_conversation_turn_user_input.dart';
import '../cx_test_case_last_test_result_conversation_turn_virtual_agent_output/cx_test_case_last_test_result_conversation_turn_virtual_agent_output.dart';

class CxTestCaseLastTestResultConversationTurn {
  /// The user input.
  /// Structure is documented below.
  final CxTestCaseLastTestResultConversationTurnUserInput? userInput;

  /// The virtual agent output.
  /// Structure is documented below.
  final CxTestCaseLastTestResultConversationTurnVirtualAgentOutput?
      virtualAgentOutput;

  CxTestCaseLastTestResultConversationTurn({
    this.userInput,
    this.virtualAgentOutput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final userInputValue = userInput;
    if (userInputValue != null) {
      map['userInput'] = userInputValue.toMap();
    }
    final virtualAgentOutputValue = virtualAgentOutput;
    if (virtualAgentOutputValue != null) {
      map['virtualAgentOutput'] = virtualAgentOutputValue.toMap();
    }
    return map;
  }

  factory CxTestCaseLastTestResultConversationTurn.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurn(
      userInput: map['userInput'] == null
          ? null
          : CxTestCaseLastTestResultConversationTurnUserInput.fromMap(
              (map['userInput'] as Map).cast<String, dynamic>()),
      virtualAgentOutput: map['virtualAgentOutput'] == null
          ? null
          : CxTestCaseLastTestResultConversationTurnVirtualAgentOutput.fromMap(
              (map['virtualAgentOutput'] as Map).cast<String, dynamic>()),
    );
  }
}
