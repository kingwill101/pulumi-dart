// ignore_for_file: unused_element, unnecessary_cast

class SelectionSelectionTag {
  /// Key for the filter.
  final String key;

  /// An operation, such as `STRINGEQUALS`, that is applied to the key-value pair used to filter resources in a selection.
  final String type;

  /// Value for the filter.
  final String value;

  SelectionSelectionTag({
    required this.key,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory SelectionSelectionTag.fromMap(Map<String, dynamic> map) {
    return SelectionSelectionTag(
      key: map['key'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
