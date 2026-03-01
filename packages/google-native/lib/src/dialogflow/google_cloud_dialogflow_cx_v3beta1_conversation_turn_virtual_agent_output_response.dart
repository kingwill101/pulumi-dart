// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_intent_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_page_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_text_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_test_run_difference_response.dart';
import 'google_rpc_status_response_dialogflow_v3beta1.dart';

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
  final GoogleRpcStatusResponseDialogflowV3beta1 status;

  /// The text responses from the agent for the turn.
  final List<GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse>
  textResponses;

  /// The Intent that triggered the response. Only name and displayName will be set.
  final GoogleCloudDialogflowCxV3beta1IntentResponse triggeredIntent;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse].
  /// [currentPage] The Page on which the utterance was spoken. Only name and displayName will be set.
  /// [diagnosticInfo] Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  /// [differences] If this is part of a result conversation turn, the list of differences between the original run and the replay for this output, if any.
  /// [sessionParameters] The session parameters available to the bot at this point.
  /// [status] Response error from the agent in the test result. If set, other output is empty.
  /// [textResponses] The text responses from the agent for the turn.
  /// [triggeredIntent] The Intent that triggered the response. Only name and displayName will be set.
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
    return <String, dynamic>{
      'currentPage': currentPage.toMap(),
      'diagnosticInfo': diagnosticInfo,
      'differences':
          pulumi.Input.encodeList<
            GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse,
            Map<String, dynamic>
          >(differences, (value) => value.toMap()),
      'sessionParameters': sessionParameters,
      'status': status.toMap(),
      'textResponses':
          pulumi.Input.encodeList<
            GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse,
            Map<String, dynamic>
          >(textResponses, (value) => value.toMap()),
      'triggeredIntent': triggeredIntent.toMap(),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutputResponse(
      currentPage: GoogleCloudDialogflowCxV3beta1PageResponse.fromMap(
        (map['currentPage'] as Map).cast<String, dynamic>(),
      ),
      diagnosticInfo: (map['diagnosticInfo'] as Map).cast<String, String>(),
      differences:
          pulumi.Input.decodeList<
            GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse
          >(
            map['differences'],
            (value) =>
                GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      sessionParameters: (map['sessionParameters'] as Map)
          .cast<String, String>(),
      status: GoogleRpcStatusResponseDialogflowV3beta1.fromMap(
        (map['status'] as Map).cast<String, dynamic>(),
      ),
      textResponses:
          pulumi.Input.decodeList<
            GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse
          >(
            map['textResponses'],
            (value) =>
                GoogleCloudDialogflowCxV3beta1ResponseMessageTextResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      triggeredIntent: GoogleCloudDialogflowCxV3beta1IntentResponse.fromMap(
        (map['triggeredIntent'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
