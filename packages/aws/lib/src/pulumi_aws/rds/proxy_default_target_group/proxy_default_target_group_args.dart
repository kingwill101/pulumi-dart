// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../proxy_default_target_group_connection_pool_config/proxy_default_target_group_connection_pool_config.dart';

/// The set of arguments for ProxyDefaultTargetGroup.
class ProxyDefaultTargetGroupArgs {
  /// The settings that determine the size and behavior of the connection pool for the target group.
  final Input<ProxyDefaultTargetGroupConnectionPoolConfig>?
      connectionPoolConfig;

  /// Name of the RDS DB Proxy.
  final Input<String> dbProxyName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  ProxyDefaultTargetGroupArgs({
    this.connectionPoolConfig,
    required this.dbProxyName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionPoolConfigValue = connectionPoolConfig;
    if (connectionPoolConfigValue != null) {
      map['connectionPoolConfig'] = Input.mapOptionalInputValue<
              ProxyDefaultTargetGroupConnectionPoolConfig,
              Map<String, dynamic>>(
          connectionPoolConfigValue, (value) => value.toMap());
    }
    map['dbProxyName'] = dbProxyName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ProxyDefaultTargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return ProxyDefaultTargetGroupArgs(
      connectionPoolConfig:
          Input.asOptionalInput<ProxyDefaultTargetGroupConnectionPoolConfig>(
              map['connectionPoolConfig']),
      dbProxyName: Input.asInput<String>(map['dbProxyName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
