// ignore_for_file: unused_element, unnecessary_cast


class GetPermissionsTable {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String catalogId;
  /// Name of the database for the table. Unique to a Data Catalog.
  ///
  /// The following arguments are optional:
  final String databaseName;
  /// Name of the table. At least one of `name` or `wildcard` is required.
  final String name;
  /// Whether to use a wildcard representing every table under a database. At least one of `name` or `wildcard` is required. Defaults to `false`.
  final bool? wildcard;

  /// Creates a new [GetPermissionsTable].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [databaseName] Name of the database for the table. Unique to a Data Catalog.
  /// [name] Name of the table. At least one of `name` or `wildcard` is required.
  /// [wildcard] Whether to use a wildcard representing every table under a database. At least one of `name` or `wildcard` is required. Defaults to `false`.
  GetPermissionsTable({
    required this.catalogId,
    required this.databaseName,
    required this.name,
    this.wildcard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'databaseName': databaseName,
      'name': name,
      'wildcard': ?wildcard,
    };
  }

  factory GetPermissionsTable.fromMap(Map<String, dynamic> map) {
    return GetPermissionsTable(
      catalogId: map['catalogId'] as String,
      databaseName: map['databaseName'] as String,
      name: map['name'] as String,
      wildcard: map['wildcard'] == null ? null : map['wildcard'] as bool,
    );
  }
}

