// ignore_for_file: unused_element, unnecessary_cast


class DatabaseInstanceSettingsDatabaseFlag {
  /// Name of the flag.
  final String name;
  /// Value of the flag.
  final String value;

  /// Creates a new [DatabaseInstanceSettingsDatabaseFlag].
  /// [name] Name of the flag.
  /// [value] Value of the flag.
  DatabaseInstanceSettingsDatabaseFlag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DatabaseInstanceSettingsDatabaseFlag.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsDatabaseFlag(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

