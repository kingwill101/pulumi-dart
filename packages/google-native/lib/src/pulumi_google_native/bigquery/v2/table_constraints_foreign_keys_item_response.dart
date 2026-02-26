// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'table_constraints_foreign_keys_item_column_references_item_response.dart';
import 'table_constraints_foreign_keys_item_referenced_table_response.dart';

class TableConstraintsForeignKeysItemResponse {
  final List<TableConstraintsForeignKeysItemColumnReferencesItemResponse>
      columnReferences;
  final String name;
  final TableConstraintsForeignKeysItemReferencedTableResponse referencedTable;

  TableConstraintsForeignKeysItemResponse({
    required this.columnReferences,
    required this.name,
    required this.referencedTable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnReferences'] = Input.encodeList<
        TableConstraintsForeignKeysItemColumnReferencesItemResponse,
        Map<String, dynamic>>(columnReferences, (value) => value.toMap());
    map['name'] = name;
    map['referencedTable'] = referencedTable.toMap();
    return map;
  }

  factory TableConstraintsForeignKeysItemResponse.fromMap(
      Map<String, dynamic> map) {
    return TableConstraintsForeignKeysItemResponse(
      columnReferences: Input.decodeList<
              TableConstraintsForeignKeysItemColumnReferencesItemResponse>(
          map['columnReferences'],
          (value) => TableConstraintsForeignKeysItemColumnReferencesItemResponse
              .fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      referencedTable:
          TableConstraintsForeignKeysItemReferencedTableResponse.fromMap(
              (map['referencedTable'] as Map).cast<String, dynamic>()),
    );
  }
}
