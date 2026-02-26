// ignore_for_file: unused_element, unnecessary_cast

class MigrationJobDumpFlagsDumpFlag {
  /// The name of the flag
  final String? name;

  /// The vale of the flag
  final String? value;

  MigrationJobDumpFlagsDumpFlag({
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

  factory MigrationJobDumpFlagsDumpFlag.fromMap(Map<String, dynamic> map) {
    return MigrationJobDumpFlagsDumpFlag(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
