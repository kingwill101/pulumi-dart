// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PermissionsTableWithColumns {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String>? catalogId;
  /// Set of column names for the table.
  final pulumi.Input<List<String>>? columnNames;
  /// Name of the database for the table with columns resource. Unique to the Data Catalog.
  final pulumi.Input<String> databaseName;
  /// Set of column names for the table to exclude. If `excluded_column_names` is included, `wildcard` must be set to `true` to avoid the provider reporting a difference.
  final pulumi.Input<List<String>>? excludedColumnNames;
  /// Name of the table resource.
  final pulumi.Input<String> name;
  /// Whether to use a column wildcard. If `excluded_column_names` is included, `wildcard` must be set to `true` to avoid the provider reporting a difference.
  ///
  /// The following arguments are optional:
  final pulumi.Input<bool>? wildcard;

  /// Creates a new [PermissionsTableWithColumns].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [columnNames] Set of column names for the table.
  /// [databaseName] Name of the database for the table with columns resource. Unique to the Data Catalog.
  /// [excludedColumnNames] Set of column names for the table to exclude. If `excluded_column_names` is included, `wildcard` must be set to `true` to avoid the provider reporting a difference.
  /// [name] Name of the table resource.
  /// [wildcard] Whether to use a column wildcard. If `excluded_column_names` is included, `wildcard` must be set to `true` to avoid the provider reporting a difference.
  PermissionsTableWithColumns({
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

  factory PermissionsTableWithColumns.fromMap(Map<String, dynamic> map) {
    return PermissionsTableWithColumns(
      catalogId: map['catalogId'] == null ? null : ((map['catalogId'] as String).input()).input(),
      columnNames: map['columnNames'] == null ? null : (((map['columnNames'] as List).cast<String>()).input()).input(),
      databaseName: (map['databaseName'] as String).input(),
      excludedColumnNames: map['excludedColumnNames'] == null ? null : (((map['excludedColumnNames'] as List).cast<String>()).input()).input(),
      name: (map['name'] as String).input(),
      wildcard: map['wildcard'] == null ? null : ((map['wildcard'] as bool).input()).input(),
    );
  }
}

