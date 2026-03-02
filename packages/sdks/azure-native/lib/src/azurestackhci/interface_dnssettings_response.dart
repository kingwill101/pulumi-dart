// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DNS Settings of the interface
class InterfaceDNSSettingsResponse {
  /// List of DNS server IP Addresses for the interface
  final pulumi.Input<List<String>>? dnsServers;

  /// Creates a new [InterfaceDNSSettingsResponse].
  /// [dnsServers] List of DNS server IP Addresses for the interface
  InterfaceDNSSettingsResponse({
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
    };
  }

  factory InterfaceDNSSettingsResponse.fromMap(Map<String, dynamic> map) {
    return InterfaceDNSSettingsResponse(
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers'] as List).cast<String>()).input(),
    );
  }
}

