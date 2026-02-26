// ignore_for_file: unused_element, unnecessary_cast

class ResourceLfTagDatabase {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// Name of the database resource. Unique to the Data Catalog.
  ///
  /// The following argument is optional:
  final String name;

  ResourceLfTagDatabase({
    this.catalogId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['name'] = name;
    return map;
  }

  factory ResourceLfTagDatabase.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagDatabase(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      name: map['name'] as String,
    );
  }
}
