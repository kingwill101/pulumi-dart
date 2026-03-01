// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProxyTarget resources.
class ProxyTargetState {
  /// DB cluster identifier.
  ///
  /// **NOTE:** Either `db_instance_identifier` or `db_cluster_identifier` should be specified and both should not be specified together
  final pulumi.Input<String>? dbClusterIdentifier;
  /// DB instance identifier.
  final pulumi.Input<String>? dbInstanceIdentifier;
  /// The name of the DB proxy.
  final pulumi.Input<String>? dbProxyName;
  /// Hostname for the target RDS DB Instance. Only returned for `RDS_INSTANCE` type.
  final pulumi.Input<String>? endpoint;
  /// Port for the target RDS DB Instance or Aurora DB Cluster.
  final pulumi.Input<int>? port;
  /// Identifier representing the DB Instance or DB Cluster target.
  final pulumi.Input<String>? rdsResourceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) for the DB instance or DB cluster. Currently not returned by the RDS API.
  final pulumi.Input<String>? targetArn;
  /// The name of the target group.
  final pulumi.Input<String>? targetGroupName;
  /// DB Cluster identifier for the DB Instance target. Not returned unless manually importing an `RDS_INSTANCE` target that is part of a DB Cluster.
  final pulumi.Input<String>? trackedClusterId;
  /// Type of targetE.g., `RDS_INSTANCE` or `TRACKED_CLUSTER`
  final pulumi.Input<String>? type;

  /// Creates a new [ProxyTargetState].
  /// [dbClusterIdentifier] DB cluster identifier.
  /// [dbInstanceIdentifier] DB instance identifier.
  /// [dbProxyName] The name of the DB proxy.
  /// [endpoint] Hostname for the target RDS DB Instance. Only returned for `RDS_INSTANCE` type.
  /// [port] Port for the target RDS DB Instance or Aurora DB Cluster.
  /// [rdsResourceId] Identifier representing the DB Instance or DB Cluster target.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetArn] Amazon Resource Name (ARN) for the DB instance or DB cluster. Currently not returned by the RDS API.
  /// [targetGroupName] The name of the target group.
  /// [trackedClusterId] DB Cluster identifier for the DB Instance target. Not returned unless manually importing an `RDS_INSTANCE` target that is part of a DB Cluster.
  /// [type] Type of targetE.g., `RDS_INSTANCE` or `TRACKED_CLUSTER`
  ProxyTargetState({
    pulumi.Output<String>? dbClusterIdentifier,
    pulumi.Output<String>? dbInstanceIdentifier,
    pulumi.Output<String>? dbProxyName,
    pulumi.Output<String>? endpoint,
    pulumi.Output<int>? port,
    pulumi.Output<String>? rdsResourceId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? targetArn,
    pulumi.Output<String>? targetGroupName,
    pulumi.Output<String>? trackedClusterId,
    pulumi.Output<String>? type,
  }) :
      dbClusterIdentifier = pulumi.Input.asOptionalInput<String>(dbClusterIdentifier),
      dbInstanceIdentifier = pulumi.Input.asOptionalInput<String>(dbInstanceIdentifier),
      dbProxyName = pulumi.Input.asOptionalInput<String>(dbProxyName),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      port = pulumi.Input.asOptionalInput<int>(port),
      rdsResourceId = pulumi.Input.asOptionalInput<String>(rdsResourceId),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetArn = pulumi.Input.asOptionalInput<String>(targetArn),
      targetGroupName = pulumi.Input.asOptionalInput<String>(targetGroupName),
      trackedClusterId = pulumi.Input.asOptionalInput<String>(trackedClusterId),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      dbClusterIdentifier: map['dbClusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['dbClusterIdentifier'] as String),
      dbInstanceIdentifier: map['dbInstanceIdentifier'] == null ? null : pulumi.Output.create<String>(map['dbInstanceIdentifier'] as String),
      dbProxyName: map['dbProxyName'] == null ? null : pulumi.Output.create<String>(map['dbProxyName'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      rdsResourceId: map['rdsResourceId'] == null ? null : pulumi.Output.create<String>(map['rdsResourceId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      targetArn: map['targetArn'] == null ? null : pulumi.Output.create<String>(map['targetArn'] as String),
      targetGroupName: map['targetGroupName'] == null ? null : pulumi.Output.create<String>(map['targetGroupName'] as String),
      trackedClusterId: map['trackedClusterId'] == null ? null : pulumi.Output.create<String>(map['trackedClusterId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

