import 'package:pulumi/pulumi.dart';
import '../global_cluster_global_cluster_member/global_cluster_global_cluster_member.dart';
import 'global_cluster_args.dart';

/// Manages an DocumentDB Global Cluster. A global cluster consists of one primary region and up to five read-only secondary regions. You issue write operations directly to the primary cluster in the primary region and Amazon DocumentDB automatically replicates the data to the secondary regions using dedicated infrastructure.
///
/// More information about DocumentDB Global Clusters can be found in the [DocumentDB Developer Guide](https://docs.aws.amazon.com/documentdb/latest/developerguide/global-clusters.html).
///
/// ## Example Usage
///
/// ### New DocumentDB Global Cluster
///
///
///
/// ### New Global Cluster From Existing DB Cluster
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.docdb.GlobalCluster` using the Global Cluster identifier. For example:
///
/// ```sh
/// $ pulumi import aws:docdb/globalCluster:GlobalCluster example example
/// ```
///
/// Certain resource arguments, like `source_db_cluster_identifier`, do not have an API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
class GlobalCluster extends CustomResource {
  /// Global Cluster Amazon Resource Name (ARN)
  late final Output<String> arn;

  /// Name for an automatically created database on cluster creation.
  late final Output<String?> databaseName;

  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  late final Output<bool?> deletionProtection;

  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: `docdb`. Defaults to `docdb`. Conflicts with `source_db_cluster_identifier`.
  late final Output<String> engine;

  /// Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  /// * **NOTE:** Upgrading major versions is not supported.
  late final Output<String> engineVersion;

  /// The global cluster identifier.
  late final Output<String> globalClusterIdentifier;

  /// Set of objects containing Global Cluster members.
  late final Output<List<GlobalClusterGlobalClusterMember>>
      globalClusterMembers;

  /// AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  late final Output<String> globalClusterResourceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value.
  late final Output<String> sourceDbClusterIdentifier;
  late final Output<String> status;

  /// Specifies whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  late final Output<bool> storageEncrypted;

  GlobalCluster(
    String name, {
    GlobalClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:docdb/globalCluster:GlobalCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.databaseName = registerOutput<String?>('databaseName');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.globalClusterIdentifier =
        registerOutput<String>('globalClusterIdentifier');
    this.globalClusterMembers =
        registerOutput<List<GlobalClusterGlobalClusterMember>>(
            'globalClusterMembers');
    this.globalClusterResourceId =
        registerOutput<String>('globalClusterResourceId');
    this.region = registerOutput<String>('region');
    this.sourceDbClusterIdentifier =
        registerOutput<String>('sourceDbClusterIdentifier');
    this.status = registerOutput<String>('status');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
  }
}
