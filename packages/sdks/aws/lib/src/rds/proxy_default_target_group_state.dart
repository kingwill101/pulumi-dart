// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_default_target_group_connection_pool_config.dart';

/// Input properties used for looking up and filtering ProxyDefaultTargetGroup resources.
class ProxyDefaultTargetGroupState {
  /// The Amazon Resource Name (ARN) representing the target group.
  final pulumi.Input<String>? arn;
  /// The settings that determine the size and behavior of the connection pool for the target group.
  final pulumi.Input<ProxyDefaultTargetGroupConnectionPoolConfig>? connectionPoolConfig;
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
    pulumi.Output<String>? arn,
    pulumi.Output<ProxyDefaultTargetGroupConnectionPoolConfig>? connectionPoolConfig,
    pulumi.Output<String>? dbProxyName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      connectionPoolConfig = pulumi.Input.asOptionalInput<ProxyDefaultTargetGroupConnectionPoolConfig>(connectionPoolConfig),
      dbProxyName = pulumi.Input.asOptionalInput<String>(dbProxyName),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'connectionPoolConfig': ?pulumi.Input.mapOptionalInputValue<ProxyDefaultTargetGroupConnectionPoolConfig, Map<String, dynamic>>(connectionPoolConfig, (value) => value.toMap()),
      'dbProxyName': ?dbProxyName,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ProxyDefaultTargetGroupState.fromMap(Map<String, dynamic> map) {
    return ProxyDefaultTargetGroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      connectionPoolConfig: map['connectionPoolConfig'] == null ? null : pulumi.Output.create<ProxyDefaultTargetGroupConnectionPoolConfig>(ProxyDefaultTargetGroupConnectionPoolConfig.fromMap((map['connectionPoolConfig'] as Map).cast<String, dynamic>())),
      dbProxyName: map['dbProxyName'] == null ? null : pulumi.Output.create<String>(map['dbProxyName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

