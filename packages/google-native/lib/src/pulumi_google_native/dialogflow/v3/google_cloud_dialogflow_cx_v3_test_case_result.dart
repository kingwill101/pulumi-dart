// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3_conversation_turn.dart';
import 'google_cloud_dialogflow_cx_v3_test_case_result_test_result.dart';

/// Represents a result from running a test case in an agent environment.
class GoogleCloudDialogflowCxV3TestCaseResult {
  /// The conversation turns uttered during the test case replay in chronological order.
  final List<GoogleCloudDialogflowCxV3ConversationTurn>? conversationTurns;

  /// Environment where the test was run. If not set, it indicates the draft environment.
  final String? environment;

  /// The resource name for the test case result. Format: `projects//locations//agents//testCases/ /results/`.
  final String? name;

  /// Whether the test case passed in the agent environment.
  final GoogleCloudDialogflowCxV3TestCaseResultTestResult? testResult;

  /// The time that the test was run.
  final String? testTime;

  GoogleCloudDialogflowCxV3TestCaseResult({
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
      map['conversationTurns'] = Input.encodeList<
              GoogleCloudDialogflowCxV3ConversationTurn, Map<String, dynamic>>(
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

  factory GoogleCloudDialogflowCxV3TestCaseResult.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3TestCaseResult(
      conversationTurns: map['conversationTurns'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowCxV3ConversationTurn>(
              map['conversationTurns'],
              (value) => GoogleCloudDialogflowCxV3ConversationTurn.fromMap(
                  (value as Map).cast<String, dynamic>())),
      environment:
          map['environment'] == null ? null : map['environment'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      testResult: map['testResult'] == null
          ? null
          : GoogleCloudDialogflowCxV3TestCaseResultTestResult.fromValue(
              map['testResult'] as String),
      testTime: map['testTime'] == null ? null : map['testTime'] as String,
    );
  }
}
