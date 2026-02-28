// ignore_for_file: unused_element, unnecessary_cast

class OptInResourceDataTable {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
  final String databaseName;

  /// Name of the table.
  final String? name;

  /// Boolean value that indicates whether to use a wildcard representing every table under the specified database. When set to true, this represents all tables within the specified database. At least one of TableResource$Name or TableResource$Wildcard is required.
  final bool? wildcard;

  /// Creates a new [OptInResourceDataTable].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [databaseName] The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.
  /// [name] Name of the table.
  /// [wildcard] Boolean value that indicates whether to use a wildcard representing every table under the specified database. When set to true, this represents all tables within the specified database. At least one of TableResource$Name or TableResource$Wildcard is required.
  OptInResourceDataTable({
    this.catalogId,
    required this.databaseName,
    this.name,
    this.wildcard,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['databaseName'] = databaseName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final wildcardValue = wildcard;
    if (wildcardValue != null) {
      map['wildcard'] = wildcardValue;
    }
    return map;
  }

  factory OptInResourceDataTable.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataTable(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      databaseName: map['databaseName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      wildcard: map['wildcard'] == null ? null : map['wildcard'] as bool,
    );
  }
}
