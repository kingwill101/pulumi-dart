// ignore_for_file: unused_element, unnecessary_cast

class OptInResourceDataLfTagExpression {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// Name of the table.
  final String name;

  OptInResourceDataLfTagExpression({
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

  factory OptInResourceDataLfTagExpression.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataLfTagExpression(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      name: map['name'] as String,
    );
  }
}
