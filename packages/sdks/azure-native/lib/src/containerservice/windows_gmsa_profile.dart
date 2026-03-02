// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Windows gMSA Profile in the managed cluster.
class WindowsGmsaProfile {
  /// Specifies the DNS server for Windows gMSA. <br><br> Set it to empty if you have configured the DNS server in the vnet which is used to create the managed cluster.
  final pulumi.Input<String>? dnsServer;
  /// Whether to enable Windows gMSA. Specifies whether to enable Windows gMSA in the managed cluster.
  final pulumi.Input<bool>? enabled;
  /// Specifies the root domain name for Windows gMSA. <br><br> Set it to empty if you have configured the DNS server in the vnet which is used to create the managed cluster.
  final pulumi.Input<String>? rootDomainName;

  /// Creates a new [WindowsGmsaProfile].
  /// [dnsServer] Specifies the DNS server for Windows gMSA. <br><br> Set it to empty if you have configured the DNS server in the vnet which is used to create the managed cluster.
  /// [enabled] Whether to enable Windows gMSA. Specifies whether to enable Windows gMSA in the managed cluster.
  /// [rootDomainName] Specifies the root domain name for Windows gMSA. <br><br> Set it to empty if you have configured the DNS server in the vnet which is used to create the managed cluster.
  WindowsGmsaProfile({
    this.dnsServer,
    this.enabled,
    this.rootDomainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServer': ?dnsServer,
      'enabled': ?enabled,
      'rootDomainName': ?rootDomainName,
    };
  }

  factory WindowsGmsaProfile.fromMap(Map<String, dynamic> map) {
    return WindowsGmsaProfile(
      dnsServer: map['dnsServer'] == null ? null : (map['dnsServer'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      rootDomainName: map['rootDomainName'] == null ? null : (map['rootDomainName'] as String).input(),
    );
  }
}

