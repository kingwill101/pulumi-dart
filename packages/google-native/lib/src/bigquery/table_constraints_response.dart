// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_constraints_foreign_keys_item_response.dart';
import 'table_constraints_primary_key_response.dart';

class TableConstraintsResponse {
  /// [Optional] The foreign keys of the tables.
  final List<TableConstraintsForeignKeysItemResponse> foreignKeys;

  /// [Optional] The primary key of the table.
  final TableConstraintsPrimaryKeyResponse primaryKey;

  /// Creates a new [TableConstraintsResponse].
  /// [foreignKeys] [Optional] The foreign keys of the tables.
  /// [primaryKey] [Optional] The primary key of the table.
  TableConstraintsResponse({
    required this.foreignKeys,
    required this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['foreignKeys'] = pulumi.Input.encodeList<
        TableConstraintsForeignKeysItemResponse,
        Map<String, dynamic>>(foreignKeys, (value) => value.toMap());
    map['primaryKey'] = primaryKey.toMap();
    return map;
  }

  factory TableConstraintsResponse.fromMap(Map<String, dynamic> map) {
    return TableConstraintsResponse(
      foreignKeys:
          pulumi.Input.decodeList<TableConstraintsForeignKeysItemResponse>(
              map['foreignKeys'],
              (value) => TableConstraintsForeignKeysItemResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      primaryKey: TableConstraintsPrimaryKeyResponse.fromMap(
          (map['primaryKey'] as Map).cast<String, dynamic>()),
    );
  }
}
