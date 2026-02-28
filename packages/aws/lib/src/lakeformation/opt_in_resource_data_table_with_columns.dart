// ignore_for_file: unused_element, unnecessary_cast

import 'opt_in_resource_data_table_with_columns_column_wildcard.dart';

class OptInResourceDataTableWithColumns {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// List of column names for the table. At least one of ColumnNames or ColumnWildcard is required.
  final List<String>? columnNames;

  /// Wildcard specified by a ColumnWildcard object. At least one of ColumnNames or ColumnWildcard is required.
  final OptInResourceDataTableWithColumnsColumnWildcard? columnWildcard;

  /// The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
  final String databaseName;

  /// Name of the table.
  final String name;

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
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    final columnNamesValue = columnNames;
    if (columnNamesValue != null) {
      map['columnNames'] = columnNamesValue;
    }
    final columnWildcardValue = columnWildcard;
    if (columnWildcardValue != null) {
      map['columnWildcard'] = columnWildcardValue.toMap();
    }
    map['databaseName'] = databaseName;
    map['name'] = name;
    return map;
  }

  factory OptInResourceDataTableWithColumns.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataTableWithColumns(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      columnNames: map['columnNames'] == null
          ? null
          : (map['columnNames'] as List).cast<String>(),
      columnWildcard: map['columnWildcard'] == null
          ? null
          : OptInResourceDataTableWithColumnsColumnWildcard.fromMap(
              (map['columnWildcard'] as Map).cast<String, dynamic>()),
      databaseName: map['databaseName'] as String,
      name: map['name'] as String,
    );
  }
}
