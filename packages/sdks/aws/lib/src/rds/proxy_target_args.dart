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
  ProxyTargetArgs({
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
      dbClusterIdentifier: map['dbClusterIdentifier'] == null ? null : (map['dbClusterIdentifier'] as String).input(),
      dbInstanceIdentifier: map['dbInstanceIdentifier'] == null ? null : (map['dbInstanceIdentifier'] as String).input(),
      dbProxyName: (map['dbProxyName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      targetGroupName: (map['targetGroupName'] as String).input(),
    );
  }
}

