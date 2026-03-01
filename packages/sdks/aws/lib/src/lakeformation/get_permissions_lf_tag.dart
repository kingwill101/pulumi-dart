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

  /// Creates a new [GetPermissionsLfTag].
  /// [catalogId] Identifier for the Data Catalog. By default, it is the account ID of the caller.
  /// [key] Key-name for the tag.
  /// [values] List of possible values an attribute can take.
  GetPermissionsLfTag({
    required this.catalogId,
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'key': key,
      'values': values,
    };
  }

  factory GetPermissionsLfTag.fromMap(Map<String, dynamic> map) {
    return GetPermissionsLfTag(
      catalogId: map['catalogId'] as String,
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

