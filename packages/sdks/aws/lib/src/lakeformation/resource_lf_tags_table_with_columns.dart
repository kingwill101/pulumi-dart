// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceLfTagsTableWithColumns {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final pulumi.Input<String?>? catalogId;
  /// Set of column names for the table.
  final pulumi.Input<List<String>?>? columnNames;
  /// Name of the database for the table with columns resource. Unique to the Data Catalog.
  final pulumi.Input<String> databaseName;
  /// Set of column names for the table to exclude. If `excludedColumnNames` is included, `wildcard` must be set to `true` to avoid the provider reporting a difference.
  final pulumi.Input<List<String>?>? excludedColumnNames;
  /// Name of the table resource.
  final pulumi.Input<String> name;
  /// Whether to use a column wildcard. If `excludedColumnNames` is included, `wildcard` must be set to `true` to avoid the provider reporting a difference.
  ///
  /// The following arguments are optional:
  final pulumi.Input<bool?>? wildcard;

  /// Creates a new [ResourceLfTagsTableWithColumns].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [columnNames] Set of column names for the table.
  /// [databaseName] Name of the database for the table with columns resource. Unique to the Data Catalog.
  /// [excludedColumnNames] Set of column names for the table to exclude. If `excludedColumnNames` is included, `wildcard` must be set to `true` to avoid the provider reporting a difference.
  /// [name] Name of the table resource.
  /// [wildcard] Whether to use a column wildcard. If `excludedColumnNames` is included, `wildcard` must be set to `true` to avoid the provider reporting a difference.
  const ResourceLfTagsTableWithColumns({
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
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      columnNames: (() { final guardedValue = map['columnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      excludedColumnNames: (() { final guardedValue = map['excludedColumnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      wildcard: (() { final guardedValue = map['wildcard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
