// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_test_case_dialogflow_v3beta1_args_doc}
/// Arguments for getTestCase.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_test_case_dialogflow_v3beta1_args_doc}
class GetTestCaseDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> testCaseId;

  /// Creates a new [GetTestCaseDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [testCaseId] Required.
  GetTestCaseDialogflowV3beta1Args({
    required String agentId,
    required String location,
    String? project,
    required String testCaseId,
  })  : agentId = pulumi.Input.asInput<String>(agentId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        testCaseId = pulumi.Input.asInput<String>(testCaseId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['testCaseId'] = testCaseId;
    return map;
  }

  factory GetTestCaseDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTestCaseDialogflowV3beta1Args(
      agentId: map['agentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      testCaseId: map['testCaseId'] as String,
    );
  }
}
