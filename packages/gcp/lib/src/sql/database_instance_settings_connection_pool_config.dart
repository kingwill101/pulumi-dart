// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_settings_connection_pool_config_flag.dart';

class DatabaseInstanceSettingsConnectionPoolConfig {
  /// True if the manager connection pooling configuration is enabled.
  final bool? connectionPoolingEnabled;

  /// List of connection pool configuration flags
  final List<DatabaseInstanceSettingsConnectionPoolConfigFlag>? flags;

  /// Creates a new [DatabaseInstanceSettingsConnectionPoolConfig].
  /// [connectionPoolingEnabled] True if the manager connection pooling configuration is enabled.
  /// [flags] List of connection pool configuration flags
  DatabaseInstanceSettingsConnectionPoolConfig({
    this.connectionPoolingEnabled,
    this.flags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionPoolingEnabledValue = connectionPoolingEnabled;
    if (connectionPoolingEnabledValue != null) {
      map['connectionPoolingEnabled'] = connectionPoolingEnabledValue;
    }
    final flagsValue = flags;
    if (flagsValue != null) {
      map['flags'] = pulumi.Input.encodeList<
          DatabaseInstanceSettingsConnectionPoolConfigFlag,
          Map<String, dynamic>>(flagsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DatabaseInstanceSettingsConnectionPoolConfig.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsConnectionPoolConfig(
      connectionPoolingEnabled: map['connectionPoolingEnabled'] == null
          ? null
          : map['connectionPoolingEnabled'] as bool,
      flags: map['flags'] == null
          ? null
          : pulumi.Input.decodeList<
                  DatabaseInstanceSettingsConnectionPoolConfigFlag>(
              map['flags'],
              (value) =>
                  DatabaseInstanceSettingsConnectionPoolConfigFlag.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
