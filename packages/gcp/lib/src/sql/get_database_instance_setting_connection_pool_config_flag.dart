// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingConnectionPoolConfigFlag {
  /// The name of the instance.
  final String name;

  /// Value of the flag.
  final String value;

  /// Creates a new [GetDatabaseInstanceSettingConnectionPoolConfigFlag].
  /// [name] The name of the instance.
  /// [value] Value of the flag.
  GetDatabaseInstanceSettingConnectionPoolConfigFlag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GetDatabaseInstanceSettingConnectionPoolConfigFlag.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstanceSettingConnectionPoolConfigFlag(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
