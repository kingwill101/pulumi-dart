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

  /// Creates a new [ResourceLfTagsLfTag].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [key] Key name for an existing LF-tag.
  /// [value] Value from the possible values for the LF-tag.
  ResourceLfTagsLfTag({
    this.catalogId,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'key': key,
      'value': value,
    };
  }

  factory ResourceLfTagsLfTag.fromMap(Map<String, dynamic> map) {
    return ResourceLfTagsLfTag(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

