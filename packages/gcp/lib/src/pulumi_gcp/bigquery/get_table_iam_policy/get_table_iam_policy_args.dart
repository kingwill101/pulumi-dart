// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTableIamPolicy.
class GetTableIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> datasetId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> tableId;

  GetTableIamPolicyArgs({
    required this.datasetId,
    this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tableId'] = tableId;
    return map;
  }

  factory GetTableIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTableIamPolicyArgs(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tableId: pulumi.Input.asInput<String>(map['tableId']),
    );
  }
}
