// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testing_v1_get_test_matrix_args_doc}
/// Arguments for getTestMatrix.
/// {@endtemplate}
/// {@macro pulumi_testing_v1_get_test_matrix_args_doc}
class GetTestMatrixArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> testMatrixId;

  /// Creates a new [GetTestMatrixArgs].
  /// [project] Optional.
  /// [testMatrixId] Required.
  GetTestMatrixArgs({
    String? project,
    required String testMatrixId,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        testMatrixId = pulumi.Input.asInput<String>(testMatrixId);

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
      project: map['project'] == null ? null : map['project'] as String,
      testMatrixId: map['testMatrixId'] as String,
    );
  }
}
