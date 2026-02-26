// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag {
  /// Name of the flag.
  final String name;

  /// Value of the flag.
  final String value;

  GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingConnectionPoolConfigFlag(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
