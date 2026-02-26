// ignore_for_file: unused_element, unnecessary_cast

class ResourceLfTagsLfTag {
  /// Identifier for the Data Catalog. By default, it is the account ID of the caller.
  final String? catalogId;

  /// Key name for an existing LF-tag.
  final String key;

  /// Value from the possible values for the LF-tag.
  ///
  /// The following argument is optional:
  final String value;

  ResourceLfTagsLfTag({
    this.catalogId,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory ResourceLfTagsLfTag.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagsLfTag(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
