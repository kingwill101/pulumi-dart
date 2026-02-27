// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_database_instance_setting_connection_pool_config_flag/get_database_instance_setting_connection_pool_config_flag.dart';

class GetDatabaseInstanceSettingConnectionPoolConfig {
  /// Whether Managed Connection Pool is enabled for this instance.
  final bool connectionPoolingEnabled;

  /// List of connection pool configuration flags
  final List<GetDatabaseInstanceSettingConnectionPoolConfigFlag> flags;

  GetDatabaseInstanceSettingConnectionPoolConfig({
    required this.connectionPoolingEnabled,
    required this.flags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionPoolingEnabled'] = connectionPoolingEnabled;
    map['flags'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingConnectionPoolConfigFlag,
        Map<String, dynamic>>(flags, (value) => value.toMap());
    return map;
  }

  factory GetDatabaseInstanceSettingConnectionPoolConfig.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingConnectionPoolConfig(
      connectionPoolingEnabled: map['connectionPoolingEnabled'] as bool,
      flags: pulumi.Input.decodeList<
              GetDatabaseInstanceSettingConnectionPoolConfigFlag>(
          map['flags'],
          (value) => GetDatabaseInstanceSettingConnectionPoolConfigFlag.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
