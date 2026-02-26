// ignore_for_file: unused_element, unnecessary_cast

class GetPermissionsDatabase {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String catalogId;

  /// Name of the database resource. Unique to the Data Catalog.
  ///
  /// The following argument is optional:
  final String name;

  GetPermissionsDatabase({
    required this.catalogId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['name'] = name;
    return map;
  }

  factory GetPermissionsDatabase.fromMap(Map<String, dynamic> map) {
    return GetPermissionsDatabase(
      catalogId: map['catalogId'] as String,
      name: map['name'] as String,
    );
  }
}
