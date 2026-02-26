// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_config_response2.dart';

/// Client connection configuration
class ClientConnectionConfigResponse2 {
  /// Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final bool requireConnectors;

  /// Optional. SSL config option for this instance.
  final SslConfigResponse2 sslConfig;

  ClientConnectionConfigResponse2({
    required this.requireConnectors,
    required this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requireConnectors'] = requireConnectors;
    map['sslConfig'] = sslConfig.toMap();
    return map;
  }

  factory ClientConnectionConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ClientConnectionConfigResponse2(
      requireConnectors: map['requireConnectors'] as bool,
      sslConfig: SslConfigResponse2.fromMap(
          (map['sslConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
