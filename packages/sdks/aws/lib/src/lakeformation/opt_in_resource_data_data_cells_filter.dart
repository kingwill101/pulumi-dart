// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInResourceDataDataCellsFilter {
  /// The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
  final pulumi.Input<String>? databaseName;

  /// Name of the table.
  final pulumi.Input<String>? name;

  /// ID of the catalog to which the table belongs.
  final pulumi.Input<String>? tableCatalogId;

  /// Name of the table.
  final pulumi.Input<String>? tableName;

  /// Creates a new [OptInResourceDataDataCellsFilter].
  /// [databaseName] The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
  /// [name] Name of the table.
  /// [tableCatalogId] ID of the catalog to which the table belongs.
  /// [tableName] Name of the table.
  OptInResourceDataDataCellsFilter({
    this.databaseName,
    this.name,
    this.tableCatalogId,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'name': ?name,
      'tableCatalogId': ?tableCatalogId,
      'tableName': ?tableName,
    };
  }

  factory OptInResourceDataDataCellsFilter.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataDataCellsFilter(
      databaseName: (() {
        final guardedValue = map['databaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tableCatalogId: (() {
        final guardedValue = map['tableCatalogId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tableName: (() {
        final guardedValue = map['tableName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
