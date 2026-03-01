// ignore_for_file: unused_element, unnecessary_cast


/// Contains the REP (rendezvous endpoint) and “Listener” access token from notification service (NS).
class HybridConnectionConfigResponse {
  /// Timestamp when this token will be expired.
  final double expirationTime;
  /// Name of the connection
  final String hybridConnectionName;
  /// Name of the notification service.
  final String relay;
  /// Listener access token
  final String token;

  /// Creates a new [HybridConnectionConfigResponse].
  /// [expirationTime] Timestamp when this token will be expired.
  /// [hybridConnectionName] Name of the connection
  /// [relay] Name of the notification service.
  /// [token] Listener access token
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
      expirationTime: map['expirationTime'] as double,
      hybridConnectionName: map['hybridConnectionName'] as String,
      relay: map['relay'] as String,
      token: map['token'] as String,
    );
  }
}

