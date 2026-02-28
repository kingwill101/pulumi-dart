// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_get_test_case_args_doc}
/// Arguments for getTestCase.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_get_test_case_args_doc}
class GetTestCaseArgs {
  final pulumi.Input<String> integrationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> testCaseId;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetTestCaseArgs].
  /// [integrationId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [testCaseId] Required.
  /// [versionId] Required.
  GetTestCaseArgs({
    required String integrationId,
    required String location,
    String? project,
    required String testCaseId,
    required String versionId,
  })  : integrationId = pulumi.Input.asInput<String>(integrationId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        testCaseId = pulumi.Input.asInput<String>(testCaseId),
        versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['integrationId'] = integrationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['testCaseId'] = testCaseId;
    map['versionId'] = versionId;
    return map;
  }

  factory GetTestCaseArgs.fromMap(Map<String, dynamic> map) {
    return GetTestCaseArgs(
      integrationId: map['integrationId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      testCaseId: map['testCaseId'] as String,
      versionId: map['versionId'] as String,
    );
  }
}
