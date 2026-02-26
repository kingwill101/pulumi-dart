// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ProxyTarget.
class ProxyTargetArgs {
  /// DB cluster identifier.
  ///
  /// **NOTE:** Either <span pulumi-lang-nodejs="`dbInstanceIdentifier`" pulumi-lang-dotnet="`DbInstanceIdentifier`" pulumi-lang-go="`dbInstanceIdentifier`" pulumi-lang-python="`db_instance_identifier`" pulumi-lang-yaml="`dbInstanceIdentifier`" pulumi-lang-java="`dbInstanceIdentifier`">`db_instance_identifier`</span> or <span pulumi-lang-nodejs="`dbClusterIdentifier`" pulumi-lang-dotnet="`DbClusterIdentifier`" pulumi-lang-go="`dbClusterIdentifier`" pulumi-lang-python="`db_cluster_identifier`" pulumi-lang-yaml="`dbClusterIdentifier`" pulumi-lang-java="`dbClusterIdentifier`">`db_cluster_identifier`</span> should be specified and both should not be specified together
  final Input<String>? dbClusterIdentifier;

  /// DB instance identifier.
  final Input<String>? dbInstanceIdentifier;

  /// The name of the DB proxy.
  final Input<String> dbProxyName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the target group.
  final Input<String> targetGroupName;

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
          Input.asOptionalInput<String>(map['dbClusterIdentifier']),
      dbInstanceIdentifier:
          Input.asOptionalInput<String>(map['dbInstanceIdentifier']),
      dbProxyName: Input.asInput<String>(map['dbProxyName']),
      region: Input.asOptionalInput<String>(map['region']),
      targetGroupName: Input.asInput<String>(map['targetGroupName']),
    );
  }
}
