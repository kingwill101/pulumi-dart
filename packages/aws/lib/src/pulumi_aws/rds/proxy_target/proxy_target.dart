import 'package:pulumi/pulumi.dart';
import 'proxy_target_args.dart';

/// Provides an RDS DB proxy target resource.
///
/// > **NOTE:** When the associated <span pulumi-lang-nodejs="`aws.rds.Proxy`" pulumi-lang-dotnet="`aws.rds.Proxy`" pulumi-lang-go="`rds.Proxy`" pulumi-lang-python="`rds.Proxy`" pulumi-lang-yaml="`aws.rds.Proxy`" pulumi-lang-java="`aws.rds.Proxy`">`aws.rds.Proxy`</span> resource is replaced, Terraform will lose track of this resource, causing unexpected differences on the next apply. To ensure proper dependency management, add a <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> block with <span pulumi-lang-nodejs="`replaceTriggeredBy`" pulumi-lang-dotnet="`ReplaceTriggeredBy`" pulumi-lang-go="`replaceTriggeredBy`" pulumi-lang-python="`replace_triggered_by`" pulumi-lang-yaml="`replaceTriggeredBy`" pulumi-lang-java="`replaceTriggeredBy`">`replace_triggered_by`</span> referencing the <span pulumi-lang-nodejs="`aws.rds.Proxy`" pulumi-lang-dotnet="`aws.rds.Proxy`" pulumi-lang-go="`rds.Proxy`" pulumi-lang-python="`rds.Proxy`" pulumi-lang-yaml="`aws.rds.Proxy`" pulumi-lang-java="`aws.rds.Proxy`">`aws.rds.Proxy`</span> resource's <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> attribute.
///
/// ## Import
///
/// Provisioned Clusters:
///
///
/// **Using `pulumi import` to import** RDS DB Proxy Targets using the <span pulumi-lang-nodejs="`dbProxyName`" pulumi-lang-dotnet="`DbProxyName`" pulumi-lang-go="`dbProxyName`" pulumi-lang-python="`db_proxy_name`" pulumi-lang-yaml="`dbProxyName`" pulumi-lang-java="`dbProxyName`">`db_proxy_name`</span>, <span pulumi-lang-nodejs="`targetGroupName`" pulumi-lang-dotnet="`TargetGroupName`" pulumi-lang-go="`targetGroupName`" pulumi-lang-python="`target_group_name`" pulumi-lang-yaml="`targetGroupName`" pulumi-lang-java="`targetGroupName`">`target_group_name`</span>, target type (such as `RDS_INSTANCE` or `TRACKED_CLUSTER`), and resource identifier separated by forward slashes (`/`). For example:
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
  /// **NOTE:** Either <span pulumi-lang-nodejs="`dbInstanceIdentifier`" pulumi-lang-dotnet="`DbInstanceIdentifier`" pulumi-lang-go="`dbInstanceIdentifier`" pulumi-lang-python="`db_instance_identifier`" pulumi-lang-yaml="`dbInstanceIdentifier`" pulumi-lang-java="`dbInstanceIdentifier`">`db_instance_identifier`</span> or <span pulumi-lang-nodejs="`dbClusterIdentifier`" pulumi-lang-dotnet="`DbClusterIdentifier`" pulumi-lang-go="`dbClusterIdentifier`" pulumi-lang-python="`db_cluster_identifier`" pulumi-lang-yaml="`dbClusterIdentifier`" pulumi-lang-java="`dbClusterIdentifier`">`db_cluster_identifier`</span> should be specified and both should not be specified together
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
    this.dbClusterIdentifier = Output.createUnknown<String?>();
    this.dbInstanceIdentifier = Output.createUnknown<String?>();
    this.dbProxyName = Output.createUnknown<String>();
    this.endpoint = Output.createUnknown<String>();
    this.port = Output.createUnknown<int>();
    this.rdsResourceId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.targetArn = Output.createUnknown<String>();
    this.targetGroupName = Output.createUnknown<String>();
    this.trackedClusterId = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
  }
}
