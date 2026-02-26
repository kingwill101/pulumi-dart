// ignore_for_file: unused_element, unnecessary_cast

/// Tag is an AWS tag representation.
class TagResponse {
  /// Key of tag.
  final String key;

  /// Value of tag.
  final String value;

  TagResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory TagResponse.fromMap(Map<String, dynamic> map) {
    return TagResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
