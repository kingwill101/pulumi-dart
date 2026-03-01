// ignore_for_file: unused_element, unnecessary_cast

/// Dump flag definition.
class DumpFlag {
  /// The name of the flag
  final String? name;

  /// The value of the flag.
  final String? value;

  /// Creates a new [DumpFlag].
  /// [name] The name of the flag
  /// [value] The value of the flag.
  DumpFlag({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory DumpFlag.fromMap(Map<String, dynamic> map) {
    return DumpFlag(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
