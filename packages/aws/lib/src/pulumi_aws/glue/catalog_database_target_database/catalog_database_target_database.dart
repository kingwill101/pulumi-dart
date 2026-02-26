// ignore_for_file: unused_element, unnecessary_cast

class CatalogDatabaseTargetDatabase {
  /// ID of the Data Catalog in which the database resides.
  final String catalogId;

  /// Name of the catalog database.
  final String databaseName;

  /// Region of the target database.
  final String? region;

  CatalogDatabaseTargetDatabase({
    required this.catalogId,
    required this.databaseName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['databaseName'] = databaseName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory CatalogDatabaseTargetDatabase.fromMap(Map<String, dynamic> map) {
    return CatalogDatabaseTargetDatabase(
      catalogId: map['catalogId'] as String,
      databaseName: map['databaseName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
