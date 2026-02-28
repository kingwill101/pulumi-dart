// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_test_case_conversation_turn_virtual_agent_output_current_page.dart';
import 'cx_test_case_test_case_conversation_turn_virtual_agent_output_text_response.dart';
import 'cx_test_case_test_case_conversation_turn_virtual_agent_output_triggered_intent.dart';

class CxTestCaseTestCaseConversationTurnVirtualAgentOutput {
  /// The [Page](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages#Page) on which the utterance was spoken.
  /// Structure is documented below.
  final CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage?
      currentPage;

  /// The session parameters available to the bot at this point.
  final String? sessionParameters;

  /// The text responses from the agent for the turn.
  /// Structure is documented below.
  final List<CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse>?
      textResponses;

  /// The [Intent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.intents#Intent) that triggered the response.
  /// Structure is documented below.
  final CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntent?
      triggeredIntent;

  /// Creates a new [CxTestCaseTestCaseConversationTurnVirtualAgentOutput].
  /// [currentPage] The [Page](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages#Page) on which the utterance was spoken.
  /// [sessionParameters] The session parameters available to the bot at this point.
  /// [textResponses] The text responses from the agent for the turn.
  /// [triggeredIntent] The [Intent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.intents#Intent) that triggered the response.
  CxTestCaseTestCaseConversationTurnVirtualAgentOutput({
    this.currentPage,
    this.sessionParameters,
    this.textResponses,
    this.triggeredIntent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final currentPageValue = currentPage;
    if (currentPageValue != null) {
      map['currentPage'] = currentPageValue.toMap();
    }
    final sessionParametersValue = sessionParameters;
    if (sessionParametersValue != null) {
      map['sessionParameters'] = sessionParametersValue;
    }
    final textResponsesValue = textResponses;
    if (textResponsesValue != null) {
      map['textResponses'] = pulumi.Input.encodeList<
          CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse,
          Map<String, dynamic>>(textResponsesValue, (value) => value.toMap());
    }
    final triggeredIntentValue = triggeredIntent;
    if (triggeredIntentValue != null) {
      map['triggeredIntent'] = triggeredIntentValue.toMap();
    }
    return map;
  }

  factory CxTestCaseTestCaseConversationTurnVirtualAgentOutput.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnVirtualAgentOutput(
      currentPage: map['currentPage'] == null
          ? null
          : CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage
              .fromMap((map['currentPage'] as Map).cast<String, dynamic>()),
      sessionParameters: map['sessionParameters'] == null
          ? null
          : map['sessionParameters'] as String,
      textResponses: map['textResponses'] == null
          ? null
          : pulumi.Input.decodeList<
                  CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse>(
              map['textResponses'],
              (value) =>
                  CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse
                      .fromMap((value as Map).cast<String, dynamic>())),
      triggeredIntent: map['triggeredIntent'] == null
          ? null
          : CxTestCaseTestCaseConversationTurnVirtualAgentOutputTriggeredIntent
              .fromMap((map['triggeredIntent'] as Map).cast<String, dynamic>()),
    );
  }
}
