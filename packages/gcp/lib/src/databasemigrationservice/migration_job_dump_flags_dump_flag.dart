// ignore_for_file: unused_element, unnecessary_cast

class MigrationJobDumpFlagsDumpFlag {
  /// The name of the flag
  final String? name;

  /// The vale of the flag
  final String? value;

  /// Creates a new [MigrationJobDumpFlagsDumpFlag].
  /// [name] The name of the flag
  /// [value] The vale of the flag
  MigrationJobDumpFlagsDumpFlag({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory MigrationJobDumpFlagsDumpFlag.fromMap(Map<String, dynamic> map) {
    return MigrationJobDumpFlagsDumpFlag(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
