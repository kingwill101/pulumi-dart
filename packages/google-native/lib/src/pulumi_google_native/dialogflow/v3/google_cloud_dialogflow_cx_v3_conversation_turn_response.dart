// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_conversation_turn_user_input_response.dart';
import 'google_cloud_dialogflow_cx_v3_conversation_turn_virtual_agent_output_response.dart';

/// One interaction between a human and virtual agent. The human provides some input and the virtual agent provides a response.
class GoogleCloudDialogflowCxV3ConversationTurnResponse {
  /// The user input.
  final GoogleCloudDialogflowCxV3ConversationTurnUserInputResponse userInput;

  /// The virtual agent output.
  final GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse
      virtualAgentOutput;

  GoogleCloudDialogflowCxV3ConversationTurnResponse({
    required this.userInput,
    required this.virtualAgentOutput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['userInput'] = userInput.toMap();
    map['virtualAgentOutput'] = virtualAgentOutput.toMap();
    return map;
  }

  factory GoogleCloudDialogflowCxV3ConversationTurnResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ConversationTurnResponse(
      userInput:
          GoogleCloudDialogflowCxV3ConversationTurnUserInputResponse.fromMap(
              (map['userInput'] as Map).cast<String, dynamic>()),
      virtualAgentOutput:
          GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse
              .fromMap(
                  (map['virtualAgentOutput'] as Map).cast<String, dynamic>()),
    );
  }
}
