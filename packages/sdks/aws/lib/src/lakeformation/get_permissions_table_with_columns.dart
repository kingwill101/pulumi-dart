// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPermissionsTableWithColumns {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String> catalogId;

  /// Set of column names for the table. At least one of `column_names` or `excluded_column_names` is required.
  final pulumi.Input<List<String>>? columnNames;

  /// Name of the database for the table with columns resource. Unique to the Data Catalog.
  final pulumi.Input<String> databaseName;

  /// Set of column names for the table to exclude. At least one of `column_names` or `excluded_column_names` is required.
  final pulumi.Input<List<String>>? excludedColumnNames;

  /// Name of the table resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;

  /// Whether to use a wildcard representing every table under a database. At least one of `name` or `wildcard` is required. Defaults to `false`.
  final pulumi.Input<bool>? wildcard;

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
    return <String, dynamic>{
      'catalogId': catalogId,
      'columnNames': ?columnNames,
      'databaseName': databaseName,
      'excludedColumnNames': ?excludedColumnNames,
      'name': name,
      'wildcard': ?wildcard,
    };
  }

  factory GetPermissionsTableWithColumns.fromMap(Map<String, dynamic> map) {
    return GetPermissionsTableWithColumns(
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      columnNames: (() {
        final guardedValue = map['columnNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      excludedColumnNames: (() {
        final guardedValue = map['excludedColumnNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      wildcard: (() {
        final guardedValue = map['wildcard'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
