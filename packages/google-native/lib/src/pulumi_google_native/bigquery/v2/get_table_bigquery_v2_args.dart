// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTable.
class GetTableBigqueryV2Args {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? selectedFields;
  final pulumi.Input<String> tableId;
  final pulumi.Input<String>? view;

  GetTableBigqueryV2Args({
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

  factory GetTableBigqueryV2Args.fromMap(Map<String, dynamic> map) {
    return GetTableBigqueryV2Args(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      selectedFields:
          pulumi.Input.asOptionalInput<String>(map['selectedFields']),
      tableId: pulumi.Input.asInput<String>(map['tableId']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
