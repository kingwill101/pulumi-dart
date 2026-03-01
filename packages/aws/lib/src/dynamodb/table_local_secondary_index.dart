// ignore_for_file: unused_element, unnecessary_cast


class TableLocalSecondaryIndex {
  /// Name of the index
  final String name;
  /// Only required with `INCLUDE` as a projection type; a list of attributes to project into the index. These do not need to be defined as attributes on the table.
  final List<String>? nonKeyAttributes;
  /// One of `ALL`, `INCLUDE` or `KEYS_ONLY` where `ALL` projects every attribute into the index, `KEYS_ONLY` projects  into the index only the table and index hash_key and sort_key attributes ,  `INCLUDE` projects into the index all of the attributes that are defined in `non_key_attributes` in addition to the attributes that that`KEYS_ONLY` project.
  final String projectionType;
  /// Name of the range key.
  final String rangeKey;

  /// Creates a new [TableLocalSecondaryIndex].
  /// [name] Name of the index
  /// [nonKeyAttributes] Only required with `INCLUDE` as a projection type; a list of attributes to project into the index. These do not need to be defined as attributes on the table.
  /// [projectionType] One of `ALL`, `INCLUDE` or `KEYS_ONLY` where `ALL` projects every attribute into the index, `KEYS_ONLY` projects  into the index only the table and index hash_key and sort_key attributes ,  `INCLUDE` projects into the index all of the attributes that are defined in `non_key_attributes` in addition to the attributes that that`KEYS_ONLY` project.
  /// [rangeKey] Name of the range key.
  TableLocalSecondaryIndex({
    required this.name,
    this.nonKeyAttributes,
    required this.projectionType,
    required this.rangeKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'nonKeyAttributes': ?nonKeyAttributes,
      'projectionType': projectionType,
      'rangeKey': rangeKey,
    };
  }

  factory TableLocalSecondaryIndex.fromMap(Map<String, dynamic> map) {
    return TableLocalSecondaryIndex(
      name: map['name'] as String,
      nonKeyAttributes: map['nonKeyAttributes'] == null ? null : (map['nonKeyAttributes'] as List).cast<String>(),
      projectionType: map['projectionType'] as String,
      rangeKey: map['rangeKey'] as String,
    );
  }
}

