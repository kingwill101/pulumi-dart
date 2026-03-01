// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TagFilter
class TagFilter {
  /// The tag key.
  final String? key;
  /// The tag value.
  final String? value;

  /// Creates a new [TagFilter].
  /// [key] The tag key.
  /// [value] The tag value.
  TagFilter({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TagFilter.fromMap(Map<String, dynamic> map) {
    return TagFilter(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

