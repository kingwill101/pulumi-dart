// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_conversation_turn.dart';
import 'google_cloud_dialogflow_cx_v3beta1_test_case_result_test_result.dart';

/// Represents a result from running a test case in an agent environment.
class GoogleCloudDialogflowCxV3beta1TestCaseResult {
  /// The conversation turns uttered during the test case replay in chronological order.
  final List<GoogleCloudDialogflowCxV3beta1ConversationTurn>? conversationTurns;

  /// Environment where the test was run. If not set, it indicates the draft environment.
  final String? environment;

  /// The resource name for the test case result. Format: `projects//locations//agents//testCases/ /results/`.
  final String? name;

  /// Whether the test case passed in the agent environment.
  final GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult? testResult;

  /// The time that the test was run.
  final String? testTime;

  GoogleCloudDialogflowCxV3beta1TestCaseResult({
    this.conversationTurns,
    this.environment,
    this.name,
    this.testResult,
    this.testTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conversationTurnsValue = conversationTurns;
    if (conversationTurnsValue != null) {
      map['conversationTurns'] = pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3beta1ConversationTurn,
              Map<String, dynamic>>(
          conversationTurnsValue, (value) => value.toMap());
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final testResultValue = testResult;
    if (testResultValue != null) {
      map['testResult'] = testResultValue.value;
    }
    final testTimeValue = testTime;
    if (testTimeValue != null) {
      map['testTime'] = testTimeValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1TestCaseResult.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1TestCaseResult(
      conversationTurns: map['conversationTurns'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowCxV3beta1ConversationTurn>(
              map['conversationTurns'],
              (value) => GoogleCloudDialogflowCxV3beta1ConversationTurn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      environment:
          map['environment'] == null ? null : map['environment'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      testResult: map['testResult'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1TestCaseResultTestResult.fromValue(
              map['testResult'] as String),
      testTime: map['testTime'] == null ? null : map['testTime'] as String,
    );
  }
}
