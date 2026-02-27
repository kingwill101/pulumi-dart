import 'package:pulumi/pulumi.dart' as pulumi;
import '../global_cluster_global_cluster_member/global_cluster_global_cluster_member_neptune.dart';
import 'global_cluster_neptune_args.dart';

/// Manages a Neptune Global Cluster. A global cluster consists of one primary region and up to five read-only secondary regions. You issue write operations directly to the primary cluster in the primary region and Amazon Neptune automatically replicates the data to the secondary regions using dedicated infrastructure.
///
/// More information about Neptune Global Clusters can be found in the [Neptune User Guide](https://docs.aws.amazon.com/neptune/latest/userguide/neptune-global-database.html).
///
/// ## Example Usage
///
/// ### New Neptune Global Cluster
///
///
///
/// ### New Global Cluster From Existing DB Cluster
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.neptune.GlobalCluster` using the Global Cluster identifier. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/globalCluster:GlobalCluster example example
/// ```
///
/// Certain resource arguments, like `source_db_cluster_identifier`, do not have an API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
class GlobalClusterNeptune extends pulumi.CustomResource {
  /// Global Cluster ARN
  late final pulumi.Output<String> arn;

  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  late final pulumi.Output<bool?> deletionProtection;

  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: `neptune`. Conflicts with `source_db_cluster_identifier`.
  late final pulumi.Output<String> engine;

  /// Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  late final pulumi.Output<String> engineVersion;

  /// Global cluster identifier.
  late final pulumi.Output<String> globalClusterIdentifier;

  /// Set of objects containing Global Cluster members.
  late final pulumi.Output<List<GlobalClusterGlobalClusterMemberNeptune>>
      globalClusterMembers;

  /// AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  late final pulumi.Output<String> globalClusterResourceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN to use as the primary DB Cluster of the Global Cluster on creation. Pulumi cannot perform drift detection of this value.
  late final pulumi.Output<String> sourceDbClusterIdentifier;
  late final pulumi.Output<String> status;

  /// Whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. Pulumi will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<bool> storageEncrypted;

  GlobalClusterNeptune(
    String name, {
    GlobalClusterNeptuneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptune/globalCluster:GlobalCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.globalClusterIdentifier =
        registerOutput<String>('globalClusterIdentifier');
    this.globalClusterMembers =
        registerOutput<List<GlobalClusterGlobalClusterMemberNeptune>>(
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
