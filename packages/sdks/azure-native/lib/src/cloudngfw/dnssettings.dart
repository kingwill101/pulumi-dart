// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipaddress.dart';

/// DNS Proxy settings for Firewall
class DNSSettings {
  /// List of IPs associated with the Firewall
  final pulumi.Input<List<IPAddress>>? dnsServers;
  /// Enable DNS proxy, disabled by default
  final pulumi.Input<String>? enableDnsProxy;
  /// Enabled DNS proxy type, disabled by default
  final pulumi.Input<String>? enabledDnsType;

  /// Creates a new [DNSSettings].
  /// [dnsServers] List of IPs associated with the Firewall
  /// [enableDnsProxy] Enable DNS proxy, disabled by default
  /// [enabledDnsType] Enabled DNS proxy type, disabled by default
  const DNSSettings({
    this.dnsServers,
    this.enableDnsProxy,
    this.enabledDnsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServers': ?pulumi.Input.mapOptionalInputValue<List<IPAddress>, List<Map<String, dynamic>>>(dnsServers, (value) => pulumi.Input.encodeList<IPAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableDnsProxy': ?enableDnsProxy,
      'enabledDnsType': ?enabledDnsType,
    };
  }

  factory DNSSettings.fromMap(Map<String, dynamic> map) {
    return DNSSettings(
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPAddress>(guardedValue, (value) => IPAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableDnsProxy: (() { final guardedValue = map['enableDnsProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledDnsType: (() { final guardedValue = map['enabledDnsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
