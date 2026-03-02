// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Gateway Ssl policy.
class ApplicationGatewaySslPolicy {
  /// Ssl cipher suites to be enabled in the specified order to application gateway.
  final pulumi.Input<List<String>>? cipherSuites;
  /// Ssl protocols to be disabled on application gateway.
  final pulumi.Input<List<String>>? disabledSslProtocols;
  /// Minimum version of Ssl protocol to be supported on application gateway.
  final pulumi.Input<String>? minProtocolVersion;
  /// Name of Ssl predefined policy.
  final pulumi.Input<String>? policyName;
  /// Type of Ssl Policy.
  final pulumi.Input<String>? policyType;

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
      cipherSuites: map['cipherSuites'] == null ? null : ((map['cipherSuites']! as List).cast<String>()).input(),
      disabledSslProtocols: map['disabledSslProtocols'] == null ? null : ((map['disabledSslProtocols']! as List).cast<String>()).input(),
      minProtocolVersion: map['minProtocolVersion'] == null ? null : (map['minProtocolVersion']! as String).input(),
      policyName: map['policyName'] == null ? null : (map['policyName']! as String).input(),
      policyType: map['policyType'] == null ? null : (map['policyType']! as String).input(),
    );
  }
}

