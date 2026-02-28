// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'history_test_platform.dart';

/// {@template pulumi_toolresults_v1beta3_history_args_doc}
/// The set of arguments for History.
/// {@endtemplate}
/// {@macro pulumi_toolresults_v1beta3_history_args_doc}
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

  /// Creates a new [HistoryArgs].
  /// [displayName] A short human-readable (plain text) name to display in the UI. Maximum of 100 characters. - In response: present if set during create. - In create request: optional
  /// [historyId] A unique identifier within a project for this History. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create request: never set
  /// [name] A name to uniquely identify a history within a project. Maximum of 200 characters. - In response always set - In create request: always set
  /// [project] Optional.
  /// [requestId] A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended.
  /// [testPlatform] The platform of the test history. - In response: always set. Returns the platform of the last execution if unknown.
  HistoryArgs({
    String? displayName,
    String? historyId,
    String? name,
    String? project,
    String? requestId,
    HistoryTestPlatform? testPlatform,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      historyId = pulumi.Input.asOptionalInput<String>(historyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      testPlatform = pulumi.Input.asOptionalInput<HistoryTestPlatform>(testPlatform);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'historyId': ?historyId,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'testPlatform': ?pulumi.Input.mapOptionalInputValue<HistoryTestPlatform, String>(testPlatform, (value) => value.value),
    };
  }

  factory HistoryArgs.fromMap(Map<String, dynamic> map) {
    return HistoryArgs(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      historyId: map['historyId'] == null ? null : map['historyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      testPlatform: map['testPlatform'] == null ? null : HistoryTestPlatform.fromValue(map['testPlatform'] as String),
    );
  }
}

