// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opt_in_resource_data_table_with_columns_column_wildcard.dart';

class OptInResourceDataTableWithColumns {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;
  /// List of column names for the table. At least one of ColumnNames or ColumnWildcard is required.
  final pulumi.Input<List<String>>? columnNames;
  /// Wildcard specified by a ColumnWildcard object. At least one of ColumnNames or ColumnWildcard is required. See `columnWildcard` Block for more details.
  final pulumi.Input<OptInResourceDataTableWithColumnsColumnWildcard>? columnWildcard;
  /// Name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
  final pulumi.Input<String> databaseName;
  /// Name of the table.
  final pulumi.Input<String> name;

  /// Creates a new [OptInResourceDataTableWithColumns].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [columnNames] List of column names for the table. At least one of ColumnNames or ColumnWildcard is required.
  /// [columnWildcard] Wildcard specified by a ColumnWildcard object. At least one of ColumnNames or ColumnWildcard is required. See `columnWildcard` Block for more details.
  /// [databaseName] Name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
  /// [name] Name of the table.
  const OptInResourceDataTableWithColumns({
    this.catalogId,
    this.columnNames,
    this.columnWildcard,
    required this.databaseName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'columnNames': ?columnNames,
      'columnWildcard': ?pulumi.Input.mapOptionalInputValue<OptInResourceDataTableWithColumnsColumnWildcard, Map<String, dynamic>>(columnWildcard, (value) => value.toMap()),
      'databaseName': databaseName,
      'name': name,
    };
  }

  factory OptInResourceDataTableWithColumns.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataTableWithColumns(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      columnNames: (() { final guardedValue = map['columnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      columnWildcard: (() { final guardedValue = map['columnWildcard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OptInResourceDataTableWithColumnsColumnWildcard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
