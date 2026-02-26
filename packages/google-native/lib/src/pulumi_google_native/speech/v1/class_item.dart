// ignore_for_file: unused_element, unnecessary_cast

/// An item of the class.
class ClassItem {
  /// The class item's value.
  final String? value;

  ClassItem({
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory ClassItem.fromMap(Map<String, dynamic> map) {
    return ClassItem(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
