// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingConnectionPoolConfigFlag {
  /// The name of the instance.
  final String name;

  /// Value of the flag.
  final String value;

  GetDatabaseInstanceSettingConnectionPoolConfigFlag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetDatabaseInstanceSettingConnectionPoolConfigFlag.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingConnectionPoolConfigFlag(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
