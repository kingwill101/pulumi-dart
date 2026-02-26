// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTableIamPolicy.
class GetTableIamPolicyArgs2 {
  final Input<String> instanceName;
  final Input<String>? project;

  /// The name or relative resource id of the table to manage IAM policies for.
  final Input<String> table;

  GetTableIamPolicyArgs2({
    required this.instanceName,
    this.project,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceName'] = instanceName;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['table'] = table;
    return map;
  }

  factory GetTableIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetTableIamPolicyArgs2(
      instanceName: Input.asInput<String>(map['instanceName']),
      project: Input.asOptionalInput<String>(map['project']),
      table: Input.asInput<String>(map['table']),
    );
  }
}
