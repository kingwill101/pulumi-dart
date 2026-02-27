// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'history_test_platform.dart';

/// The set of arguments for History.
class HistoryArgs {
  /// A short human-readable (plain text) name to display in the UI. Maximum of 100 characters. - In response: present if set during create. - In create request: optional
  final pulumi.Input<String>? displayName;

  /// A unique identifier within a project for this History. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create request: never set
  final pulumi.Input<String>? historyId;

  /// A name to uniquely identify a history within a project. Maximum of 200 characters. - In response always set - In create request: always set
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended.
  final pulumi.Input<String>? requestId;

  /// The platform of the test history. - In response: always set. Returns the platform of the last execution if unknown.
  final pulumi.Input<HistoryTestPlatform>? testPlatform;

  HistoryArgs({
    this.displayName,
    this.historyId,
    this.name,
    this.project,
    this.requestId,
    this.testPlatform,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final historyIdValue = historyId;
    if (historyIdValue != null) {
      map['historyId'] = historyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final testPlatformValue = testPlatform;
    if (testPlatformValue != null) {
      map['testPlatform'] =
          pulumi.Input.mapOptionalInputValue<HistoryTestPlatform, String>(
              testPlatformValue, (value) => value.value);
    }
    return map;
  }

  factory HistoryArgs.fromMap(Map<String, dynamic> map) {
    return HistoryArgs(
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      historyId: pulumi.Input.asOptionalInput<String>(map['historyId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      testPlatform: pulumi.Input.asOptionalInput<HistoryTestPlatform>(
          map['testPlatform']),
    );
  }
}
