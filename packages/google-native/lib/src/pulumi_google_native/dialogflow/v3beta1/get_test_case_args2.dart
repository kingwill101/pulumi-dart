// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTestCase.
class GetTestCaseArgs2 {
  final Input<String> agentId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> testCaseId;

  GetTestCaseArgs2({
    required this.agentId,
    required this.location,
    this.project,
    required this.testCaseId,
  });

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

  factory GetTestCaseArgs2.fromMap(Map<String, dynamic> map) {
    return GetTestCaseArgs2(
      agentId: Input.asInput<String>(map['agentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      testCaseId: Input.asInput<String>(map['testCaseId']),
    );
  }
}
