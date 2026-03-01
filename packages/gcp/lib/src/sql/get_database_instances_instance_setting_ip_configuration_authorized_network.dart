// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork {
  final String expirationTime;
  final String name;
  final String value;

  /// Creates a new [GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork].
  /// [expirationTime] Required.
  /// [name] Required.
  /// [value] Required.
  GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork({
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

  factory GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork(
      expirationTime: map['expirationTime'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
