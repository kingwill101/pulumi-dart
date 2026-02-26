// ignore_for_file: unused_element, unnecessary_cast

/// Dump flag definition.
class DumpFlag {
  /// The name of the flag
  final String? name;

  /// The value of the flag.
  final String? value;

  DumpFlag({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory DumpFlag.fromMap(Map<String, dynamic> map) {
    return DumpFlag(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
