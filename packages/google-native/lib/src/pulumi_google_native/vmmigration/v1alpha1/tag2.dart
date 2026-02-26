// ignore_for_file: unused_element, unnecessary_cast

/// Tag is an AWS tag representation.
class Tag2 {
  /// Key of tag.
  final String? key;

  /// Value of tag.
  final String? value;

  Tag2({
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

  factory Tag2.fromMap(Map<String, dynamic> map) {
    return Tag2(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
