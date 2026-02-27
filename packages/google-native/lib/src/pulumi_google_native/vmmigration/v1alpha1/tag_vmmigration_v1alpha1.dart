// ignore_for_file: unused_element, unnecessary_cast

/// Tag is an AWS tag representation.
class TagVmmigrationV1alpha1 {
  /// Key of tag.
  final String? key;

  /// Value of tag.
  final String? value;

  TagVmmigrationV1alpha1({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory TagVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return TagVmmigrationV1alpha1(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
