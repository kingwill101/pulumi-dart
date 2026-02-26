// ignore_for_file: unused_element, unnecessary_cast

class PermissionsTable {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// Name of the database for the table. Unique to a Data Catalog.
  final String databaseName;

  /// Name of the table.
  final String? name;

  /// Whether to use a wildcard representing every table under a database. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  ///
  /// The following arguments are optional:
  final bool? wildcard;

  PermissionsTable({
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

  factory PermissionsTable.fromMap(Map<String, dynamic> map) {
    return PermissionsTable(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      databaseName: map['databaseName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      wildcard: map['wildcard'] == null ? null : map['wildcard'] as bool,
    );
  }
}
