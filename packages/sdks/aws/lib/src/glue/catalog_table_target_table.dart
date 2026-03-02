// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CatalogTableTargetTable {
  /// ID of the Data Catalog in which the table resides.
  final pulumi.Input<String> catalogId;
  /// Name of the catalog database that contains the target table.
  final pulumi.Input<String> databaseName;
  /// Name of the target table.
  final pulumi.Input<String> name;
  /// Region of the target table.
  final pulumi.Input<String>? region;

  /// Creates a new [CatalogTableTargetTable].
  /// [catalogId] ID of the Data Catalog in which the table resides.
  /// [databaseName] Name of the catalog database that contains the target table.
  /// [name] Name of the target table.
  /// [region] Region of the target table.
  CatalogTableTargetTable({
    required this.catalogId,
    required this.databaseName,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'databaseName': databaseName,
      'name': name,
      'region': ?region,
    };
  }

  factory CatalogTableTargetTable.fromMap(Map<String, dynamic> map) {
    return CatalogTableTargetTable(
      catalogId: (map['catalogId'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

