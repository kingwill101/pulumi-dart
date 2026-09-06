// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SVID for BrokerAuthentication
class BrokerAuthenticatorMethodSvidResponse {
  /// Mounted socket path for spiffe agent.
  final pulumi.Input<String> agentSocketPath;
  /// Maximum number of re-tries to fetch identity.
  final pulumi.Input<double?>? identityMaxRetry;
  /// Maximum time to wait before fetching identity again.
  final pulumi.Input<double?>? identityWaitRetryMs;

  /// Creates a new [BrokerAuthenticatorMethodSvidResponse].
  /// [agentSocketPath] Mounted socket path for spiffe agent.
  /// [identityMaxRetry] Maximum number of re-tries to fetch identity.
  /// [identityWaitRetryMs] Maximum time to wait before fetching identity again.
  BrokerAuthenticatorMethodSvidResponse({
    required this.agentSocketPath,
    pulumi.Input<double?>? identityMaxRetry,
    pulumi.Input<double?>? identityWaitRetryMs,
  }) : identityMaxRetry = identityMaxRetry ?? pulumi.Input.fromValue(3), identityWaitRetryMs = identityWaitRetryMs ?? pulumi.Input.fromValue(5000);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSocketPath': agentSocketPath,
      'identityMaxRetry': ?identityMaxRetry,
      'identityWaitRetryMs': ?identityWaitRetryMs,
    };
  }

  factory BrokerAuthenticatorMethodSvidResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodSvidResponse(
      agentSocketPath: pulumi.Input.fromValue(map['agentSocketPath'] as String),
      identityMaxRetry: (() { final guardedValue = map['identityMaxRetry']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      identityWaitRetryMs: (() { final guardedValue = map['identityWaitRetryMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
