// ignore_for_file: unused_element, unnecessary_cast

class CatalogDatabaseTargetDatabase {
  /// ID of the Data Catalog in which the database resides.
  final String catalogId;

  /// Name of the catalog database.
  final String databaseName;

  /// Region of the target database.
  final String? region;

  /// Creates a new [CatalogDatabaseTargetDatabase].
  /// [catalogId] ID of the Data Catalog in which the database resides.
  /// [databaseName] Name of the catalog database.
  /// [region] Region of the target database.
  CatalogDatabaseTargetDatabase({
    required this.catalogId,
    required this.databaseName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'databaseName': databaseName,
      'region': ?region,
    };
  }

  factory CatalogDatabaseTargetDatabase.fromMap(Map<String, dynamic> map) {
    return CatalogDatabaseTargetDatabase(
      catalogId: map['catalogId'] as String,
      databaseName: map['databaseName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
