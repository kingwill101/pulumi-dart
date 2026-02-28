// ignore_for_file: unused_element, unnecessary_cast

class GetPermissionsTableWithColumns {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String catalogId;

  /// Set of column names for the table. At least one of `column_names` or `excluded_column_names` is required.
  final List<String>? columnNames;

  /// Name of the database for the table with columns resource. Unique to the Data Catalog.
  final String databaseName;

  /// Set of column names for the table to exclude. At least one of `column_names` or `excluded_column_names` is required.
  final List<String>? excludedColumnNames;

  /// Name of the table resource.
  ///
  /// The following arguments are optional:
  final String name;

  /// Whether to use a wildcard representing every table under a database. At least one of `name` or `wildcard` is required. Defaults to `false`.
  final bool? wildcard;

  /// Creates a new [GetPermissionsTableWithColumns].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [columnNames] Set of column names for the table. At least one of `column_names` or `excluded_column_names` is required.
  /// [databaseName] Name of the database for the table with columns resource. Unique to the Data Catalog.
  /// [excludedColumnNames] Set of column names for the table to exclude. At least one of `column_names` or `excluded_column_names` is required.
  /// [name] Name of the table resource.
  /// [wildcard] Whether to use a wildcard representing every table under a database. At least one of `name` or `wildcard` is required. Defaults to `false`.
  GetPermissionsTableWithColumns({
    required this.catalogId,
    this.columnNames,
    required this.databaseName,
    this.excludedColumnNames,
    required this.name,
    this.wildcard,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    final columnNamesValue = columnNames;
    if (columnNamesValue != null) {
      map['columnNames'] = columnNamesValue;
    }
    map['databaseName'] = databaseName;
    final excludedColumnNamesValue = excludedColumnNames;
    if (excludedColumnNamesValue != null) {
      map['excludedColumnNames'] = excludedColumnNamesValue;
    }
    map['name'] = name;
    final wildcardValue = wildcard;
    if (wildcardValue != null) {
      map['wildcard'] = wildcardValue;
    }
    return map;
  }

  factory GetPermissionsTableWithColumns.fromMap(Map<String, dynamic> map) {
    return GetPermissionsTableWithColumns(
      catalogId: map['catalogId'] as String,
      columnNames: map['columnNames'] == null
          ? null
          : (map['columnNames'] as List).cast<String>(),
      databaseName: map['databaseName'] as String,
      excludedColumnNames: map['excludedColumnNames'] == null
          ? null
          : (map['excludedColumnNames'] as List).cast<String>(),
      name: map['name'] as String,
      wildcard: map['wildcard'] == null ? null : map['wildcard'] as bool,
    );
  }
}
