// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_conversation_turn_response.dart';

/// Represents a result from running a test case in an agent environment.
class GoogleCloudDialogflowCxV3beta1TestCaseResultResponse {
  /// The conversation turns uttered during the test case replay in chronological order.
  final List<GoogleCloudDialogflowCxV3beta1ConversationTurnResponse> conversationTurns;
  /// Environment where the test was run. If not set, it indicates the draft environment.
  final String environment;
  /// The resource name for the test case result. Format: `projects//locations//agents//testCases/ /results/`.
  final String name;
  /// Whether the test case passed in the agent environment.
  final String testResult;
  /// The time that the test was run.
  final String testTime;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1TestCaseResultResponse].
  /// [conversationTurns] The conversation turns uttered during the test case replay in chronological order.
  /// [environment] Environment where the test was run. If not set, it indicates the draft environment.
  /// [name] The resource name for the test case result. Format: `projects//locations//agents//testCases/ /results/`.
  /// [testResult] Whether the test case passed in the agent environment.
  /// [testTime] The time that the test was run.
  GoogleCloudDialogflowCxV3beta1TestCaseResultResponse({
    required this.conversationTurns,
    required this.environment,
    required this.name,
    required this.testResult,
    required this.testTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationTurns': pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1ConversationTurnResponse, Map<String, dynamic>>(conversationTurns, (value) => value.toMap()),
      'environment': environment,
      'name': name,
      'testResult': testResult,
      'testTime': testTime,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1TestCaseResultResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1TestCaseResultResponse(
      conversationTurns: pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1ConversationTurnResponse>(map['conversationTurns'], (value) => GoogleCloudDialogflowCxV3beta1ConversationTurnResponse.fromMap((value as Map).cast<String, dynamic>())),
      environment: map['environment'] as String,
      name: map['name'] as String,
      testResult: map['testResult'] as String,
      testTime: map['testTime'] as String,
    );
  }
}

