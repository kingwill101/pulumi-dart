// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInResourceDataDataCellsFilter {
  /// Database in the Glue Data Catalog.
  final pulumi.Input<String?>? databaseName;
  /// Name of the data cells filter.
  final pulumi.Input<String?>? name;
  /// ID of the catalog to which the table belongs.
  final pulumi.Input<String?>? tableCatalogId;
  /// Name of the table.
  final pulumi.Input<String?>? tableName;

  /// Creates a new [OptInResourceDataDataCellsFilter].
  /// [databaseName] Database in the Glue Data Catalog.
  /// [name] Name of the data cells filter.
  /// [tableCatalogId] ID of the catalog to which the table belongs.
  /// [tableName] Name of the table.
  const OptInResourceDataDataCellsFilter({
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
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableCatalogId: (() { final guardedValue = map['tableCatalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
