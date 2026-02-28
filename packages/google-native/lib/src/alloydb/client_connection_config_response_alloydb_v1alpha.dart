// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_config_response_alloydb_v1alpha.dart';

/// Client connection configuration
class ClientConnectionConfigResponseAlloydbV1alpha {
  /// Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final bool requireConnectors;

  /// Optional. SSL config option for this instance.
  final SslConfigResponseAlloydbV1alpha sslConfig;

  /// Creates a new [ClientConnectionConfigResponseAlloydbV1alpha].
  /// [requireConnectors] Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  /// [sslConfig] Optional. SSL config option for this instance.
  ClientConnectionConfigResponseAlloydbV1alpha({
    required this.requireConnectors,
    required this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requireConnectors'] = requireConnectors;
    map['sslConfig'] = sslConfig.toMap();
    return map;
  }

  factory ClientConnectionConfigResponseAlloydbV1alpha.fromMap(
      Map<String, dynamic> map) {
    return ClientConnectionConfigResponseAlloydbV1alpha(
      requireConnectors: map['requireConnectors'] as bool,
      sslConfig: SslConfigResponseAlloydbV1alpha.fromMap(
          (map['sslConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
