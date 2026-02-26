// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3_intent_response.dart';
import 'google_cloud_dialogflow_cx_v3_page_response.dart';
import 'google_cloud_dialogflow_cx_v3_response_message_text_response.dart';
import 'google_cloud_dialogflow_cx_v3_test_run_difference_response.dart';
import 'google_rpc_status_response7.dart';

/// The output from the virtual agent.
class GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse {
  /// The Page on which the utterance was spoken. Only name and displayName will be set.
  final GoogleCloudDialogflowCxV3PageResponse currentPage;

  /// Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  final Map<String, String> diagnosticInfo;

  /// If this is part of a result conversation turn, the list of differences between the original run and the replay for this output, if any.
  final List<GoogleCloudDialogflowCxV3TestRunDifferenceResponse> differences;

  /// The session parameters available to the bot at this point.
  final Map<String, String> sessionParameters;

  /// Response error from the agent in the test result. If set, other output is empty.
  final GoogleRpcStatusResponse7 status;

  /// The text responses from the agent for the turn.
  final List<GoogleCloudDialogflowCxV3ResponseMessageTextResponse>
      textResponses;

  /// The Intent that triggered the response. Only name and displayName will be set.
  final GoogleCloudDialogflowCxV3IntentResponse triggeredIntent;

  GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse({
    required this.currentPage,
    required this.diagnosticInfo,
    required this.differences,
    required this.sessionParameters,
    required this.status,
    required this.textResponses,
    required this.triggeredIntent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['currentPage'] = currentPage.toMap();
    map['diagnosticInfo'] = diagnosticInfo;
    map['differences'] = Input.encodeList<
        GoogleCloudDialogflowCxV3TestRunDifferenceResponse,
        Map<String, dynamic>>(differences, (value) => value.toMap());
    map['sessionParameters'] = sessionParameters;
    map['status'] = status.toMap();
    map['textResponses'] = Input.encodeList<
        GoogleCloudDialogflowCxV3ResponseMessageTextResponse,
        Map<String, dynamic>>(textResponses, (value) => value.toMap());
    map['triggeredIntent'] = triggeredIntent.toMap();
    return map;
  }

  factory GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutputResponse(
      currentPage: GoogleCloudDialogflowCxV3PageResponse.fromMap(
          (map['currentPage'] as Map).cast<String, dynamic>()),
      diagnosticInfo: (map['diagnosticInfo'] as Map).cast<String, String>(),
      differences:
          Input.decodeList<GoogleCloudDialogflowCxV3TestRunDifferenceResponse>(
              map['differences'],
              (value) =>
                  GoogleCloudDialogflowCxV3TestRunDifferenceResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      sessionParameters:
          (map['sessionParameters'] as Map).cast<String, String>(),
      status: GoogleRpcStatusResponse7.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      textResponses: Input.decodeList<
              GoogleCloudDialogflowCxV3ResponseMessageTextResponse>(
          map['textResponses'],
          (value) =>
              GoogleCloudDialogflowCxV3ResponseMessageTextResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      triggeredIntent: GoogleCloudDialogflowCxV3IntentResponse.fromMap(
          (map['triggeredIntent'] as Map).cast<String, dynamic>()),
    );
  }
}
