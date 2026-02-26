// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTable.
class GetTableArgs3 {
  final Input<String> instanceId;
  final Input<String>? project;
  final Input<String> tableId;
  final Input<String>? view;

  GetTableArgs3({
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

  factory GetTableArgs3.fromMap(Map<String, dynamic> map) {
    return GetTableArgs3(
      instanceId: Input.asInput<String>(map['instanceId']),
      project: Input.asOptionalInput<String>(map['project']),
      tableId: Input.asInput<String>(map['tableId']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
