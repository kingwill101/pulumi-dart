// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_conversation_turn_response.dart';

/// Represents a result from running a test case in an agent environment.
class GoogleCloudDialogflowCxV3TestCaseResultResponse {
  /// The conversation turns uttered during the test case replay in chronological order.
  final List<GoogleCloudDialogflowCxV3ConversationTurnResponse>
      conversationTurns;

  /// Environment where the test was run. If not set, it indicates the draft environment.
  final String environment;

  /// The resource name for the test case result. Format: `projects//locations//agents//testCases/ /results/`.
  final String name;

  /// Whether the test case passed in the agent environment.
  final String testResult;

  /// The time that the test was run.
  final String testTime;

  GoogleCloudDialogflowCxV3TestCaseResultResponse({
    required this.conversationTurns,
    required this.environment,
    required this.name,
    required this.testResult,
    required this.testTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversationTurns'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowCxV3ConversationTurnResponse,
        Map<String, dynamic>>(conversationTurns, (value) => value.toMap());
    map['environment'] = environment;
    map['name'] = name;
    map['testResult'] = testResult;
    map['testTime'] = testTime;
    return map;
  }

  factory GoogleCloudDialogflowCxV3TestCaseResultResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3TestCaseResultResponse(
      conversationTurns: pulumi.Input.decodeList<
              GoogleCloudDialogflowCxV3ConversationTurnResponse>(
          map['conversationTurns'],
          (value) => GoogleCloudDialogflowCxV3ConversationTurnResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      environment: map['environment'] as String,
      name: map['name'] as String,
      testResult: map['testResult'] as String,
      testTime: map['testTime'] as String,
    );
  }
}
