// ignore_for_file: unused_element, unnecessary_cast

class KxEnvironmentCustomDnsConfiguration {
  /// IP address of the DNS server.
  final String customDnsServerIp;

  /// Name of the DNS server.
  final String customDnsServerName;

  KxEnvironmentCustomDnsConfiguration({
    required this.customDnsServerIp,
    required this.customDnsServerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customDnsServerIp'] = customDnsServerIp;
    map['customDnsServerName'] = customDnsServerName;
    return map;
  }

  factory KxEnvironmentCustomDnsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return KxEnvironmentCustomDnsConfiguration(
      customDnsServerIp: map['customDnsServerIp'] as String,
      customDnsServerName: map['customDnsServerName'] as String,
    );
  }
}
