// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTableIamPolicy.
class GetTableIamPolicyBigtableArgs {
  final pulumi.Input<String> instanceName;
  final pulumi.Input<String>? project;

  /// The name or relative resource id of the table to manage IAM policies for.
  final pulumi.Input<String> table;

  GetTableIamPolicyBigtableArgs({
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

  factory GetTableIamPolicyBigtableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableIamPolicyBigtableArgs(
      instanceName: pulumi.Input.asInput<String>(map['instanceName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      table: pulumi.Input.asInput<String>(map['table']),
    );
  }
}
