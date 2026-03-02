// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains the REP (rendezvous endpoint) and “Sender” access token.
class HybridConnectionConfigResponse {
  /// Timestamp when this token will be expired.
  final pulumi.Input<double> expirationTime;
  /// Name of the connection
  final pulumi.Input<String> hybridConnectionName;
  /// Name of the relay.
  final pulumi.Input<String> relay;
  /// Sender access token
  final pulumi.Input<String> token;

  /// Creates a new [HybridConnectionConfigResponse].
  /// [expirationTime] Timestamp when this token will be expired.
  /// [hybridConnectionName] Name of the connection
  /// [relay] Name of the relay.
  /// [token] Sender access token
  HybridConnectionConfigResponse({
    required this.expirationTime,
    required this.hybridConnectionName,
    required this.relay,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': expirationTime,
      'hybridConnectionName': hybridConnectionName,
      'relay': relay,
      'token': token,
    };
  }

  factory HybridConnectionConfigResponse.fromMap(Map<String, dynamic> map) {
    return HybridConnectionConfigResponse(
      expirationTime: (map['expirationTime'] as double).input(),
      hybridConnectionName: (map['hybridConnectionName'] as String).input(),
      relay: (map['relay'] as String).input(),
      token: (map['token'] as String).input(),
    );
  }
}

