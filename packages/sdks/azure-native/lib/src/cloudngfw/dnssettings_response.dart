// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipaddress_response.dart';

/// DNS Proxy settings for Firewall
class DNSSettingsResponse {
  /// List of IPs associated with the Firewall
  final List<IPAddressResponse>? dnsServers;
  /// Enable DNS proxy, disabled by default
  final String? enableDnsProxy;
  /// Enabled DNS proxy type, disabled by default
  final String? enabledDnsType;

  /// Creates a new [DNSSettingsResponse].
  /// [dnsServers] List of IPs associated with the Firewall
  /// [enableDnsProxy] Enable DNS proxy, disabled by default
  /// [enabledDnsType] Enabled DNS proxy type, disabled by default
  DNSSettingsResponse({
    this.dnsServers,
    this.enableDnsProxy,
    this.enabledDnsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?dnsServers == null ? null : pulumi.Input.encodeList<IPAddressResponse, Map<String, dynamic>>(dnsServers!, (value) => value.toMap()),
      'enableDnsProxy': ?enableDnsProxy,
      'enabledDnsType': ?enabledDnsType,
    };
  }

  factory DNSSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DNSSettingsResponse(
      dnsServers: map['dnsServers'] == null ? null : pulumi.Input.decodeList<IPAddressResponse>(map['dnsServers'], (value) => IPAddressResponse.fromMap((value as Map).cast<String, dynamic>())),
      enableDnsProxy: map['enableDnsProxy'] == null ? null : map['enableDnsProxy'] as String,
      enabledDnsType: map['enabledDnsType'] == null ? null : map['enabledDnsType'] as String,
    );
  }
}

