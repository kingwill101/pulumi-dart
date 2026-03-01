// ignore_for_file: unused_element, unnecessary_cast

import 'cx_test_case_test_case_conversation_turn_user_input.dart';
import 'cx_test_case_test_case_conversation_turn_virtual_agent_output.dart';

class CxTestCaseTestCaseConversationTurn {
  /// The user input.
  /// Structure is documented below.
  final CxTestCaseTestCaseConversationTurnUserInput? userInput;

  /// The virtual agent output.
  /// Structure is documented below.
  final CxTestCaseTestCaseConversationTurnVirtualAgentOutput?
  virtualAgentOutput;

  /// Creates a new [CxTestCaseTestCaseConversationTurn].
  /// [userInput] The user input.
  /// [virtualAgentOutput] The virtual agent output.
  CxTestCaseTestCaseConversationTurn({this.userInput, this.virtualAgentOutput});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInput': ?userInput == null ? null : userInput!.toMap(),
      'virtualAgentOutput': ?virtualAgentOutput == null
          ? null
          : virtualAgentOutput!.toMap(),
    };
  }

  factory CxTestCaseTestCaseConversationTurn.fromMap(Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurn(
      userInput: map['userInput'] == null
          ? null
          : CxTestCaseTestCaseConversationTurnUserInput.fromMap(
              (map['userInput'] as Map).cast<String, dynamic>(),
            ),
      virtualAgentOutput: map['virtualAgentOutput'] == null
          ? null
          : CxTestCaseTestCaseConversationTurnVirtualAgentOutput.fromMap(
              (map['virtualAgentOutput'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
