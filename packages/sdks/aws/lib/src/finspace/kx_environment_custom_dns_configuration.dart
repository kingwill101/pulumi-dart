// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxEnvironmentCustomDnsConfiguration {
  /// IP address of the DNS server.
  final pulumi.Input<String> customDnsServerIp;

  /// Name of the DNS server.
  final pulumi.Input<String> customDnsServerName;

  /// Creates a new [KxEnvironmentCustomDnsConfiguration].
  /// [customDnsServerIp] IP address of the DNS server.
  /// [customDnsServerName] Name of the DNS server.
  KxEnvironmentCustomDnsConfiguration({
    required this.customDnsServerIp,
    required this.customDnsServerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDnsServerIp': customDnsServerIp,
      'customDnsServerName': customDnsServerName,
    };
  }

  factory KxEnvironmentCustomDnsConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return KxEnvironmentCustomDnsConfiguration(
      customDnsServerIp: pulumi.Input.fromValue(
        map['customDnsServerIp'] as String,
      ),
      customDnsServerName: pulumi.Input.fromValue(
        map['customDnsServerName'] as String,
      ),
    );
  }
}
