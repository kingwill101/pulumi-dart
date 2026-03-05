// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DNS Proxy Settings in Firewall Policy.
class DnsSettingsResponse {
  /// Enable DNS Proxy on Firewalls attached to the Firewall Policy.
  final pulumi.Input<bool>? enableProxy;
  /// FQDNs in Network Rules are supported when set to true.
  final pulumi.Input<bool>? requireProxyForNetworkRules;
  /// List of Custom DNS Servers.
  final pulumi.Input<List<String>>? servers;

  /// Creates a new [DnsSettingsResponse].
  /// [enableProxy] Enable DNS Proxy on Firewalls attached to the Firewall Policy.
  /// [requireProxyForNetworkRules] FQDNs in Network Rules are supported when set to true.
  /// [servers] List of Custom DNS Servers.
  DnsSettingsResponse({
    this.enableProxy,
    this.requireProxyForNetworkRules,
    this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableProxy': ?enableProxy,
      'requireProxyForNetworkRules': ?requireProxyForNetworkRules,
      'servers': ?servers,
    };
  }

  factory DnsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DnsSettingsResponse(
      enableProxy: (() { final guardedValue = map['enableProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireProxyForNetworkRules: (() { final guardedValue = map['requireProxyForNetworkRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

