// ignore_for_file: unused_element, unnecessary_cast

class CatalogTableTargetTable {
  /// ID of the Data Catalog in which the table resides.
  final String catalogId;

  /// Name of the catalog database that contains the target table.
  final String databaseName;

  /// Name of the target table.
  final String name;

  /// Region of the target table.
  final String? region;

  CatalogTableTargetTable({
    required this.catalogId,
    required this.databaseName,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['databaseName'] = databaseName;
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory CatalogTableTargetTable.fromMap(Map<String, dynamic> map) {
    return CatalogTableTargetTable(
      catalogId: map['catalogId'] as String,
      databaseName: map['databaseName'] as String,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
