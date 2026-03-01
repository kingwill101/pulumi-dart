// ignore_for_file: unused_element, unnecessary_cast


/// Tag
class TagInfoResponse {
  /// tag name
  final String key;
  /// tag value
  final String value;

  /// Creates a new [TagInfoResponse].
  /// [key] tag name
  /// [value] tag value
  TagInfoResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory TagInfoResponse.fromMap(Map<String, dynamic> map) {
    return TagInfoResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

