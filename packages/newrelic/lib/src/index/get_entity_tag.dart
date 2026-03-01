// ignore_for_file: unused_element, unnecessary_cast


class GetEntityTag {
  /// The tag key.
  final String key;
  /// The tag value.
  final String value;

  /// Creates a new [GetEntityTag].
  /// [key] The tag key.
  /// [value] The tag value.
  GetEntityTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetEntityTag.fromMap(Map<String, dynamic> map) {
    return GetEntityTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

