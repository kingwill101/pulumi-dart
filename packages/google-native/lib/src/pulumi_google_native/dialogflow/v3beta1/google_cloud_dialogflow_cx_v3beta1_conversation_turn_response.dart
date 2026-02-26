// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_conversation_turn_user_input_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_conversation_turn_virtual_agent_output_response.dart';

/// One interaction between a human and virtual agent. The human provides some input and the virtual agent provides a response.
class GoogleCloudDialogflowCxV3beta1ConversationTurnResponse {
  /// The user input.
  final GoogleCloudDialogflowCxV3beta1ConversationTurnUserInputResponse
      userInput;

  /// The virtual agent output.
  final GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse
      virtualAgentOutput;

  GoogleCloudDialogflowCxV3beta1ConversationTurnResponse({
    required this.userInput,
    required this.virtualAgentOutput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['userInput'] = userInput.toMap();
    map['virtualAgentOutput'] = virtualAgentOutput.toMap();
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1ConversationTurnResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ConversationTurnResponse(
      userInput: GoogleCloudDialogflowCxV3beta1ConversationTurnUserInputResponse
          .fromMap((map['userInput'] as Map).cast<String, dynamic>()),
      virtualAgentOutput:
          GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse
              .fromMap(
                  (map['virtualAgentOutput'] as Map).cast<String, dynamic>()),
    );
  }
}
