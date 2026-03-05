// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_default_target_group_connection_pool_config.dart';

/// {@template pulumi_rds_proxy_default_target_group_proxy_default_target_group_args_doc}
/// The set of arguments for ProxyDefaultTargetGroup.
/// {@endtemplate}
/// {@macro pulumi_rds_proxy_default_target_group_proxy_default_target_group_args_doc}
class ProxyDefaultTargetGroupArgs {
  /// The settings that determine the size and behavior of the connection pool for the target group.
  final pulumi.Input<ProxyDefaultTargetGroupConnectionPoolConfig>? connectionPoolConfig;
  /// Name of the RDS DB Proxy.
  final pulumi.Input<String> dbProxyName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ProxyDefaultTargetGroupArgs].
  /// [connectionPoolConfig] The settings that determine the size and behavior of the connection pool for the target group.
  /// [dbProxyName] Name of the RDS DB Proxy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ProxyDefaultTargetGroupArgs({
    this.connectionPoolConfig,
    required this.dbProxyName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPoolConfig': ?pulumi.Input.mapOptionalInputValue<ProxyDefaultTargetGroupConnectionPoolConfig, Map<String, dynamic>>(connectionPoolConfig, (value) => value.toMap()),
      'dbProxyName': dbProxyName,
      'region': ?region,
    };
  }

  factory ProxyDefaultTargetGroupArgs.fromMap(Map<String, dynamic> map) {
    return ProxyDefaultTargetGroupArgs(
      connectionPoolConfig: (() { final guardedValue = map['connectionPoolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProxyDefaultTargetGroupConnectionPoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dbProxyName: pulumi.Input.fromValue(map['dbProxyName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

