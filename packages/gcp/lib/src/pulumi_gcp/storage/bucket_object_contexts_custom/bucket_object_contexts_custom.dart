// ignore_for_file: unused_element, unnecessary_cast

class BucketObjectContextsCustom {
  /// The time when context was first added to the storage object in RFC 3399 format.
  final String? createTime;

  /// An individual object context. Context keys and their corresponding values must start with an alphanumeric character.
  final String key;

  /// The time when context was last updated in RFC 3399 format.
  ///
  /// <a name>
  final String? updateTime;

  /// The value associated with this context. This field holds the primary information for the given context key.
  final String value;

  BucketObjectContextsCustom({
    this.createTime,
    required this.key,
    this.updateTime,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    map['key'] = key;
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    map['value'] = value;
    return map;
  }

  factory BucketObjectContextsCustom.fromMap(Map<String, dynamic> map) {
    return BucketObjectContextsCustom(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      key: map['key'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
      value: map['value'] as String,
    );
  }
}
