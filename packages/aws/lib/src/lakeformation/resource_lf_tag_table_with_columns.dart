// ignore_for_file: unused_element, unnecessary_cast

import 'resource_lf_tag_table_with_columns_column_wildcard.dart';

class ResourceLfTagTableWithColumns {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// Set of column names for the table.
  final List<String>? columnNames;

  /// Option to add column wildcard. See Column Wildcard for more details.
  final ResourceLfTagTableWithColumnsColumnWildcard? columnWildcard;

  /// Name of the database for the table with columns resource. Unique to the Data Catalog.
  final String databaseName;

  /// Name of the table resource.
  ///
  /// The following arguments are optional:
  final String name;

  /// Creates a new [ResourceLfTagTableWithColumns].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [columnNames] Set of column names for the table.
  /// [columnWildcard] Option to add column wildcard. See Column Wildcard for more details.
  /// [databaseName] Name of the database for the table with columns resource. Unique to the Data Catalog.
  /// [name] Name of the table resource.
  ResourceLfTagTableWithColumns({
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

  factory ResourceLfTagTableWithColumns.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagTableWithColumns(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      columnNames: map['columnNames'] == null
          ? null
          : (map['columnNames'] as List).cast<String>(),
      columnWildcard: map['columnWildcard'] == null
          ? null
          : ResourceLfTagTableWithColumnsColumnWildcard.fromMap(
              (map['columnWildcard'] as Map).cast<String, dynamic>()),
      databaseName: map['databaseName'] as String,
      name: map['name'] as String,
    );
  }
}
