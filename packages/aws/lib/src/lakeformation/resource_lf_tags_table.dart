// ignore_for_file: unused_element, unnecessary_cast

class ResourceLfTagsTable {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// Name of the database for the table. Unique to a Data Catalog.
  final String databaseName;

  /// Name of the table.
  final String? name;

  /// Whether to use a wildcard representing every table under a database. Defaults to `false`.
  ///
  /// The following arguments are optional:
  final bool? wildcard;

  /// Creates a new [ResourceLfTagsTable].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [databaseName] Name of the database for the table. Unique to a Data Catalog.
  /// [name] Name of the table.
  /// [wildcard] Whether to use a wildcard representing every table under a database. Defaults to `false`.
  ResourceLfTagsTable({
    this.catalogId,
    required this.databaseName,
    this.name,
    this.wildcard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'databaseName': databaseName,
      'name': ?name,
      'wildcard': ?wildcard,
    };
  }

  factory ResourceLfTagsTable.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagsTable(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      databaseName: map['databaseName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      wildcard: map['wildcard'] == null ? null : map['wildcard'] as bool,
    );
  }
}
