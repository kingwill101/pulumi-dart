// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork {
  final String expirationTime;

  /// The name of the instance.
  final String name;
  final String value;

  GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork({
    required this.expirationTime,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expirationTime'] = expirationTime;
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork(
      expirationTime: map['expirationTime'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
