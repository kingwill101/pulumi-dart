// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Windows gMSA Profile in the managed cluster.
class WindowsGmsaProfileResponse {
  /// Specifies the DNS server for Windows gMSA. &lt;br&gt;&lt;br&gt; Set it to empty if you have configured the DNS server in the vnet which is used to create the managed cluster.
  final pulumi.Input<String>? dnsServer;
  /// Whether to enable Windows gMSA. Specifies whether to enable Windows gMSA in the managed cluster.
  final pulumi.Input<bool>? enabled;
  /// Specifies the root domain name for Windows gMSA. &lt;br&gt;&lt;br&gt; Set it to empty if you have configured the DNS server in the vnet which is used to create the managed cluster.
  final pulumi.Input<String>? rootDomainName;

  /// Creates a new [WindowsGmsaProfileResponse].
  /// [dnsServer] Specifies the DNS server for Windows gMSA. &lt;br&gt;&lt;br&gt; Set it to empty if you have configured the DNS server in the vnet which is used to create the managed cluster.
  /// [enabled] Whether to enable Windows gMSA. Specifies whether to enable Windows gMSA in the managed cluster.
  /// [rootDomainName] Specifies the root domain name for Windows gMSA. &lt;br&gt;&lt;br&gt; Set it to empty if you have configured the DNS server in the vnet which is used to create the managed cluster.
  const WindowsGmsaProfileResponse({
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

  factory WindowsGmsaProfileResponse.fromMap(Map<String, dynamic> map) {
    return WindowsGmsaProfileResponse(
      dnsServer: (() { final guardedValue = map['dnsServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rootDomainName: (() { final guardedValue = map['rootDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
