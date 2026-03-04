// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_default_target_group_connection_pool_config.dart';

/// Input properties used for looking up and filtering ProxyDefaultTargetGroup resources.
class ProxyDefaultTargetGroupState {
  /// The Amazon Resource Name (ARN) representing the target group.
  final pulumi.Input<String>? arn;

  /// The settings that determine the size and behavior of the connection pool for the target group.
  final pulumi.Input<ProxyDefaultTargetGroupConnectionPoolConfig>?
  connectionPoolConfig;

  /// Name of the RDS DB Proxy.
  final pulumi.Input<String>? dbProxyName;

  /// The name of the default target group.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ProxyDefaultTargetGroupState].
  /// [arn] The Amazon Resource Name (ARN) representing the target group.
  /// [connectionPoolConfig] The settings that determine the size and behavior of the connection pool for the target group.
  /// [dbProxyName] Name of the RDS DB Proxy.
  /// [name] The name of the default target group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ProxyDefaultTargetGroupState({
    this.arn,
    this.connectionPoolConfig,
    this.dbProxyName,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'connectionPoolConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ProxyDefaultTargetGroupConnectionPoolConfig,
            Map<String, dynamic>
          >(connectionPoolConfig, (value) => value.toMap()),
      'dbProxyName': ?dbProxyName,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ProxyDefaultTargetGroupState.fromMap(Map<String, dynamic> map) {
    return ProxyDefaultTargetGroupState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionPoolConfig: (() {
        final guardedValue = map['connectionPoolConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProxyDefaultTargetGroupConnectionPoolConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dbProxyName: (() {
        final guardedValue = map['dbProxyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
