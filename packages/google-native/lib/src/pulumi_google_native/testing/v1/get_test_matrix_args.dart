// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTestMatrix.
class GetTestMatrixArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> testMatrixId;

  GetTestMatrixArgs({
    this.project,
    required this.testMatrixId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['testMatrixId'] = testMatrixId;
    return map;
  }

  factory GetTestMatrixArgs.fromMap(Map<String, dynamic> map) {
    return GetTestMatrixArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      testMatrixId: pulumi.Input.asInput<String>(map['testMatrixId']),
    );
  }
}
