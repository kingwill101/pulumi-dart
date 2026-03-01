// ignore_for_file: unused_element, unnecessary_cast


/// Application Gateway Ssl policy.
class ApplicationGatewaySslPolicy {
  /// Ssl cipher suites to be enabled in the specified order to application gateway.
  final List<String>? cipherSuites;
  /// Ssl protocols to be disabled on application gateway.
  final List<String>? disabledSslProtocols;
  /// Minimum version of Ssl protocol to be supported on application gateway.
  final String? minProtocolVersion;
  /// Name of Ssl predefined policy.
  final String? policyName;
  /// Type of Ssl Policy.
  final String? policyType;

  /// Creates a new [ApplicationGatewaySslPolicy].
  /// [cipherSuites] Ssl cipher suites to be enabled in the specified order to application gateway.
  /// [disabledSslProtocols] Ssl protocols to be disabled on application gateway.
  /// [minProtocolVersion] Minimum version of Ssl protocol to be supported on application gateway.
  /// [policyName] Name of Ssl predefined policy.
  /// [policyType] Type of Ssl Policy.
  ApplicationGatewaySslPolicy({
    this.cipherSuites,
    this.disabledSslProtocols,
    this.minProtocolVersion,
    this.policyName,
    this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipherSuites': ?cipherSuites,
      'disabledSslProtocols': ?disabledSslProtocols,
      'minProtocolVersion': ?minProtocolVersion,
      'policyName': ?policyName,
      'policyType': ?policyType,
    };
  }

  factory ApplicationGatewaySslPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySslPolicy(
      cipherSuites: map['cipherSuites'] == null ? null : (map['cipherSuites'] as List).cast<String>(),
      disabledSslProtocols: map['disabledSslProtocols'] == null ? null : (map['disabledSslProtocols'] as List).cast<String>(),
      minProtocolVersion: map['minProtocolVersion'] == null ? null : map['minProtocolVersion'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
    );
  }
}

