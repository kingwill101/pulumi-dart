import 'package:pulumi/pulumi.dart';
import '../cluster_serverless_v2_scaling_configuration/cluster_serverless_v2_scaling_configuration2.dart';
import 'cluster_args11.dart';

/// Provides an Neptune Cluster Resource. A Cluster Resource defines attributes that are
/// applied to the entire cluster of Neptune Cluster Instances.
///
/// Changes to a Neptune Cluster can occur when you manually change a
/// parameter, such as `backup_retention_period`, and are reflected in the next maintenance
/// window. Because of this, this provider may report a difference in its planning
/// phase because a modification has not yet taken place. You can use the
/// `apply_immediately` flag to instruct the service to apply the change immediately
/// (see documentation below).
///
/// ## Example Usage
///
///
///
/// > **Note:** AWS Neptune does not support user name/password–based access control.
/// See the AWS [Docs](https://docs.aws.amazon.com/neptune/latest/userguide/limits.html) for more information.
///
/// ## Import
///
/// Using `pulumi import`, import `aws.neptune.Cluster` using the cluster identifier. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/cluster:Cluster example my-cluster
/// ```
class Cluster11 extends CustomResource {
  /// Whether upgrades between different major versions are allowed. You must set it to `true` when providing an `engine_version` parameter that uses a different major version than the DB cluster's current version. Default is `false`.
  late final Output<bool> allowMajorVersionUpgrade;

  /// Whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`.
  late final Output<bool> applyImmediately;

  /// Neptune Cluster ARN
  late final Output<String> arn;

  /// List of EC2 Availability Zones that instances in the Neptune cluster can be created in.
  late final Output<List<String>> availabilityZones;

  /// Days to retain backups for. Default `1`
  late final Output<int?> backupRetentionPeriod;

  /// Cluster identifier. If omitted, Terraform will assign a random, unique identifier.
  late final Output<String> clusterIdentifier;

  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `cluster_identifier`.
  late final Output<String> clusterIdentifierPrefix;

  /// List of Neptune Instances that are a part of this cluster
  late final Output<List<String>> clusterMembers;

  /// Neptune Cluster Resource ID
  late final Output<String> clusterResourceId;

  /// If set to true, tags are copied to any snapshot of the DB cluster that is created.
  late final Output<bool?> copyTagsToSnapshot;

  /// Value that indicates whether the DB cluster has deletion protection enabled.The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
  late final Output<bool?> deletionProtection;

  /// List of the log types this DB cluster is configured to export to Cloudwatch Logs. Currently only supports `audit` and `slowquery`.
  late final Output<List<String>?> enableCloudwatchLogsExports;

  /// DNS address of the Neptune instance
  late final Output<String> endpoint;

  /// Name of the database engine to be used for this Neptune cluster. Defaults to `neptune`.
  late final Output<String?> engine;

  /// Database engine version.
  late final Output<String> engineVersion;

  /// Name of your final Neptune snapshot when this Neptune cluster is deleted. If omitted, no final snapshot will be made.
  late final Output<String?> finalSnapshotIdentifier;

  /// Global cluster identifier specified on `aws.neptune.GlobalCluster`.
  late final Output<String?> globalClusterIdentifier;

  /// Route53 Hosted Zone ID of the endpoint
  late final Output<String> hostedZoneId;

  /// Whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
  late final Output<bool?> iamDatabaseAuthenticationEnabled;

  /// List of ARNs for the IAM roles to associate to the Neptune Cluster.
  late final Output<List<String>?> iamRoles;

  /// ARN for the KMS encryption key. When specifying `kms_key_arn`, `storage_encrypted` needs to be set to true.
  late final Output<String> kmsKeyArn;

  /// Cluster parameter group to associate with the cluster.
  late final Output<String> neptuneClusterParameterGroupName;

  /// Name of DB parameter group to apply to all instances in the cluster. When upgrading, AWS does not return this value, so do not reference it in other arguments—either leave it unset, configure each instance directly, or ensure it matches the `engine_version`.
  late final Output<String?> neptuneInstanceParameterGroupName;

