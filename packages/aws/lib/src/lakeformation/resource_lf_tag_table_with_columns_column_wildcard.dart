// ignore_for_file: unused_element, unnecessary_cast

class ResourceLfTagTableWithColumnsColumnWildcard {
  /// Set of column names for the table to exclude. If `excluded_column_names` is included, `wildcard` must be set to `true` to avoid Terraform reporting a difference.
  final List<String>? excludedColumnNames;

  /// Creates a new [ResourceLfTagTableWithColumnsColumnWildcard].
  /// [excludedColumnNames] Set of column names for the table to exclude. If `excluded_column_names` is included, `wildcard` must be set to `true` to avoid Terraform reporting a difference.
  ResourceLfTagTableWithColumnsColumnWildcard({this.excludedColumnNames});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'excludedColumnNames': ?excludedColumnNames};
  }

  factory ResourceLfTagTableWithColumnsColumnWildcard.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceLfTagTableWithColumnsColumnWildcard(
      excludedColumnNames: map['excludedColumnNames'] == null
          ? null
          : (map['excludedColumnNames'] as List).cast<String>(),
    );
  }
}
