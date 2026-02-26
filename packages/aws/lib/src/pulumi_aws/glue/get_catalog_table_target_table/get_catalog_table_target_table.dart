// ignore_for_file: unused_element, unnecessary_cast

class GetCatalogTableTargetTable {
  /// ID of the Glue Catalog and database where the table metadata resides. If omitted, this defaults to the current AWS Account ID.
  final String catalogId;

  /// Name of the metadata database where the table metadata resides.
  final String databaseName;

  /// Name of the table.
  final String name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String region;

  GetCatalogTableTargetTable({
    required this.catalogId,
    required this.databaseName,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['databaseName'] = databaseName;
    map['name'] = name;
    map['region'] = region;
    return map;
  }

  factory GetCatalogTableTargetTable.fromMap(Map<String, dynamic> map) {
    return GetCatalogTableTargetTable(
      catalogId: map['catalogId'] as String,
      databaseName: map['databaseName'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}
