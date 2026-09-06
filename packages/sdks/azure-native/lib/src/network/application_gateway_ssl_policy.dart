// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Application Gateway Ssl policy.
class ApplicationGatewaySslPolicy {
  /// Ssl cipher suites to be enabled in the specified order to application gateway.
  final pulumi.Input<List<dynamic>?>? cipherSuites;
  /// Ssl protocols to be disabled on application gateway.
  final pulumi.Input<List<dynamic>?>? disabledSslProtocols;
  /// Minimum version of Ssl protocol to be supported on application gateway.
  final pulumi.Input<dynamic>? minProtocolVersion;
  /// Name of Ssl predefined policy.
  final pulumi.Input<dynamic>? policyName;
  /// Type of Ssl Policy.
  final pulumi.Input<dynamic>? policyType;

  /// Creates a new [ApplicationGatewaySslPolicy].
  /// [cipherSuites] Ssl cipher suites to be enabled in the specified order to application gateway.
  /// [disabledSslProtocols] Ssl protocols to be disabled on application gateway.
  /// [minProtocolVersion] Minimum version of Ssl protocol to be supported on application gateway.
  /// [policyName] Name of Ssl predefined policy.
  /// [policyType] Type of Ssl Policy.
  const ApplicationGatewaySslPolicy({
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
      cipherSuites: (() { final guardedValue = map['cipherSuites']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      disabledSslProtocols: (() { final guardedValue = map['disabledSslProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      minProtocolVersion: (() { final guardedValue = map['minProtocolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
