import 'package:pulumi/pulumi.dart' as pulumi;
import '../global_cluster_global_cluster_member/global_cluster_global_cluster_member_rds.dart';
import 'global_cluster_rds_args.dart';

/// Manages an RDS Global Cluster, which is an Aurora global database spread across multiple regions. The global database contains a single primary cluster with read-write capability, and a read-only secondary cluster that receives data from the primary cluster through high-speed replication performed by the Aurora storage subsystem.
///
/// More information about Aurora global databases can be found in the [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html#aurora-global-database-creating).
///
/// ## Example Usage
///
/// ### New MySQL Global Cluster
///
///
///
/// ### New PostgreSQL Global Cluster
///
///
///
/// ### New Global Cluster From Existing DB Cluster
///
///
///
/// ### Upgrading Engine Versions
///
/// When you upgrade the version of an `aws.rds.GlobalCluster`, the provider will attempt to in-place upgrade the engine versions of all associated clusters. Since the `aws.rds.Cluster` resource is being updated through the `aws.rds.GlobalCluster`, you are likely to get an error (`Provider produced inconsistent final plan`). To avoid this, use the `lifecycle` `ignore_changes` meta argument as shown below on the `aws.rds.Cluster`.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rds.GlobalCluster` using the RDS Global Cluster identifier. For example:
///
/// ```sh
/// $ pulumi import aws:rds/globalCluster:GlobalCluster example example
/// ```
///
/// Certain resource arguments, like `force_destroy`, only exist within this provider. If the argument is set in the the provider configuration on an imported resource, This provider will show a difference on the first plan after import to update the state value. This change is safe to apply immediately so the state matches the desired configuration.
///
/// Certain resource arguments, like `source_db_cluster_identifier`, do not have an API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
class GlobalClusterRds extends pulumi.CustomResource {
  /// RDS Global Cluster Amazon Resource Name (ARN).
  late final pulumi.Output<String> arn;

  /// Name for an automatically created database on cluster creation. Pulumi will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<String> databaseName;

  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  late final pulumi.Output<bool?> deletionProtection;

  /// Writer endpoint for the new global database cluster. This endpoint always points to the writer DB instance in the current primary cluster.
  late final pulumi.Output<String> endpoint;

  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Valid values: `aurora`, `aurora-mysql`, `aurora-postgresql`. Defaults to `aurora`. Conflicts with `source_db_cluster_identifier`.
  late final pulumi.Output<String> engine;

  /// The life cycle type for this DB instance. This setting applies only to Aurora PostgreSQL-based global databases. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  late final pulumi.Output<String> engineLifecycleSupport;

  /// Engine version of the Aurora global database. The `engine`, `engine_version`, and `instance_class` (on the `aws.rds.ClusterInstance`) must together support global databases. See [Using Amazon Aurora global databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html) for more information. By upgrading the engine version, the provider will upgrade cluster members. **NOTE:** To avoid an `inconsistent final plan` error while upgrading, use the `lifecycle` `ignore_changes` for `engine_version` meta argument on the associated `aws.rds.Cluster` resource as shown above in Upgrading Engine Versions example.
  late final pulumi.Output<String> engineVersion;
  late final pulumi.Output<String> engineVersionActual;

  /// Enable to remove DB Cluster members from Global Cluster on destroy. Required with `source_db_cluster_identifier`.
  late final pulumi.Output<bool?> forceDestroy;

  /// Global cluster identifier.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> globalClusterIdentifier;

  /// Set of objects containing Global Cluster members.
  late final pulumi.Output<List<GlobalClusterGlobalClusterMemberRds>>
      globalClusterMembers;

  /// AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  late final pulumi.Output<String> globalClusterResourceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value. **NOTE:** After initial creation, this argument can be removed and replaced with `engine` and `engine_version`. This allows upgrading the engine version of the Global Cluster.
  late final pulumi.Output<String> sourceDbClusterIdentifier;

  /// Specifies whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<bool> storageEncrypted;

  /// A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > When both `source_db_cluster_identifier` and `engine`/`engine_version` are set, all engine related values will be ignored during creation. The global cluster will inherit the `engine` and `engine_version` values from the source cluster. After the first apply, any differences between the inherited and configured values will trigger an in-place update.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  GlobalClusterRds(
    String name, {
    GlobalClusterRdsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/globalCluster:GlobalCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.databaseName = registerOutput<String>('databaseName');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.endpoint = registerOutput<String>('endpoint');
    this.engine = registerOutput<String>('engine');
    this.engineLifecycleSupport =
        registerOutput<String>('engineLifecycleSupport');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.engineVersionActual = registerOutput<String>('engineVersionActual');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.globalClusterIdentifier =
        registerOutput<String>('globalClusterIdentifier');
    this.globalClusterMembers =
        registerOutput<List<GlobalClusterGlobalClusterMemberRds>>(
            'globalClusterMembers');
    this.globalClusterResourceId =
        registerOutput<String>('globalClusterResourceId');
    this.region = registerOutput<String>('region');
    this.sourceDbClusterIdentifier =
        registerOutput<String>('sourceDbClusterIdentifier');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
