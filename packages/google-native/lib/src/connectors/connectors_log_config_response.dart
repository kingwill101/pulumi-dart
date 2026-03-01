// ignore_for_file: unused_element, unnecessary_cast

/// Log configuration for the connection.
class ConnectorsLogConfigResponse {
  /// Enabled represents whether logging is enabled or not for a connection.
  final bool enabled;

  /// Creates a new [ConnectorsLogConfigResponse].
  /// [enabled] Enabled represents whether logging is enabled or not for a connection.
  ConnectorsLogConfigResponse({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ConnectorsLogConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorsLogConfigResponse(enabled: map['enabled'] as bool);
  }
}
