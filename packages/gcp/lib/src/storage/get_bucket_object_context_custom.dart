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

  /// Creates a new [GetBucketObjectContextCustom].
  /// [createTime] The time when context was first added to the storage#object in RFC 3339 format.
  /// [key] An individual object context. Context keys and their corresponding values must start with an alphanumeric character.
  /// [updateTime] The time when context was last updated in RFC 3339 format.
  /// [value] The value associated with this context. This field holds the primary information for the given context key.
  GetBucketObjectContextCustom({
    required this.createTime,
    required this.key,
    required this.updateTime,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'key': key,
      'updateTime': updateTime,
      'value': value,
    };
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

