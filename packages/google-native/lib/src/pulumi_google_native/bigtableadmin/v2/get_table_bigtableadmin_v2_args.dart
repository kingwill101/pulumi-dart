// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTable.
class GetTableBigtableadminV2Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tableId;
  final pulumi.Input<String>? view;

  GetTableBigtableadminV2Args({
    required this.instanceId,
    this.project,
    required this.tableId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tableId'] = tableId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetTableBigtableadminV2Args.fromMap(Map<String, dynamic> map) {
    return GetTableBigtableadminV2Args(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tableId: pulumi.Input.asInput<String>(map['tableId']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
