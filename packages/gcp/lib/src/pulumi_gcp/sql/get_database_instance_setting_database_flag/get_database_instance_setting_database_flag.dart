// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingDatabaseFlag {
  /// The name of the instance.
  final String name;

  /// Value of the flag.
  final String value;

  GetDatabaseInstanceSettingDatabaseFlag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetDatabaseInstanceSettingDatabaseFlag.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingDatabaseFlag(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
