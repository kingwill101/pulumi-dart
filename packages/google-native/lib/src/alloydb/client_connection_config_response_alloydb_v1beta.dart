// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_config_response_alloydb_v1beta.dart';

/// Client connection configuration
class ClientConnectionConfigResponseAlloydbV1beta {
  /// Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final bool requireConnectors;

  /// Optional. SSL config option for this instance.
  final SslConfigResponseAlloydbV1beta sslConfig;

  /// Creates a new [ClientConnectionConfigResponseAlloydbV1beta].
  /// [requireConnectors] Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  /// [sslConfig] Optional. SSL config option for this instance.
  ClientConnectionConfigResponseAlloydbV1beta({
    required this.requireConnectors,
    required this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requireConnectors'] = requireConnectors;
    map['sslConfig'] = sslConfig.toMap();
    return map;
  }

  factory ClientConnectionConfigResponseAlloydbV1beta.fromMap(
      Map<String, dynamic> map) {
    return ClientConnectionConfigResponseAlloydbV1beta(
      requireConnectors: map['requireConnectors'] as bool,
      sslConfig: SslConfigResponseAlloydbV1beta.fromMap(
          (map['sslConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
