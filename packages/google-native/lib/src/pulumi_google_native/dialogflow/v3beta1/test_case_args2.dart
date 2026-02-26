// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3beta1_conversation_turn.dart';
import 'google_cloud_dialogflow_cx_v3beta1_test_case_result.dart';
import 'google_cloud_dialogflow_cx_v3beta1_test_config.dart';

/// The set of arguments for TestCase.
class TestCaseArgs2 {
  final Input<String> agentId;

  /// The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  final Input<String> displayName;

  /// The latest test result.
  final Input<GoogleCloudDialogflowCxV3beta1TestCaseResult>? lastTestResult;
  final Input<String>? location;

  /// The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: `projects//locations//agents/ /testCases/`.
  final Input<String>? name;

  /// Additional freeform notes about the test case. Limit of 400 characters.
  final Input<String>? notes;
  final Input<String>? project;

  /// Tags are short descriptions that users may apply to test cases for organizational and filtering purposes. Each tag should start with "#" and has a limit of 30 characters.
  final Input<List<String>>? tags;

  /// The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  final Input<List<GoogleCloudDialogflowCxV3beta1ConversationTurn>>?
      testCaseConversationTurns;

  /// Config for the test case.
  final Input<GoogleCloudDialogflowCxV3beta1TestConfig>? testConfig;

  TestCaseArgs2({
    required this.agentId,
    required this.displayName,
    this.lastTestResult,
    this.location,
    this.name,
    this.notes,
    this.project,
    this.tags,
    this.testCaseConversationTurns,
    this.testConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['displayName'] = displayName;
    final lastTestResultValue = lastTestResult;
    if (lastTestResultValue != null) {
      map['lastTestResult'] = Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3beta1TestCaseResult,
          Map<String, dynamic>>(lastTestResultValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notesValue = notes;
    if (notesValue != null) {
      map['notes'] = notesValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final testCaseConversationTurnsValue = testCaseConversationTurns;
    if (testCaseConversationTurnsValue != null) {
      map['testCaseConversationTurns'] = Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3beta1ConversationTurn>,
              List<Map<String, dynamic>>>(
          testCaseConversationTurnsValue,
          (value) => Input.encodeList<
              GoogleCloudDialogflowCxV3beta1ConversationTurn,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final testConfigValue = testConfig;
    if (testConfigValue != null) {
      map['testConfig'] = Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3beta1TestConfig,
          Map<String, dynamic>>(testConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory TestCaseArgs2.fromMap(Map<String, dynamic> map) {
    return TestCaseArgs2(
      agentId: Input.asInput<String>(map['agentId']),
      displayName: Input.asInput<String>(map['displayName']),
      lastTestResult:
          Input.asOptionalInput<GoogleCloudDialogflowCxV3beta1TestCaseResult>(
              map['lastTestResult']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      notes: Input.asOptionalInput<String>(map['notes']),
      project: Input.asOptionalInput<String>(map['project']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
      testCaseConversationTurns: Input.asOptionalInput<
              List<GoogleCloudDialogflowCxV3beta1ConversationTurn>>(
          map['testCaseConversationTurns']),
      testConfig:
          Input.asOptionalInput<GoogleCloudDialogflowCxV3beta1TestConfig>(
              map['testConfig']),
    );
  }
}
