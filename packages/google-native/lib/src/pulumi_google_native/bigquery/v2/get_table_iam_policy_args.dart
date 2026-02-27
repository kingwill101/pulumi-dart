// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTableIamPolicy.
class GetTableIamPolicyArgs {
  final Input<String> datasetId;
  final Input<String>? project;
  final Input<String> tableId;

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
      datasetId: Input.asInput<String>(map['datasetId']),
      project: Input.asOptionalInput<String>(map['project']),
      tableId: Input.asInput<String>(map['tableId']),
    );
  }
}
