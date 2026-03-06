// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PermissionsDataCellsFilter {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the data cells filter.
  final pulumi.Input<String> name;
  /// The ID of the Data Catalog.
  final pulumi.Input<String> tableCatalogId;
  /// The name of the table.
  final pulumi.Input<String> tableName;

  /// Creates a new [PermissionsDataCellsFilter].
  /// [databaseName] The name of the database.
  /// [name] The name of the data cells filter.
  /// [tableCatalogId] The ID of the Data Catalog.
  /// [tableName] The name of the table.
  const PermissionsDataCellsFilter({
    required this.databaseName,
    required this.name,
    required this.tableCatalogId,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'name': name,
      'tableCatalogId': tableCatalogId,
      'tableName': tableName,
    };
  }

  factory PermissionsDataCellsFilter.fromMap(Map<String, dynamic> map) {
    return PermissionsDataCellsFilter(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      tableCatalogId: pulumi.Input.fromValue(map['tableCatalogId'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}

