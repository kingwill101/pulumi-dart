// ignore_for_file: unused_element, unnecessary_cast

import 'instance_client_connection_config_ssl_config.dart';

class InstanceClientConnectionConfig {
  /// Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final bool? requireConnectors;

  /// SSL config option for this instance.
  /// Structure is documented below.
  final InstanceClientConnectionConfigSslConfig? sslConfig;

  /// Creates a new [InstanceClientConnectionConfig].
  /// [requireConnectors] Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  /// [sslConfig] SSL config option for this instance.
  InstanceClientConnectionConfig({
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

  factory InstanceClientConnectionConfig.fromMap(Map<String, dynamic> map) {
    return InstanceClientConnectionConfig(
      requireConnectors: map['requireConnectors'] == null
          ? null
          : map['requireConnectors'] as bool,
      sslConfig: map['sslConfig'] == null
          ? null
          : InstanceClientConnectionConfigSslConfig.fromMap(
              (map['sslConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
