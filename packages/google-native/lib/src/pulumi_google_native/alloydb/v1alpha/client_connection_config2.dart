// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_config2.dart';

/// Client connection configuration
class ClientConnectionConfig2 {
  /// Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final bool? requireConnectors;

  /// Optional. SSL config option for this instance.
  final SslConfig2? sslConfig;

  ClientConnectionConfig2({
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

  factory ClientConnectionConfig2.fromMap(Map<String, dynamic> map) {
    return ClientConnectionConfig2(
      requireConnectors: map['requireConnectors'] == null
          ? null
          : map['requireConnectors'] as bool,
      sslConfig: map['sslConfig'] == null
          ? null
          : SslConfig2.fromMap(
              (map['sslConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
