// ignore_for_file: unused_element, unnecessary_cast

/// Tag is an AWS tag representation.
class TagResponseVmmigrationV1alpha1 {
  /// Key of tag.
  final String key;

  /// Value of tag.
  final String value;

  /// Creates a new [TagResponseVmmigrationV1alpha1].
  /// [key] Key of tag.
  /// [value] Value of tag.
  TagResponseVmmigrationV1alpha1({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory TagResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return TagResponseVmmigrationV1alpha1(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
