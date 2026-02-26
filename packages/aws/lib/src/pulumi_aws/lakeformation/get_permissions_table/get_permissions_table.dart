// ignore_for_file: unused_element, unnecessary_cast

class GetPermissionsTable {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String catalogId;

  /// Name of the database for the table. Unique to a Data Catalog.
  ///
  /// The following arguments are optional:
  final String databaseName;

  /// Name of the table. At least one of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`wildcard`" pulumi-lang-dotnet="`Wildcard`" pulumi-lang-go="`wildcard`" pulumi-lang-python="`wildcard`" pulumi-lang-yaml="`wildcard`" pulumi-lang-java="`wildcard`">`wildcard`</span> is required.
  final String name;

  /// Whether to use a wildcard representing every table under a database. At least one of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`wildcard`" pulumi-lang-dotnet="`Wildcard`" pulumi-lang-go="`wildcard`" pulumi-lang-python="`wildcard`" pulumi-lang-yaml="`wildcard`" pulumi-lang-java="`wildcard`">`wildcard`</span> is required. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? wildcard;

  GetPermissionsTable({
    required this.catalogId,
    required this.databaseName,
    required this.name,
    this.wildcard,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['databaseName'] = databaseName;
    map['name'] = name;
    final wildcardValue = wildcard;
    if (wildcardValue != null) {
      map['wildcard'] = wildcardValue;
    }
    return map;
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
