// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork {
  final String expirationTime;

  /// The name of the instance.
  final String name;
  final String value;

  /// Creates a new [GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork].
  /// [expirationTime] Required.
  /// [name] The name of the instance.
  /// [value] Required.
  GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork({
    required this.expirationTime,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': expirationTime,
      'name': name,
      'value': value,
    };
  }

  factory GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork(
      expirationTime: map['expirationTime'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
