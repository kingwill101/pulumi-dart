// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_proxy_target_proxy_target_args_doc}
/// The set of arguments for ProxyTarget.
/// {@endtemplate}
/// {@macro pulumi_rds_proxy_target_proxy_target_args_doc}
class ProxyTargetArgs {
  /// DB cluster identifier.
  ///
  /// **NOTE:** Either `db_instance_identifier` or `db_cluster_identifier` should be specified and both should not be specified together
  final pulumi.Input<String>? dbClusterIdentifier;
  /// DB instance identifier.
  final pulumi.Input<String>? dbInstanceIdentifier;
  /// The name of the DB proxy.
  final pulumi.Input<String> dbProxyName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the target group.
  final pulumi.Input<String> targetGroupName;

  /// Creates a new [ProxyTargetArgs].
  /// [dbClusterIdentifier] DB cluster identifier.
  /// [dbInstanceIdentifier] DB instance identifier.
  /// [dbProxyName] The name of the DB proxy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetGroupName] The name of the target group.
  const ProxyTargetArgs({
    this.dbClusterIdentifier,
    this.dbInstanceIdentifier,
    required this.dbProxyName,
    this.region,
    required this.targetGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterIdentifier': ?dbClusterIdentifier,
      'dbInstanceIdentifier': ?dbInstanceIdentifier,
      'dbProxyName': dbProxyName,
      'region': ?region,
      'targetGroupName': targetGroupName,
    };
  }

  factory ProxyTargetArgs.fromMap(Map<String, dynamic> map) {
    return ProxyTargetArgs(
      dbClusterIdentifier: (() { final guardedValue = map['dbClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceIdentifier: (() { final guardedValue = map['dbInstanceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbProxyName: pulumi.Input.fromValue(map['dbProxyName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetGroupName: pulumi.Input.fromValue(map['targetGroupName'] as String),
    );
  }
}

