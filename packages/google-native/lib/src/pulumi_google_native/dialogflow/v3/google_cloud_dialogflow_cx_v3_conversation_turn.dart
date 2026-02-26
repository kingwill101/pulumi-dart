// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_conversation_turn_user_input.dart';
import 'google_cloud_dialogflow_cx_v3_conversation_turn_virtual_agent_output.dart';

/// One interaction between a human and virtual agent. The human provides some input and the virtual agent provides a response.
class GoogleCloudDialogflowCxV3ConversationTurn {
  /// The user input.
  final GoogleCloudDialogflowCxV3ConversationTurnUserInput? userInput;

  /// The virtual agent output.
  final GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput?
      virtualAgentOutput;

  GoogleCloudDialogflowCxV3ConversationTurn({
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

  factory GoogleCloudDialogflowCxV3ConversationTurn.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ConversationTurn(
      userInput: map['userInput'] == null
          ? null
          : GoogleCloudDialogflowCxV3ConversationTurnUserInput.fromMap(
              (map['userInput'] as Map).cast<String, dynamic>()),
      virtualAgentOutput: map['virtualAgentOutput'] == null
          ? null
          : GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput.fromMap(
              (map['virtualAgentOutput'] as Map).cast<String, dynamic>()),
    );
  }
}
