// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag {
  /// Name of the flag.
  final String name;

  /// Value of the flag.
  final String value;

  /// Creates a new [GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag].
  /// [name] Name of the flag.
  /// [value] Value of the flag.
  GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
