// ignore_for_file: unused_element, unnecessary_cast

class GetPermissionsTableWithColumns {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String catalogId;

  /// Set of column names for the table. At least one of <span pulumi-lang-nodejs="`columnNames`" pulumi-lang-dotnet="`ColumnNames`" pulumi-lang-go="`columnNames`" pulumi-lang-python="`column_names`" pulumi-lang-yaml="`columnNames`" pulumi-lang-java="`columnNames`">`column_names`</span> or <span pulumi-lang-nodejs="`excludedColumnNames`" pulumi-lang-dotnet="`ExcludedColumnNames`" pulumi-lang-go="`excludedColumnNames`" pulumi-lang-python="`excluded_column_names`" pulumi-lang-yaml="`excludedColumnNames`" pulumi-lang-java="`excludedColumnNames`">`excluded_column_names`</span> is required.
  final List<String>? columnNames;

  /// Name of the database for the table with columns resource. Unique to the Data Catalog.
  final String databaseName;

  /// Set of column names for the table to exclude. At least one of <span pulumi-lang-nodejs="`columnNames`" pulumi-lang-dotnet="`ColumnNames`" pulumi-lang-go="`columnNames`" pulumi-lang-python="`column_names`" pulumi-lang-yaml="`columnNames`" pulumi-lang-java="`columnNames`">`column_names`</span> or <span pulumi-lang-nodejs="`excludedColumnNames`" pulumi-lang-dotnet="`ExcludedColumnNames`" pulumi-lang-go="`excludedColumnNames`" pulumi-lang-python="`excluded_column_names`" pulumi-lang-yaml="`excludedColumnNames`" pulumi-lang-java="`excludedColumnNames`">`excluded_column_names`</span> is required.
  final List<String>? excludedColumnNames;

  /// Name of the table resource.
  ///
  /// The following arguments are optional:
  final String name;

  /// Whether to use a wildcard representing every table under a database. At least one of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`wildcard`" pulumi-lang-dotnet="`Wildcard`" pulumi-lang-go="`wildcard`" pulumi-lang-python="`wildcard`" pulumi-lang-yaml="`wildcard`" pulumi-lang-java="`wildcard`">`wildcard`</span> is required. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? wildcard;

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
