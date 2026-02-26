// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_config3.dart';

/// Client connection configuration
class ClientConnectionConfig3 {
  /// Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final bool? requireConnectors;

  /// Optional. SSL config option for this instance.
  final SslConfig3? sslConfig;

  ClientConnectionConfig3({
    this.requireConnectors,
    this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requireConnectorsValue = requireConnectors;
    if (requireConnectorsValue != null) {
      map['requireConnectors'] = requireConnectorsValue;
    }
    final sslConfigValue = sslConfig;
    if (sslConfigValue != null) {
      map['sslConfig'] = sslConfigValue.toMap();
    }
    return map;
  }

  factory ClientConnectionConfig3.fromMap(Map<String, dynamic> map) {
    return ClientConnectionConfig3(
      requireConnectors: map['requireConnectors'] == null
          ? null
          : map['requireConnectors'] as bool,
      sslConfig: map['sslConfig'] == null
          ? null
          : SslConfig3.fromMap(
              (map['sslConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
