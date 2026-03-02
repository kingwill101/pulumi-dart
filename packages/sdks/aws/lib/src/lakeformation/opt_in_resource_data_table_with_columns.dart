// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opt_in_resource_data_table_with_columns_column_wildcard.dart';

class OptInResourceDataTableWithColumns {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;
  /// List of column names for the table. At least one of ColumnNames or ColumnWildcard is required.
  final pulumi.Input<List<String>>? columnNames;
  /// Wildcard specified by a ColumnWildcard object. At least one of ColumnNames or ColumnWildcard is required.
  final pulumi.Input<OptInResourceDataTableWithColumnsColumnWildcard>? columnWildcard;
  /// The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
  final pulumi.Input<String> databaseName;
  /// Name of the table.
  final pulumi.Input<String> name;

  /// Creates a new [OptInResourceDataTableWithColumns].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [columnNames] List of column names for the table. At least one of ColumnNames or ColumnWildcard is required.
  /// [columnWildcard] Wildcard specified by a ColumnWildcard object. At least one of ColumnNames or ColumnWildcard is required.
  /// [databaseName] The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
  /// [name] Name of the table.
  OptInResourceDataTableWithColumns({
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
      catalogId: map['catalogId'] == null ? null : ((map['catalogId'] as String).input()).input(),
      columnNames: map['columnNames'] == null ? null : (((map['columnNames'] as List).cast<String>()).input()).input(),
      columnWildcard: map['columnWildcard'] == null ? null : ((OptInResourceDataTableWithColumnsColumnWildcard.fromMap((map['columnWildcard']! as Map).cast<String, dynamic>())).input()).input(),
      databaseName: (map['databaseName'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

