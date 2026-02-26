// ignore_for_file: unused_element, unnecessary_cast

class ResourceLfTagTableWithColumnsColumnWildcard {
  /// Set of column names for the table to exclude. If <span pulumi-lang-nodejs="`excludedColumnNames`" pulumi-lang-dotnet="`ExcludedColumnNames`" pulumi-lang-go="`excludedColumnNames`" pulumi-lang-python="`excluded_column_names`" pulumi-lang-yaml="`excludedColumnNames`" pulumi-lang-java="`excludedColumnNames`">`excluded_column_names`</span> is included, <span pulumi-lang-nodejs="`wildcard`" pulumi-lang-dotnet="`Wildcard`" pulumi-lang-go="`wildcard`" pulumi-lang-python="`wildcard`" pulumi-lang-yaml="`wildcard`" pulumi-lang-java="`wildcard`">`wildcard`</span> must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to avoid Terraform reporting a difference.
  final List<String>? excludedColumnNames;

  ResourceLfTagTableWithColumnsColumnWildcard({
    this.excludedColumnNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludedColumnNamesValue = excludedColumnNames;
    if (excludedColumnNamesValue != null) {
      map['excludedColumnNames'] = excludedColumnNamesValue;
    }
    return map;
  }

  factory ResourceLfTagTableWithColumnsColumnWildcard.fromMap(
      Map<String, dynamic> map) {
    return ResourceLfTagTableWithColumnsColumnWildcard(
      excludedColumnNames: map['excludedColumnNames'] == null
          ? null
          : (map['excludedColumnNames'] as List).cast<String>(),
    );
  }
}
