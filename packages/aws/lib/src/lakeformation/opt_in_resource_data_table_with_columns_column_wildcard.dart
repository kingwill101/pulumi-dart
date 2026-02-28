// ignore_for_file: unused_element, unnecessary_cast

class OptInResourceDataTableWithColumnsColumnWildcard {
  final List<String>? excludedColumnNames;

  /// Creates a new [OptInResourceDataTableWithColumnsColumnWildcard].
  /// [excludedColumnNames] Optional.
  OptInResourceDataTableWithColumnsColumnWildcard({
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

  factory OptInResourceDataTableWithColumnsColumnWildcard.fromMap(
      Map<String, dynamic> map) {
    return OptInResourceDataTableWithColumnsColumnWildcard(
      excludedColumnNames: map['excludedColumnNames'] == null
          ? null
          : (map['excludedColumnNames'] as List).cast<String>(),
    );
  }
}
