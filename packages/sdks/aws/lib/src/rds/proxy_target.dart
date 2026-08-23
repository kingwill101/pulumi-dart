import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_target_args.dart';
import 'proxy_target_state.dart';

/// Provides an RDS DB proxy target resource.
///
/// &gt; **NOTE:** When the associated `aws.rds.Proxy` resource is replaced, Terraform will lose track of this resource, causing unexpected differences on the next apply. To ensure proper dependency management, add a `lifecycle` block with `replaceTriggeredBy` referencing the `aws.rds.Proxy` resource's `id` attribute.
///
/// ## Import
///
/// Provisioned Clusters:
///
///
/// **Using `pulumi import` to import** RDS DB Proxy Targets using the `dbProxyName`, `targetGroupName`, target type (such as `RDS_INSTANCE` or `TRACKED_CLUSTER`), and resource identifier separated by forward slashes (`/`). For example:
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
class ProxyTarget extends pulumi.CustomResource {
  /// DB cluster identifier.
  ///
  /// **NOTE:** Either `dbInstanceIdentifier` or `dbClusterIdentifier` should be specified and both should not be specified together
  late final pulumi.Output<String?> dbClusterIdentifier;
  /// DB instance identifier.
  late final pulumi.Output<String?> dbInstanceIdentifier;
  /// The name of the DB proxy.
  late final pulumi.Output<String> dbProxyName;
  /// Hostname for the target RDS DB Instance. Only returned for `RDS_INSTANCE` type.
  late final pulumi.Output<String> endpoint;
  /// Port for the target RDS DB Instance or Aurora DB Cluster.
  late final pulumi.Output<int> port;
  /// Identifier representing the DB Instance or DB Cluster target.
  late final pulumi.Output<String> rdsResourceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amazon Resource Name (ARN) for the DB instance or DB cluster. Currently not returned by the RDS API.
  late final pulumi.Output<String> targetArn;
  /// The name of the target group.
  late final pulumi.Output<String> targetGroupName;
  /// DB Cluster identifier for the DB Instance target. Not returned unless manually importing an `RDS_INSTANCE` target that is part of a DB Cluster.
  late final pulumi.Output<String> trackedClusterId;
  /// Type of targetE.g., `RDS_INSTANCE` or `TRACKED_CLUSTER`
  late final pulumi.Output<String> type;

  /// Creates a new [ProxyTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProxyTarget]. {@macro pulumi_rds_proxy_target_proxy_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProxyTarget(
    String name, {
    ProxyTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/proxyTarget:ProxyTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dbClusterIdentifier = registerOutput<String?>('dbClusterIdentifier');
    dbInstanceIdentifier = registerOutput<String?>('dbInstanceIdentifier');
    dbProxyName = registerOutput<String>('dbProxyName');
    endpoint = registerOutput<String>('endpoint');
    port = registerOutput<int>('port');
    rdsResourceId = registerOutput<String>('rdsResourceId');
    region = registerOutput<String>('region');
    targetArn = registerOutput<String>('targetArn');
    targetGroupName = registerOutput<String>('targetGroupName');
    trackedClusterId = registerOutput<String>('trackedClusterId');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [ProxyTarget] resource's state with the given [name] and [id].
  static ProxyTarget get(
    String name,
    pulumi.Input<String> id, {
    ProxyTargetState? state,
  }) {
    return ProxyTarget._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProxyTarget._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/proxyTarget:ProxyTarget',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dbClusterIdentifier = registerOutput<String?>('dbClusterIdentifier');
    dbInstanceIdentifier = registerOutput<String?>('dbInstanceIdentifier');
    dbProxyName = registerOutput<String>('dbProxyName');
    endpoint = registerOutput<String>('endpoint');
    port = registerOutput<int>('port');
    rdsResourceId = registerOutput<String>('rdsResourceId');
    region = registerOutput<String>('region');
    targetArn = registerOutput<String>('targetArn');
    targetGroupName = registerOutput<String>('targetGroupName');
    trackedClusterId = registerOutput<String>('trackedClusterId');
    type = registerOutput<String>('type');
  }
}
