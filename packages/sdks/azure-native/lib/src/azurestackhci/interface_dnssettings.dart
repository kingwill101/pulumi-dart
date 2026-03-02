// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DNS Settings of the interface
class InterfaceDNSSettings {
  /// List of DNS server IP Addresses for the interface
  final pulumi.Input<List<String>>? dnsServers;

  /// Creates a new [InterfaceDNSSettings].
  /// [dnsServers] List of DNS server IP Addresses for the interface
  InterfaceDNSSettings({
    this.dnsServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers,
    };
  }

  factory InterfaceDNSSettings.fromMap(Map<String, dynamic> map) {
    return InterfaceDNSSettings(
      dnsServers: map['dnsServers'] == null ? null : ((map['dnsServers']! as List).cast<String>()).input(),
    );
  }
}

