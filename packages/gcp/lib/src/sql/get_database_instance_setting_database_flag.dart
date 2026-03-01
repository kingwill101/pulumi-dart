// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseInstanceSettingDatabaseFlag {
  /// The name of the instance.
  final String name;
  /// Value of the flag.
  final String value;

  /// Creates a new [GetDatabaseInstanceSettingDatabaseFlag].
  /// [name] The name of the instance.
  /// [value] Value of the flag.
  GetDatabaseInstanceSettingDatabaseFlag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetDatabaseInstanceSettingDatabaseFlag.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingDatabaseFlag(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

