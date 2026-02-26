// ignore_for_file: unused_element, unnecessary_cast

class PermissionsTableWithColumns {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// Set of column names for the table.
  final List<String>? columnNames;

  /// Name of the database for the table with columns resource. Unique to the Data Catalog.
  final String databaseName;

  /// Set of column names for the table to exclude. If <span pulumi-lang-nodejs="`excludedColumnNames`" pulumi-lang-dotnet="`ExcludedColumnNames`" pulumi-lang-go="`excludedColumnNames`" pulumi-lang-python="`excluded_column_names`" pulumi-lang-yaml="`excludedColumnNames`" pulumi-lang-java="`excludedColumnNames`">`excluded_column_names`</span> is included, <span pulumi-lang-nodejs="`wildcard`" pulumi-lang-dotnet="`Wildcard`" pulumi-lang-go="`wildcard`" pulumi-lang-python="`wildcard`" pulumi-lang-yaml="`wildcard`" pulumi-lang-java="`wildcard`">`wildcard`</span> must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to avoid the provider reporting a difference.
  final List<String>? excludedColumnNames;

  /// Name of the table resource.
  final String name;

  /// Whether to use a column wildcard. If <span pulumi-lang-nodejs="`excludedColumnNames`" pulumi-lang-dotnet="`ExcludedColumnNames`" pulumi-lang-go="`excludedColumnNames`" pulumi-lang-python="`excluded_column_names`" pulumi-lang-yaml="`excludedColumnNames`" pulumi-lang-java="`excludedColumnNames`">`excluded_column_names`</span> is included, <span pulumi-lang-nodejs="`wildcard`" pulumi-lang-dotnet="`Wildcard`" pulumi-lang-go="`wildcard`" pulumi-lang-python="`wildcard`" pulumi-lang-yaml="`wildcard`" pulumi-lang-java="`wildcard`">`wildcard`</span> must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to avoid the provider reporting a difference.
  ///
  /// The following arguments are optional:
  final bool? wildcard;

  PermissionsTableWithColumns({
    this.catalogId,
    this.columnNames,
    required this.databaseName,
    this.excludedColumnNames,
    required this.name,
    this.wildcard,
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

  factory PermissionsTableWithColumns.fromMap(Map<String, dynamic> map) {
    return PermissionsTableWithColumns(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
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
