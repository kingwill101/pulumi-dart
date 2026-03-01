// ignore_for_file: unused_element, unnecessary_cast


/// SVID for BrokerAuthentication
class BrokerAuthenticatorMethodSvidResponse {
  /// Mounted socket path for spiffe agent.
  final String agentSocketPath;
  /// Maximum number of re-tries to fetch identity.
  final double? identityMaxRetry;
  /// Maximum time to wait before fetching identity again.
  final double? identityWaitRetryMs;

  /// Creates a new [BrokerAuthenticatorMethodSvidResponse].
  /// [agentSocketPath] Mounted socket path for spiffe agent.
  /// [identityMaxRetry] Maximum number of re-tries to fetch identity.
  /// [identityWaitRetryMs] Maximum time to wait before fetching identity again.
  BrokerAuthenticatorMethodSvidResponse({
    required this.agentSocketPath,
    this.identityMaxRetry,
    this.identityWaitRetryMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSocketPath': agentSocketPath,
      'identityMaxRetry': ?identityMaxRetry,
      'identityWaitRetryMs': ?identityWaitRetryMs,
    };
  }

  factory BrokerAuthenticatorMethodSvidResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodSvidResponse(
      agentSocketPath: map['agentSocketPath'] as String,
      identityMaxRetry: map['identityMaxRetry'] == null ? null : map['identityMaxRetry'] as double,
      identityWaitRetryMs: map['identityWaitRetryMs'] == null ? null : map['identityWaitRetryMs'] as double,
    );
  }
}

