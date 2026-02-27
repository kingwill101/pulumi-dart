// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_test_case_test_case_conversation_turn/cx_test_case_test_case_conversation_turn.dart';
import '../cx_test_case_test_config/cx_test_case_test_config.dart';

/// The set of arguments for CxTestCase.
class CxTestCaseArgs {
  /// The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  final pulumi.Input<String> displayName;

  /// Additional freeform notes about the test case. Limit of 400 characters.
  final pulumi.Input<String>? notes;

  /// The agent to create the test case for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;

  /// Tags are short descriptions that users may apply to test cases for organizational and filtering purposes.
  /// Each tag should start with "#" and has a limit of 30 characters
  final pulumi.Input<List<String>>? tags;

  /// The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  /// Structure is documented below.
  final pulumi.Input<List<CxTestCaseTestCaseConversationTurn>>?
      testCaseConversationTurns;

  /// Config for the test case.
  /// Structure is documented below.
  final pulumi.Input<CxTestCaseTestConfig>? testConfig;

  CxTestCaseArgs({
    required this.displayName,
    this.notes,
    this.parent,
    this.tags,
    this.testCaseConversationTurns,
    this.testConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final notesValue = notes;
    if (notesValue != null) {
      map['notes'] = notesValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final testCaseConversationTurnsValue = testCaseConversationTurns;
    if (testCaseConversationTurnsValue != null) {
      map['testCaseConversationTurns'] = pulumi.Input.mapOptionalInputValue<
              List<CxTestCaseTestCaseConversationTurn>,
              List<Map<String, dynamic>>>(
          testCaseConversationTurnsValue,
          (value) => pulumi.Input.encodeList<CxTestCaseTestCaseConversationTurn,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final testConfigValue = testConfig;
    if (testConfigValue != null) {
      map['testConfig'] = pulumi.Input.mapOptionalInputValue<
          CxTestCaseTestConfig,
          Map<String, dynamic>>(testConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory CxTestCaseArgs.fromMap(Map<String, dynamic> map) {
    return CxTestCaseArgs(
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      notes: pulumi.Input.asOptionalInput<String>(map['notes']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
      tags: pulumi.Input.asOptionalInput<List<String>>(map['tags']),
      testCaseConversationTurns: pulumi.Input.asOptionalInput<
              List<CxTestCaseTestCaseConversationTurn>>(
          map['testCaseConversationTurns']),
      testConfig:
          pulumi.Input.asOptionalInput<CxTestCaseTestConfig>(map['testConfig']),
    );
  }
}
