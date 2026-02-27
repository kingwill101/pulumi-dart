// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTestMatrix.
class GetTestMatrixArgs {
  final Input<String>? project;
  final Input<String> testMatrixId;

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
      project: Input.asOptionalInput<String>(map['project']),
      testMatrixId: Input.asInput<String>(map['testMatrixId']),
    );
  }
}
