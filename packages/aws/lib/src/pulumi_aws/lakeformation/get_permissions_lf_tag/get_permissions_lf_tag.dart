// ignore_for_file: unused_element, unnecessary_cast

class GetPermissionsLfTag {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String catalogId;

  /// Key-name for the tag.
  final String key;

  /// List of possible values an attribute can take.
  ///
  /// The following argument is optional:
  final List<String> values;

  GetPermissionsLfTag({
    required this.catalogId,
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory GetPermissionsLfTag.fromMap(Map<String, dynamic> map) {
    return GetPermissionsLfTag(
      catalogId: map['catalogId'] as String,
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
