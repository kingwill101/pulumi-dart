// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_test_case_last_test_result_conversation_turn.dart';

class CxTestCaseLastTestResult {
  /// The conversation turns uttered during the test case replay in chronological order.
  /// Structure is documented below.
  final List<CxTestCaseLastTestResultConversationTurn>? conversationTurns;
  /// Environment where the test was run. If not set, it indicates the draft environment.
  final String? environment;
  /// The unique identifier of the page.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
  final String? name;
  /// Whether the test case passed in the agent environment.
  /// * PASSED: The test passed.
  /// * FAILED: The test did not pass.
  /// Possible values are: `PASSED`, `FAILED`.
  final String? testResult;
  /// The time that the test was run. A timestamp in RFC3339 text format.
  final String? testTime;

  /// Creates a new [CxTestCaseLastTestResult].
  /// [conversationTurns] The conversation turns uttered during the test case replay in chronological order.
  /// [environment] Environment where the test was run. If not set, it indicates the draft environment.
  /// [name] The unique identifier of the page.
  /// [testResult] Whether the test case passed in the agent environment.
  /// [testTime] The time that the test was run. A timestamp in RFC3339 text format.
  CxTestCaseLastTestResult({
    this.conversationTurns,
    this.environment,
    this.name,
    this.testResult,
    this.testTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationTurns': ?conversationTurns == null ? null : pulumi.Input.encodeList<CxTestCaseLastTestResultConversationTurn, Map<String, dynamic>>(conversationTurns!, (value) => value.toMap()),
      'environment': ?environment,
      'name': ?name,
      'testResult': ?testResult,
      'testTime': ?testTime,
    };
  }

  factory CxTestCaseLastTestResult.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResult(
      conversationTurns: map['conversationTurns'] == null ? null : pulumi.Input.decodeList<CxTestCaseLastTestResultConversationTurn>(map['conversationTurns'], (value) => CxTestCaseLastTestResultConversationTurn.fromMap((value as Map).cast<String, dynamic>())),
      environment: map['environment'] == null ? null : map['environment'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      testResult: map['testResult'] == null ? null : map['testResult'] as String,
      testTime: map['testTime'] == null ? null : map['testTime'] as String,
    );
  }
}

