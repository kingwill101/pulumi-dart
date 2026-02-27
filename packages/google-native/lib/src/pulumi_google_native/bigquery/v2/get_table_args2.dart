// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTable.
class GetTableArgs2 {
  final Input<String> datasetId;
  final Input<String>? project;
  final Input<String>? selectedFields;
  final Input<String> tableId;
  final Input<String>? view;

  GetTableArgs2({
    required this.datasetId,
    this.project,
    this.selectedFields,
    required this.tableId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final selectedFieldsValue = selectedFields;
    if (selectedFieldsValue != null) {
      map['selectedFields'] = selectedFieldsValue;
    }
    map['tableId'] = tableId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetTableArgs2.fromMap(Map<String, dynamic> map) {
    return GetTableArgs2(
      datasetId: Input.asInput<String>(map['datasetId']),
      project: Input.asOptionalInput<String>(map['project']),
      selectedFields: Input.asOptionalInput<String>(map['selectedFields']),
      tableId: Input.asInput<String>(map['tableId']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
