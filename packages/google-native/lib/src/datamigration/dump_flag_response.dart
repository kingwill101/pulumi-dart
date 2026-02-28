// ignore_for_file: unused_element, unnecessary_cast

/// Dump flag definition.
class DumpFlagResponse {
  /// The name of the flag
  final String name;

  /// The value of the flag.
  final String value;

  /// Creates a new [DumpFlagResponse].
  /// [name] The name of the flag
  /// [value] The value of the flag.
  DumpFlagResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory DumpFlagResponse.fromMap(Map<String, dynamic> map) {
    return DumpFlagResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
