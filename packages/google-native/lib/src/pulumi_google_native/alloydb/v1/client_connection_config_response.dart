// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_config_response.dart';

/// Client connection configuration
class ClientConnectionConfigResponse {
  /// Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final bool requireConnectors;

  /// Optional. SSL config option for this instance.
  final SslConfigResponse sslConfig;

  ClientConnectionConfigResponse({
    required this.requireConnectors,
    required this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requireConnectors'] = requireConnectors;
    map['sslConfig'] = sslConfig.toMap();
    return map;
  }

  factory ClientConnectionConfigResponse.fromMap(Map<String, dynamic> map) {
    return ClientConnectionConfigResponse(
      requireConnectors: map['requireConnectors'] as bool,
      sslConfig: SslConfigResponse.fromMap(
          (map['sslConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
