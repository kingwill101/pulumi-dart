// ignore_for_file: unused_element, unnecessary_cast


/// Tag
class TagInfo {
  /// tag name
  final String key;
  /// tag value
  final String value;

  /// Creates a new [TagInfo].
  /// [key] tag name
  /// [value] tag value
  TagInfo({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory TagInfo.fromMap(Map<String, dynamic> map) {
    return TagInfo(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

