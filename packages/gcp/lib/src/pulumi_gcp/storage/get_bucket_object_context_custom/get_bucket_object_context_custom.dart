// ignore_for_file: unused_element, unnecessary_cast

class GetBucketObjectContextCustom {
  /// The time when context was first added to the storage#object in RFC 3339 format.
  final String createTime;

  /// An individual object context. Context keys and their corresponding values must start with an alphanumeric character.
  final String key;

  /// The time when context was last updated in RFC 3339 format.
  final String updateTime;

  /// The value associated with this context. This field holds the primary information for the given context key.
  final String value;

  GetBucketObjectContextCustom({
    required this.createTime,
    required this.key,
    required this.updateTime,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['key'] = key;
    map['updateTime'] = updateTime;
    map['value'] = value;
    return map;
  }

  factory GetBucketObjectContextCustom.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContextCustom(
      createTime: map['createTime'] as String,
      key: map['key'] as String,
      updateTime: map['updateTime'] as String,
      value: map['value'] as String,
    );
  }
}
