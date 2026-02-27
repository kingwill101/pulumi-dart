import 'package:pulumi/pulumi.dart';
import 'proxy_target_args.dart';

/// Provides an RDS DB proxy target resource.
///
/// > **NOTE:** When the associated `aws.rds.Proxy` resource is replaced, Terraform will lose track of this resource, causing unexpected differences on the next apply. To ensure proper dependency management, add a `lifecycle` block with `replace_triggered_by` referencing the `aws.rds.Proxy` resource's `id` attribute.
///
/// ## Import
///
/// Provisioned Clusters:
///
///
/// **Using `pulumi import` to import** RDS DB Proxy Targets using the `db_proxy_name`, `target_group_name`, target type (such as `RDS_INSTANCE` or `TRACKED_CLUSTER`), and resource identifier separated by forward slashes (`/`). For example:
///
/// Instances:
///
/// ```sh
/// $ pulumi import aws:rds/proxyTarget:ProxyTarget example example-proxy/default/RDS_INSTANCE/example-instance
/// ```
///
/// Provisioned Clusters:
///
/// ```sh
/// $ pulumi import aws:rds/proxyTarget:ProxyTarget example example-proxy/default/TRACKED_CLUSTER/example-cluster
/// ```
class ProxyTarget extends CustomResource {
  /// DB cluster identifier.
  ///
  /// **NOTE:** Either `db_instance_identifier` or `db_cluster_identifier` should be specified and both should not be specified together
  late final Output<String?> dbClusterIdentifier;

  /// DB instance identifier.
  late final Output<String?> dbInstanceIdentifier;

  /// The name of the DB proxy.
  late final Output<String> dbProxyName;

  /// Hostname for the target RDS DB Instance. Only returned for `RDS_INSTANCE` type.
  late final Output<String> endpoint;

  /// Port for the target RDS DB Instance or Aurora DB Cluster.
  late final Output<int> port;

  /// Identifier representing the DB Instance or DB Cluster target.
  late final Output<String> rdsResourceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) for the DB instance or DB cluster. Currently not returned by the RDS API.
  late final Output<String> targetArn;

  /// The name of the target group.
  late final Output<String> targetGroupName;

  /// DB Cluster identifier for the DB Instance target. Not returned unless manually importing an `RDS_INSTANCE` target that is part of a DB Cluster.
  late final Output<String> trackedClusterId;

  /// Type of targetE.g., `RDS_INSTANCE` or `TRACKED_CLUSTER`
  late final Output<String> type;

  ProxyTarget(
    String name, {
    ProxyTargetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/proxyTarget:ProxyTarget',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dbClusterIdentifier = registerOutput<String?>('dbClusterIdentifier');
    this.dbInstanceIdentifier = registerOutput<String?>('dbInstanceIdentifier');
    this.dbProxyName = registerOutput<String>('dbProxyName');
    this.endpoint = registerOutput<String>('endpoint');
    this.port = registerOutput<int>('port');
    this.rdsResourceId = registerOutput<String>('rdsResourceId');
    this.region = registerOutput<String>('region');
    this.targetArn = registerOutput<String>('targetArn');
    this.targetGroupName = registerOutput<String>('targetGroupName');
    this.trackedClusterId = registerOutput<String>('trackedClusterId');
    this.type = registerOutput<String>('type');
  }
}
