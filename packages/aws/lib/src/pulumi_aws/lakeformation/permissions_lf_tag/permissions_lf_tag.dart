// ignore_for_file: unused_element, unnecessary_cast

class PermissionsLfTag {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// The key-name for the tag.
  final String key;

  /// A list of possible values an attribute can take.
  ///
  /// The following argument is optional:
  final List<String> values;

  PermissionsLfTag({
    this.catalogId,
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory PermissionsLfTag.fromMap(Map<String, dynamic> map) {
    return PermissionsLfTag(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
