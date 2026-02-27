// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3beta1_intent.dart';
import 'google_cloud_dialogflow_cx_v3beta1_page.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_text.dart';
import 'google_rpc_status3.dart';

/// The output from the virtual agent.
class GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput {
  /// The Page on which the utterance was spoken. Only name and displayName will be set.
  final GoogleCloudDialogflowCxV3beta1Page? currentPage;

  /// Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.
  final Map<String, String> diagnosticInfo;

  /// The session parameters available to the bot at this point.
  final Map<String, String>? sessionParameters;

  /// Response error from the agent in the test result. If set, other output is empty.
  final GoogleRpcStatus3? status;

  /// The text responses from the agent for the turn.
  final List<GoogleCloudDialogflowCxV3beta1ResponseMessageText>? textResponses;

  /// The Intent that triggered the response. Only name and displayName will be set.
  final GoogleCloudDialogflowCxV3beta1Intent? triggeredIntent;

  GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput({
    this.currentPage,
    required this.diagnosticInfo,
    this.sessionParameters,
    this.status,
    this.textResponses,
    this.triggeredIntent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final currentPageValue = currentPage;
    if (currentPageValue != null) {
      map['currentPage'] = currentPageValue.toMap();
    }
    map['diagnosticInfo'] = diagnosticInfo;
    final sessionParametersValue = sessionParameters;
    if (sessionParametersValue != null) {
      map['sessionParameters'] = sessionParametersValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue.toMap();
    }
    final textResponsesValue = textResponses;
    if (textResponsesValue != null) {
      map['textResponses'] = Input.encodeList<
          GoogleCloudDialogflowCxV3beta1ResponseMessageText,
          Map<String, dynamic>>(textResponsesValue, (value) => value.toMap());
    }
    final triggeredIntentValue = triggeredIntent;
    if (triggeredIntentValue != null) {
      map['triggeredIntent'] = triggeredIntentValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput(
      currentPage: map['currentPage'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1Page.fromMap(
              (map['currentPage'] as Map).cast<String, dynamic>()),
      diagnosticInfo: (map['diagnosticInfo'] as Map).cast<String, String>(),
      sessionParameters: map['sessionParameters'] == null
          ? null
          : (map['sessionParameters'] as Map).cast<String, String>(),
      status: map['status'] == null
          ? null
          : GoogleRpcStatus3.fromMap(
              (map['status'] as Map).cast<String, dynamic>()),
      textResponses: map['textResponses'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowCxV3beta1ResponseMessageText>(
              map['textResponses'],
              (value) =>
                  GoogleCloudDialogflowCxV3beta1ResponseMessageText.fromMap(
                      (value as Map).cast<String, dynamic>())),
      triggeredIntent: map['triggeredIntent'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1Intent.fromMap(
              (map['triggeredIntent'] as Map).cast<String, dynamic>()),
    );
  }
}
