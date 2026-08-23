// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Gateway Ssl policy.
class ApplicationGatewaySslPolicyResponse {
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

  /// Creates a new [ApplicationGatewaySslPolicyResponse].
  /// [cipherSuites] Ssl cipher suites to be enabled in the specified order to application gateway.
  /// [disabledSslProtocols] Ssl protocols to be disabled on application gateway.
  /// [minProtocolVersion] Minimum version of Ssl protocol to be supported on application gateway.
  /// [policyName] Name of Ssl predefined policy.
  /// [policyType] Type of Ssl Policy.
  const ApplicationGatewaySslPolicyResponse({
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

  factory ApplicationGatewaySslPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySslPolicyResponse(
      cipherSuites: (() { final guardedValue = map['cipherSuites']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      disabledSslProtocols: (() { final guardedValue = map['disabledSslProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      minProtocolVersion: (() { final guardedValue = map['minProtocolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
