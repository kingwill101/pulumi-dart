// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ProxyTarget.
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

  ProxyTargetArgs({
    this.dbClusterIdentifier,
    this.dbInstanceIdentifier,
    required this.dbProxyName,
    this.region,
    required this.targetGroupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dbClusterIdentifierValue = dbClusterIdentifier;
    if (dbClusterIdentifierValue != null) {
      map['dbClusterIdentifier'] = dbClusterIdentifierValue;
    }
    final dbInstanceIdentifierValue = dbInstanceIdentifier;
    if (dbInstanceIdentifierValue != null) {
      map['dbInstanceIdentifier'] = dbInstanceIdentifierValue;
    }
    map['dbProxyName'] = dbProxyName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['targetGroupName'] = targetGroupName;
    return map;
  }

  factory ProxyTargetArgs.fromMap(Map<String, dynamic> map) {
    return ProxyTargetArgs(
      dbClusterIdentifier:
          pulumi.Input.asOptionalInput<String>(map['dbClusterIdentifier']),
      dbInstanceIdentifier:
          pulumi.Input.asOptionalInput<String>(map['dbInstanceIdentifier']),
      dbProxyName: pulumi.Input.asInput<String>(map['dbProxyName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      targetGroupName: pulumi.Input.asInput<String>(map['targetGroupName']),
    );
  }
}
