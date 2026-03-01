// ignore_for_file: unused_element, unnecessary_cast


class PermissionsDatabase {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;
  /// Name of the database resource. Unique to the Data Catalog.
  ///
  /// The following argument is optional:
  final String name;

  /// Creates a new [PermissionsDatabase].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [name] Name of the database resource. Unique to the Data Catalog.
  PermissionsDatabase({
    this.catalogId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'name': name,
    };
  }

  factory PermissionsDatabase.fromMap(Map<String, dynamic> map) {
    return PermissionsDatabase(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      name: map['name'] as String,
    );
  }
}

