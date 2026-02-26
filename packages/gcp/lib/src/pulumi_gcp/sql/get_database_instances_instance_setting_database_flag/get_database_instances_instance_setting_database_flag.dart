// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingDatabaseFlag {
  /// Name of the flag.
  final String name;

  /// Value of the flag.
  final String value;

  GetDatabaseInstancesInstanceSettingDatabaseFlag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetDatabaseInstancesInstanceSettingDatabaseFlag.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingDatabaseFlag(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
