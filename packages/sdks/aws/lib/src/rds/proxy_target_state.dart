// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProxyTarget resources.
class ProxyTargetState {
  /// DB cluster identifier.
  ///
  /// **NOTE:** Either `dbInstanceIdentifier` or `dbClusterIdentifier` should be specified and both should not be specified together
  final pulumi.Input<String?>? dbClusterIdentifier;
  /// DB instance identifier.
  final pulumi.Input<String?>? dbInstanceIdentifier;
  /// The name of the DB proxy.
  final pulumi.Input<String?>? dbProxyName;
  /// Hostname for the target RDS DB Instance. Only returned for `RDS_INSTANCE` type.
  final pulumi.Input<String?>? endpoint;
  /// Port for the target RDS DB Instance or Aurora DB Cluster.
  final pulumi.Input<int?>? port;
  /// Identifier representing the DB Instance or DB Cluster target.
  final pulumi.Input<String?>? rdsResourceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN for the DB instance or DB cluster. Currently not returned by the RDS API.
  final pulumi.Input<String?>? targetArn;
  /// The name of the target group.
  final pulumi.Input<String?>? targetGroupName;
  /// DB Cluster identifier for the DB Instance target. Not returned unless manually importing an `RDS_INSTANCE` target that is part of a DB Cluster.
  final pulumi.Input<String?>? trackedClusterId;
  /// Type of targetE.g., `RDS_INSTANCE` or `TRACKED_CLUSTER`
  final pulumi.Input<String?>? type;

  /// Creates a new [ProxyTargetState].
  /// [dbClusterIdentifier] DB cluster identifier.
  /// [dbInstanceIdentifier] DB instance identifier.
  /// [dbProxyName] The name of the DB proxy.
  /// [endpoint] Hostname for the target RDS DB Instance. Only returned for `RDS_INSTANCE` type.
  /// [port] Port for the target RDS DB Instance or Aurora DB Cluster.
  /// [rdsResourceId] Identifier representing the DB Instance or DB Cluster target.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetArn] ARN for the DB instance or DB cluster. Currently not returned by the RDS API.
  /// [targetGroupName] The name of the target group.
  /// [trackedClusterId] DB Cluster identifier for the DB Instance target. Not returned unless manually importing an `RDS_INSTANCE` target that is part of a DB Cluster.
  /// [type] Type of targetE.g., `RDS_INSTANCE` or `TRACKED_CLUSTER`
  const ProxyTargetState({
    this.dbClusterIdentifier,
    this.dbInstanceIdentifier,
    this.dbProxyName,
    this.endpoint,
    this.port,
    this.rdsResourceId,
    this.region,
    this.targetArn,
    this.targetGroupName,
    this.trackedClusterId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterIdentifier': ?dbClusterIdentifier,
      'dbInstanceIdentifier': ?dbInstanceIdentifier,
      'dbProxyName': ?dbProxyName,
      'endpoint': ?endpoint,
      'port': ?port,
      'rdsResourceId': ?rdsResourceId,
      'region': ?region,
      'targetArn': ?targetArn,
      'targetGroupName': ?targetGroupName,
      'trackedClusterId': ?trackedClusterId,
      'type': ?type,
    };
  }

  factory ProxyTargetState.fromMap(Map<String, dynamic> map) {
    return ProxyTargetState(
      dbClusterIdentifier: (() { final guardedValue = map['dbClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceIdentifier: (() { final guardedValue = map['dbInstanceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbProxyName: (() { final guardedValue = map['dbProxyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      rdsResourceId: (() { final guardedValue = map['rdsResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetArn: (() { final guardedValue = map['targetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetGroupName: (() { final guardedValue = map['targetGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trackedClusterId: (() { final guardedValue = map['trackedClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
