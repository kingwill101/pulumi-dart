// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_intent.dart';
import 'google_cloud_dialogflow_cx_v3_page.dart';
import 'google_cloud_dialogflow_cx_v3_response_message_text.dart';
import 'google_rpc_status.dart';

/// The output from the virtual agent.
class GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput {
  /// The Page on which the utterance was spoken. Only name and displayName will be set.
  final GoogleCloudDialogflowCxV3Page? currentPage;

  /// Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  final Map<String, String> diagnosticInfo;

  /// The session parameters available to the bot at this point.
  final Map<String, String>? sessionParameters;

  /// Response error from the agent in the test result. If set, other output is empty.
  final GoogleRpcStatus? status;

  /// The text responses from the agent for the turn.
  final List<GoogleCloudDialogflowCxV3ResponseMessageText>? textResponses;

  /// The Intent that triggered the response. Only name and displayName will be set.
  final GoogleCloudDialogflowCxV3Intent? triggeredIntent;

  /// Creates a new [GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput].
  /// [currentPage] The Page on which the utterance was spoken. Only name and displayName will be set.
  /// [diagnosticInfo] Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  /// [sessionParameters] The session parameters available to the bot at this point.
  /// [status] Response error from the agent in the test result. If set, other output is empty.
  /// [textResponses] The text responses from the agent for the turn.
  /// [triggeredIntent] The Intent that triggered the response. Only name and displayName will be set.
  GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput({
    this.currentPage,
    required this.diagnosticInfo,
    this.sessionParameters,
    this.status,
    this.textResponses,
    this.triggeredIntent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?currentPage == null ? null : currentPage!.toMap(),
      'diagnosticInfo': diagnosticInfo,
      'sessionParameters': ?sessionParameters,
      'status': ?status == null ? null : status!.toMap(),
      'textResponses': ?textResponses == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3ResponseMessageText,
              Map<String, dynamic>
            >(textResponses!, (value) => value.toMap()),
      'triggeredIntent': ?triggeredIntent == null
          ? null
          : triggeredIntent!.toMap(),
    };
  }

  factory GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput(
      currentPage: map['currentPage'] == null
          ? null
          : GoogleCloudDialogflowCxV3Page.fromMap(
              (map['currentPage'] as Map).cast<String, dynamic>(),
            ),
      diagnosticInfo: (map['diagnosticInfo'] as Map).cast<String, String>(),
      sessionParameters: map['sessionParameters'] == null
          ? null
          : (map['sessionParameters'] as Map).cast<String, String>(),
      status: map['status'] == null
          ? null
          : GoogleRpcStatus.fromMap(
              (map['status'] as Map).cast<String, dynamic>(),
            ),
      textResponses: map['textResponses'] == null
          ? null
          : pulumi
                .Input.decodeList<GoogleCloudDialogflowCxV3ResponseMessageText>(
              map['textResponses'],
              (value) => GoogleCloudDialogflowCxV3ResponseMessageText.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      triggeredIntent: map['triggeredIntent'] == null
          ? null
          : GoogleCloudDialogflowCxV3Intent.fromMap(
              (map['triggeredIntent'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
