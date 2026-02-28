// ignore_for_file: unused_element, unnecessary_cast

class OptInResourceDataDatabase {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// Name of the table.
  final String name;

  /// Creates a new [OptInResourceDataDatabase].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [name] Name of the table.
  OptInResourceDataDatabase({
    this.catalogId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['name'] = name;
    return map;
  }

  factory OptInResourceDataDatabase.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataDatabase(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      name: map['name'] as String,
    );
  }
}
