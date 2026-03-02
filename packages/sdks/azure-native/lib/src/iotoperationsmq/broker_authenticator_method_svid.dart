// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SVID for BrokerAuthentication
class BrokerAuthenticatorMethodSvid {
  /// Mounted socket path for spiffe agent.
  final pulumi.Input<String> agentSocketPath;
  /// Maximum number of re-tries to fetch identity.
  final pulumi.Input<double>? identityMaxRetry;
  /// Maximum time to wait before fetching identity again.
  final pulumi.Input<double>? identityWaitRetryMs;

  /// Creates a new [BrokerAuthenticatorMethodSvid].
  /// [agentSocketPath] Mounted socket path for spiffe agent.
  /// [identityMaxRetry] Maximum number of re-tries to fetch identity.
  /// [identityWaitRetryMs] Maximum time to wait before fetching identity again.
  BrokerAuthenticatorMethodSvid({
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

  factory BrokerAuthenticatorMethodSvid.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodSvid(
      agentSocketPath: (map['agentSocketPath'] as String).input(),
      identityMaxRetry: map['identityMaxRetry'] == null ? null : (map['identityMaxRetry']! as double).input(),
      identityWaitRetryMs: map['identityWaitRetryMs'] == null ? null : (map['identityWaitRetryMs']! as double).input(),
    );
  }
}

