// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_last_test_result_conversation_turn_virtual_agent_output_current_page.dart';
import 'cx_test_case_last_test_result_conversation_turn_virtual_agent_output_difference.dart';
import 'cx_test_case_last_test_result_conversation_turn_virtual_agent_output_status.dart';
import 'cx_test_case_last_test_result_conversation_turn_virtual_agent_output_text_response.dart';
import 'cx_test_case_last_test_result_conversation_turn_virtual_agent_output_triggered_intent.dart';

class CxTestCaseLastTestResultConversationTurnVirtualAgentOutput {
  /// The [Page](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages#Page) on which the utterance was spoken.
  /// Structure is documented below.
  final CxTestCaseLastTestResultConversationTurnVirtualAgentOutputCurrentPage?
  currentPage;

  /// The list of differences between the original run and the replay for this output, if any.
  /// Structure is documented below.
  final List<
    CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference
  >?
  differences;

  /// The session parameters available to the bot at this point.
  final String? sessionParameters;

  /// Response error from the agent in the test result. If set, other output is empty.
  /// Structure is documented below.
  final CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus?
  status;

  /// The text responses from the agent for the turn.
  /// Structure is documented below.
  final List<
    CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse
  >?
  textResponses;

  /// The [Intent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.intents#Intent) that triggered the response.
  /// Structure is documented below.
  final CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent?
  triggeredIntent;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnVirtualAgentOutput].
  /// [currentPage] The [Page](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages#Page) on which the utterance was spoken.
  /// [differences] The list of differences between the original run and the replay for this output, if any.
  /// [sessionParameters] The session parameters available to the bot at this point.
  /// [status] Response error from the agent in the test result. If set, other output is empty.
  /// [textResponses] The text responses from the agent for the turn.
  /// [triggeredIntent] The [Intent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.intents#Intent) that triggered the response.
  CxTestCaseLastTestResultConversationTurnVirtualAgentOutput({
    this.currentPage,
    this.differences,
    this.sessionParameters,
    this.status,
    this.textResponses,
    this.triggeredIntent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?currentPage == null ? null : currentPage!.toMap(),
      'differences': ?differences == null
          ? null
          : pulumi.Input.encodeList<
              CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference,
              Map<String, dynamic>
            >(differences!, (value) => value.toMap()),
      'sessionParameters': ?sessionParameters,
      'status': ?status == null ? null : status!.toMap(),
      'textResponses': ?textResponses == null
          ? null
          : pulumi.Input.encodeList<
              CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse,
              Map<String, dynamic>
            >(textResponses!, (value) => value.toMap()),
      'triggeredIntent': ?triggeredIntent == null
          ? null
          : triggeredIntent!.toMap(),
    };
  }

  factory CxTestCaseLastTestResultConversationTurnVirtualAgentOutput.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxTestCaseLastTestResultConversationTurnVirtualAgentOutput(
      currentPage: map['currentPage'] == null
          ? null
          : CxTestCaseLastTestResultConversationTurnVirtualAgentOutputCurrentPage.fromMap(
              (map['currentPage'] as Map).cast<String, dynamic>(),
            ),
      differences: map['differences'] == null
          ? null
          : pulumi.Input.decodeList<
              CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference
            >(
              map['differences'],
              (value) =>
                  CxTestCaseLastTestResultConversationTurnVirtualAgentOutputDifference.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      sessionParameters: map['sessionParameters'] == null
          ? null
          : map['sessionParameters'] as String,
      status: map['status'] == null
          ? null
          : CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus.fromMap(
              (map['status'] as Map).cast<String, dynamic>(),
            ),
      textResponses: map['textResponses'] == null
          ? null
          : pulumi.Input.decodeList<
              CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse
            >(
              map['textResponses'],
              (value) =>
                  CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      triggeredIntent: map['triggeredIntent'] == null
          ? null
          : CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTriggeredIntent.fromMap(
              (map['triggeredIntent'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
