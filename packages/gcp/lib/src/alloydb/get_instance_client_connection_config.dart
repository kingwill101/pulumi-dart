// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_client_connection_config_ssl_config.dart';

class GetInstanceClientConnectionConfig {
  /// Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  final bool requireConnectors;

  /// SSL config option for this instance.
  final List<GetInstanceClientConnectionConfigSslConfig> sslConfigs;

  /// Creates a new [GetInstanceClientConnectionConfig].
  /// [requireConnectors] Configuration to enforce connectors only (ex: AuthProxy) connections to the database.
  /// [sslConfigs] SSL config option for this instance.
  GetInstanceClientConnectionConfig({
    required this.requireConnectors,
    required this.sslConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requireConnectors'] = requireConnectors;
    map['sslConfigs'] = pulumi.Input.encodeList<
        GetInstanceClientConnectionConfigSslConfig,
        Map<String, dynamic>>(sslConfigs, (value) => value.toMap());
    return map;
  }

  factory GetInstanceClientConnectionConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceClientConnectionConfig(
      requireConnectors: map['requireConnectors'] as bool,
      sslConfigs:
          pulumi.Input.decodeList<GetInstanceClientConnectionConfigSslConfig>(
              map['sslConfigs'],
              (value) => GetInstanceClientConnectionConfigSslConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
