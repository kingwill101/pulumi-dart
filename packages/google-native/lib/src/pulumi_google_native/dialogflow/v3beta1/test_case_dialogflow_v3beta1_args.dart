// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_conversation_turn.dart';
import 'google_cloud_dialogflow_cx_v3beta1_test_case_result.dart';
import 'google_cloud_dialogflow_cx_v3beta1_test_config.dart';

/// The set of arguments for TestCase.
class TestCaseDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;

  /// The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  final pulumi.Input<String> displayName;

  /// The latest test result.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1TestCaseResult>?
      lastTestResult;
  final pulumi.Input<String>? location;

  /// The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: `projects//locations//agents/ /testCases/`.
  final pulumi.Input<String>? name;

  /// Additional freeform notes about the test case. Limit of 400 characters.
  final pulumi.Input<String>? notes;
  final pulumi.Input<String>? project;

  /// Tags are short descriptions that users may apply to test cases for organizational and filtering purposes. Each tag should start with "#" and has a limit of 30 characters.
  final pulumi.Input<List<String>>? tags;

  /// The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1ConversationTurn>>?
      testCaseConversationTurns;

  /// Config for the test case.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1TestConfig>? testConfig;

  TestCaseDialogflowV3beta1Args({
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
      map['lastTestResult'] = pulumi.Input.mapOptionalInputValue<
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
      map['testCaseConversationTurns'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3beta1ConversationTurn>,
              List<Map<String, dynamic>>>(
          testCaseConversationTurnsValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3beta1ConversationTurn,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final testConfigValue = testConfig;
    if (testConfigValue != null) {
      map['testConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3beta1TestConfig,
          Map<String, dynamic>>(testConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory TestCaseDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return TestCaseDialogflowV3beta1Args(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      lastTestResult: pulumi.Input.asOptionalInput<
          GoogleCloudDialogflowCxV3beta1TestCaseResult>(map['lastTestResult']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      notes: pulumi.Input.asOptionalInput<String>(map['notes']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tags: pulumi.Input.asOptionalInput<List<String>>(map['tags']),
      testCaseConversationTurns: pulumi.Input.asOptionalInput<
              List<GoogleCloudDialogflowCxV3beta1ConversationTurn>>(
          map['testCaseConversationTurns']),
      testConfig: pulumi.Input.asOptionalInput<
          GoogleCloudDialogflowCxV3beta1TestConfig>(map['testConfig']),
    );
  }
}
