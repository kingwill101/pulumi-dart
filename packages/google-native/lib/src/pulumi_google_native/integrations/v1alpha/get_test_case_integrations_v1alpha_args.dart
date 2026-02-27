// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTestCase.
class GetTestCaseIntegrationsV1alphaArgs {
  final pulumi.Input<String> integrationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> testCaseId;
  final pulumi.Input<String> versionId;

  GetTestCaseIntegrationsV1alphaArgs({
    required this.integrationId,
    required this.location,
    this.project,
    required this.testCaseId,
    required this.versionId,
  });

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

  factory GetTestCaseIntegrationsV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetTestCaseIntegrationsV1alphaArgs(
      integrationId: pulumi.Input.asInput<String>(map['integrationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      testCaseId: pulumi.Input.asInput<String>(map['testCaseId']),
      versionId: pulumi.Input.asInput<String>(map['versionId']),
    );
  }
}
