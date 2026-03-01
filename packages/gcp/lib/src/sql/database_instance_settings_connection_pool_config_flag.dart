// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsConnectionPoolConfigFlag {
  /// Name of the flag.
  final String name;

  /// Value of the flag.
  final String value;

  /// Creates a new [DatabaseInstanceSettingsConnectionPoolConfigFlag].
  /// [name] Name of the flag.
  /// [value] Value of the flag.
  DatabaseInstanceSettingsConnectionPoolConfigFlag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory DatabaseInstanceSettingsConnectionPoolConfigFlag.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseInstanceSettingsConnectionPoolConfigFlag(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