  /// Neptune subnet group to associate with this Neptune instance.
  late final Output<String> neptuneSubnetGroupName;

  /// Port on which the Neptune accepts connections. Default is `8182`.
  late final Output<int?> port;

  /// Daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter. Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00
  late final Output<String> preferredBackupWindow;

  /// Weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  late final Output<String> preferredMaintenanceWindow;

  /// Read-only endpoint for the Neptune cluster, automatically load-balanced across replicas
  late final Output<String> readerEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of a source Neptune cluster or Neptune instance if this Neptune cluster is to be created as a Read Replica.
  late final Output<String?> replicationSourceIdentifier;

  /// If set, create the Neptune cluster as a serverless one. See Serverless for example block attributes.
  late final Output<ClusterServerlessV2ScalingConfiguration2?>
      serverlessV2ScalingConfiguration;

  /// Whether a final Neptune snapshot is created before the Neptune cluster is deleted. If true is specified, no Neptune snapshot is created. If false is specified, a Neptune snapshot is created before the Neptune cluster is deleted, using the value from `final_snapshot_identifier`. Default is `false`.
  late final Output<bool?> skipFinalSnapshot;

  /// Whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a Neptune cluster snapshot, or the ARN when specifying a Neptune snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  late final Output<String?> snapshotIdentifier;

  /// Whether the Neptune cluster is encrypted. The default is `false` if not specified.
  late final Output<bool?> storageEncrypted;

  /// Storage type associated with the cluster `standard/iopt1`. Default: `standard`.
  late final Output<String> storageType;

  /// Map of tags to assign to the Neptune cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// List of VPC security groups to associate with the Cluster
  late final Output<List<String>> vpcSecurityGroupIds;

  Cluster11(
    String name, {
    ClusterArgs11? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:neptune/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowMajorVersionUpgrade =
        registerOutput<bool>('allowMajorVersionUpgrade');
    this.applyImmediately = registerOutput<bool>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.backupRetentionPeriod = registerOutput<int?>('backupRetentionPeriod');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.clusterIdentifierPrefix =
        registerOutput<String>('clusterIdentifierPrefix');
    this.clusterMembers = registerOutput<List<String>>('clusterMembers');
    this.clusterResourceId = registerOutput<String>('clusterResourceId');
    this.copyTagsToSnapshot = registerOutput<bool?>('copyTagsToSnapshot');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.enableCloudwatchLogsExports =
        registerOutput<List<String>?>('enableCloudwatchLogsExports');
    this.endpoint = registerOutput<String>('endpoint');
    this.engine = registerOutput<String?>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.finalSnapshotIdentifier =
        registerOutput<String?>('finalSnapshotIdentifier');
    this.globalClusterIdentifier =
        registerOutput<String?>('globalClusterIdentifier');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.iamDatabaseAuthenticationEnabled =
        registerOutput<bool?>('iamDatabaseAuthenticationEnabled');
    this.iamRoles = registerOutput<List<String>?>('iamRoles');
    this.kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.neptuneClusterParameterGroupName =
        registerOutput<String>('neptuneClusterParameterGroupName');
    this.neptuneInstanceParameterGroupName =
        registerOutput<String?>('neptuneInstanceParameterGroupName');
    this.neptuneSubnetGroupName =
        registerOutput<String>('neptuneSubnetGroupName');
    this.port = registerOutput<int?>('port');
    this.preferredBackupWindow =
        registerOutput<String>('preferredBackupWindow');
    this.preferredMaintenanceWindow =
        registerOutput<String>('preferredMaintenanceWindow');
    this.readerEndpoint = registerOutput<String>('readerEndpoint');
    this.region = registerOutput<String>('region');
    this.replicationSourceIdentifier =
        registerOutput<String?>('replicationSourceIdentifier');
    this.serverlessV2ScalingConfiguration =
        registerOutput<ClusterServerlessV2ScalingConfiguration2?>(
            'serverlessV2ScalingConfiguration');
    this.skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    this.snapshotIdentifier = registerOutput<String?>('snapshotIdentifier');
    this.storageEncrypted = registerOutput<bool?>('storageEncrypted');
    this.storageType = registerOutput<String>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
