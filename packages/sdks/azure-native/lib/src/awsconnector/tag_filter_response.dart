// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TagFilter
class TagFilterResponse {
  /// The tag key.
  final String? key;
  /// The tag value.
  final String? value;

  /// Creates a new [TagFilterResponse].
  /// [key] The tag key.
  /// [value] The tag value.
  TagFilterResponse({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TagFilterResponse.fromMap(Map<String, dynamic> map) {
    return TagFilterResponse(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

