// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The kubernetes network settings information.
class K8sNetworkSettingsResponse {
  /// If 1, then SQL Server forces all connections to be encrypted. By default, this option is 0
  final pulumi.Input<int>? forceencryption;
  /// Specifies which ciphers are allowed by SQL Server for TLS
  final pulumi.Input<String>? tlsciphers;
  /// A comma-separated list of which TLS protocols are allowed by SQL Server
  final pulumi.Input<String>? tlsprotocols;

  /// Creates a new [K8sNetworkSettingsResponse].
  /// [forceencryption] If 1, then SQL Server forces all connections to be encrypted. By default, this option is 0
  /// [tlsciphers] Specifies which ciphers are allowed by SQL Server for TLS
  /// [tlsprotocols] A comma-separated list of which TLS protocols are allowed by SQL Server
  const K8sNetworkSettingsResponse({
    this.forceencryption,
    this.tlsciphers,
    this.tlsprotocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceencryption': ?forceencryption,
      'tlsciphers': ?tlsciphers,
      'tlsprotocols': ?tlsprotocols,
    };
  }

  factory K8sNetworkSettingsResponse.fromMap(Map<String, dynamic> map) {
    return K8sNetworkSettingsResponse(
      forceencryption: (() { final guardedValue = map['forceencryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tlsciphers: (() { final guardedValue = map['tlsciphers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsprotocols: (() { final guardedValue = map['tlsprotocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
