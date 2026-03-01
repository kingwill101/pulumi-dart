// ignore_for_file: unused_element, unnecessary_cast


/// The kubernetes network settings information.
class K8sNetworkSettingsResponse {
  /// If 1, then SQL Server forces all connections to be encrypted. By default, this option is 0
  final int? forceencryption;
  /// Specifies which ciphers are allowed by SQL Server for TLS
  final String? tlsciphers;
  /// A comma-separated list of which TLS protocols are allowed by SQL Server
  final String? tlsprotocols;

  /// Creates a new [K8sNetworkSettingsResponse].
  /// [forceencryption] If 1, then SQL Server forces all connections to be encrypted. By default, this option is 0
  /// [tlsciphers] Specifies which ciphers are allowed by SQL Server for TLS
  /// [tlsprotocols] A comma-separated list of which TLS protocols are allowed by SQL Server
  K8sNetworkSettingsResponse({
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
      forceencryption: map['forceencryption'] == null ? null : map['forceencryption'] as int,
      tlsciphers: map['tlsciphers'] == null ? null : map['tlsciphers'] as String,
      tlsprotocols: map['tlsprotocols'] == null ? null : map['tlsprotocols'] as String,
    );
  }
}

