// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewaySslProfileSslPolicy {
  /// A List of accepted cipher suites.
  final List<String> cipherSuites;
  /// A list of SSL Protocols which are disabled on this Application Gateway.
  final List<String> disabledProtocols;
  /// The minimum TLS version.
  final String minProtocolVersion;
  /// The Name of the Policy.
  final String policyName;
  /// The Type of the Policy.
  final String policyType;

  /// Creates a new [GetApplicationGatewaySslProfileSslPolicy].
  /// [cipherSuites] A List of accepted cipher suites.
  /// [disabledProtocols] A list of SSL Protocols which are disabled on this Application Gateway.
  /// [minProtocolVersion] The minimum TLS version.
  /// [policyName] The Name of the Policy.
  /// [policyType] The Type of the Policy.
  GetApplicationGatewaySslProfileSslPolicy({
    required this.cipherSuites,
    required this.disabledProtocols,
    required this.minProtocolVersion,
    required this.policyName,
    required this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipherSuites': cipherSuites,
      'disabledProtocols': disabledProtocols,
      'minProtocolVersion': minProtocolVersion,
      'policyName': policyName,
      'policyType': policyType,
    };
  }

  factory GetApplicationGatewaySslProfileSslPolicy.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewaySslProfileSslPolicy(
      cipherSuites: (map['cipherSuites'] as List).cast<String>(),
      disabledProtocols: (map['disabledProtocols'] as List).cast<String>(),
      minProtocolVersion: map['minProtocolVersion'] as String,
      policyName: map['policyName'] as String,
      policyType: map['policyType'] as String,
    );
  }
}

