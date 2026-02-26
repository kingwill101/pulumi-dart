// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3beta1_intent_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_page_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_text_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_test_run_difference_response.dart';
import 'google_rpc_status_response8.dart';

/// The output from the virtual agent.
class GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse {
  /// The Page on which the utterance was spoken. Only name and displayName will be set.
  final GoogleCloudDialogflowCxV3beta1PageResponse currentPage;

  /// Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  final Map<String, String> diagnosticInfo;

  /// If this is part of a result conversation turn, the list of differences between the original run and the replay for this output, if any.
  final List<GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse>
      differences;

  /// The session parameters available to the bot at this point.
  final Map<String, String> sessionParameters;

  /// Response error from the agent in the test result. If set, other output is empty.
  final GoogleRpcStatusResponse8 status;

  /// The text responses from the agent for the turn.
  final List<GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse>
      textResponses;

  /// The Intent that triggered the response. Only name and displayName will be set.
  final GoogleCloudDialogflowCxV3beta1IntentResponse triggeredIntent;

  GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse({
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
        GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse,
        Map<String, dynamic>>(differences, (value) => value.toMap());
    map['sessionParameters'] = sessionParameters;
    map['status'] = status.toMap();
    map['textResponses'] = Input.encodeList<
        GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse,
        Map<String, dynamic>>(textResponses, (value) => value.toMap());
    map['triggeredIntent'] = triggeredIntent.toMap();
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse(
      currentPage: GoogleCloudDialogflowCxV3beta1PageResponse.fromMap(
          (map['currentPage'] as Map).cast<String, dynamic>()),
      diagnosticInfo: (map['diagnosticInfo'] as Map).cast<String, String>(),
      differences: Input.decodeList<
              GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse>(
          map['differences'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sessionParameters:
          (map['sessionParameters'] as Map).cast<String, String>(),
      status: GoogleRpcStatusResponse8.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      textResponses: Input.decodeList<
              GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse>(
          map['textResponses'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      triggeredIntent: GoogleCloudDialogflowCxV3beta1IntentResponse.fromMap(
          (map['triggeredIntent'] as Map).cast<String, dynamic>()),
    );
  }
}
