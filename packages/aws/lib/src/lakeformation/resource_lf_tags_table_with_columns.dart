// ignore_for_file: unused_element, unnecessary_cast

class ResourceLfTagsTableWithColumns {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// Set of column names for the table.
  final List<String>? columnNames;

  /// Name of the database for the table with columns resource. Unique to the Data Catalog.
  final String databaseName;

  /// Set of column names for the table to exclude. If `excluded_column_names` is included, `wildcard` must be set to `true` to avoid the provider reporting a difference.
  final List<String>? excludedColumnNames;

  /// Name of the table resource.
  final String name;

  /// Whether to use a column wildcard. If `excluded_column_names` is included, `wildcard` must be set to `true` to avoid the provider reporting a difference.
  ///
  /// The following arguments are optional:
  final bool? wildcard;

  /// Creates a new [ResourceLfTagsTableWithColumns].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [columnNames] Set of column names for the table.
  /// [databaseName] Name of the database for the table with columns resource. Unique to the Data Catalog.
  /// [excludedColumnNames] Set of column names for the table to exclude. If `excluded_column_names` is included, `wildcard` must be set to `true` to avoid the provider reporting a difference.
  /// [name] Name of the table resource.
  /// [wildcard] Whether to use a column wildcard. If `excluded_column_names` is included, `wildcard` must be set to `true` to avoid the provider reporting a difference.
  ResourceLfTagsTableWithColumns({
    this.catalogId,
    this.columnNames,
    required this.databaseName,
    this.excludedColumnNames,
    required this.name,
    this.wildcard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'columnNames': ?columnNames,
      'databaseName': databaseName,
      'excludedColumnNames': ?excludedColumnNames,
      'name': name,
      'wildcard': ?wildcard,
    };
  }

  factory ResourceLfTagsTableWithColumns.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagsTableWithColumns(
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
