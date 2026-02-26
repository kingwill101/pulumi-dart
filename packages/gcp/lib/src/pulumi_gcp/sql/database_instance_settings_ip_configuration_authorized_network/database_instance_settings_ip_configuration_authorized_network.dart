// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork {
  /// The [RFC 3339](https://tools.ietf.org/html/rfc3339)
  /// formatted date time string indicating when this whitelist expires.
  final String? expirationTime;

  /// A name for this whitelist entry.
  final String? name;

  /// A CIDR notation IPv4 or IPv6 address that is allowed to
  /// access this instance. Must be set even if other two attributes are not for
  /// the whitelist to become active.
  final String value;

  DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork({
    this.expirationTime,
    this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expirationTimeValue = expirationTime;
    if (expirationTimeValue != null) {
      map['expirationTime'] = expirationTimeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['value'] = value;
    return map;
  }

  factory DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsIpConfigurationAuthorizedNetwork(
      expirationTime: map['expirationTime'] == null
          ? null
          : map['expirationTime'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] as String,
    );
  }
}
