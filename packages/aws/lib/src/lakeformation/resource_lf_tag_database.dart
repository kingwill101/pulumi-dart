// ignore_for_file: unused_element, unnecessary_cast


class ResourceLfTagDatabase {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;
  /// Name of the database resource. Unique to the Data Catalog.
  ///
  /// The following argument is optional:
  final String name;

  /// Creates a new [ResourceLfTagDatabase].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [name] Name of the database resource. Unique to the Data Catalog.
  ResourceLfTagDatabase({
    this.catalogId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'name': name,
    };
  }

  factory ResourceLfTagDatabase.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagDatabase(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      name: map['name'] as String,
    );
  }
}

