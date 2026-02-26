// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTestCase.
class GetTestCaseArgs3 {
  final Input<String> integrationId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> testCaseId;
  final Input<String> versionId;

  GetTestCaseArgs3({
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

  factory GetTestCaseArgs3.fromMap(Map<String, dynamic> map) {
    return GetTestCaseArgs3(
      integrationId: Input.asInput<String>(map['integrationId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      testCaseId: Input.asInput<String>(map['testCaseId']),
      versionId: Input.asInput<String>(map['versionId']),
    );
  }
}
