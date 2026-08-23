import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_restore_to_point_in_time.dart';
import 'cluster_serverless_v2_scaling_configuration.dart';
import 'cluster_state.dart';

/// Manages a DocumentDB Cluster.
///
/// Changes to a DocumentDB Cluster can occur when you manually change a
/// parameter, such as `port`, and are reflected in the next maintenance
/// window. Because of this, this provider may report a difference in its planning
/// phase because a modification has not yet taken place. You can use the
/// `applyImmediately` flag to instruct the service to apply the change immediately
/// (see documentation below).
///
/// &gt; **Note:** using `applyImmediately` can result in a brief downtime as the server reboots.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const docdb = new aws.docdb.Cluster("docdb", {
///     clusterIdentifier: "my-docdb-cluster",
///     engine: "docdb",
///     masterUsername: "foo",
///     masterPassword: "mustbeeightchars",
///     backupRetentionPeriod: 5,
///     preferredBackupWindow: "07:00-09:00",
///     skipFinalSnapshot: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// docdb = aws.docdb.Cluster("docdb",
///     cluster_identifier="my-docdb-cluster",
///     engine="docdb",
///     master_username="foo",
///     master_password="mustbeeightchars",
///     backup_retention_period=5,
///     preferred_backup_window="07:00-09:00",
///     skip_final_snapshot=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var docdb = new Aws.DocDB.Cluster("docdb", new()
///     {
///         ClusterIdentifier = "my-docdb-cluster",
///         Engine = "docdb",
///         MasterUsername = "foo",
///         MasterPassword = "mustbeeightchars",
///         BackupRetentionPeriod = 5,
///         PreferredBackupWindow = "07:00-09:00",
///         SkipFinalSnapshot = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/docdb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := docdb.NewCluster(ctx, "docdb", &docdb.ClusterArgs{
/// 			ClusterIdentifier:     pulumi.String("my-docdb-cluster"),
/// 			Engine:                pulumi.String("docdb"),
/// 			MasterUsername:        pulumi.String("foo"),
/// 			MasterPassword:        pulumi.String("mustbeeightchars"),
/// 			BackupRetentionPeriod: pulumi.Int(5),
/// 			PreferredBackupWindow: pulumi.String("07:00-09:00"),
/// 			SkipFinalSnapshot:     pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_docdb_cluster" "docdb" {
///   cluster_identifier      = "my-docdb-cluster"
///   engine                  = "docdb"
///   master_username         = "foo"
///   master_password         = "mustbeeightchars"
///   backup_retention_period = 5
///   preferred_backup_window = "07:00-09:00"
///   skip_final_snapshot     = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.docdb.Cluster;
/// import com.pulumi.aws.docdb.ClusterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var docdb = new Cluster("docdb", ClusterArgs.builder()
///             .clusterIdentifier("my-docdb-cluster")
///             .engine("docdb")
///             .masterUsername("foo")
///             .masterPassword("mustbeeightchars")
///             .backupRetentionPeriod(5)
///             .preferredBackupWindow("07:00-09:00")
///             .skipFinalSnapshot(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   docdb:
///     type: aws:docdb:Cluster
///     properties:
///       clusterIdentifier: my-docdb-cluster
///       engine: docdb
///       masterUsername: foo
///       masterPassword: mustbeeightchars
///       backupRetentionPeriod: 5
///       preferredBackupWindow: 07:00-09:00
///       skipFinalSnapshot: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DocumentDB Clusters using the `clusterIdentifier`. For example:
///
/// ```sh
/// $ pulumi import aws:docdb/cluster:Cluster docdb_cluster docdb-prod-cluster
/// ```
class Cluster extends pulumi.CustomResource {
  /// A value that indicates whether major version upgrades are allowed. Constraints: You must allow major version upgrades when specifying a value for the EngineVersion parameter that is a different major version than the DB cluster's current version.
  late final pulumi.Output<bool?> allowMajorVersionUpgrade;
  /// Specifies whether any cluster modifications
  /// are applied immediately, or during the next maintenance window. Default is
  /// `false`.
  late final pulumi.Output<bool?> applyImmediately;
  /// Amazon Resource Name (ARN) of cluster
  late final pulumi.Output<String> arn;
  /// A list of EC2 Availability Zones that instances in the DB cluster can be created in.
  /// DocumentDB automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next pulumi up.
  /// We recommend specifying 3 AZs or using the `lifecycle` configuration block `ignoreChanges` argument if necessary.
  late final pulumi.Output<List<String>> availabilityZones;
  /// The days to retain backups for. Default `1`
  late final pulumi.Output<int?> backupRetentionPeriod;
  /// The cluster identifier. If omitted, the provider will assign a random, unique identifier.
  late final pulumi.Output<String> clusterIdentifier;
  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `clusterIdentifier`.
  late final pulumi.Output<String> clusterIdentifierPrefix;
  /// List of DocumentDB Instances that are a part of this cluster
  late final pulumi.Output<List<String>> clusterMembers;
  /// The DocumentDB Cluster Resource ID
  late final pulumi.Output<String> clusterResourceId;
  /// A cluster parameter group to associate with the cluster.
  late final pulumi.Output<String> dbClusterParameterGroupName;
  /// A DB subnet group to associate with this DB instance.
  late final pulumi.Output<String> dbSubnetGroupName;
  /// A boolean value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> deletionProtection;
  /// List of log types to export to cloudwatch. If omitted, no logs will be exported.
  /// The following log types are supported: `audit`, `profiler`.
  late final pulumi.Output<List<String>?> enabledCloudwatchLogsExports;
  /// The DNS address of the DocumentDB instance
  late final pulumi.Output<String> endpoint;
  /// The name of the database engine to be used for this DB cluster. Defaults to `docdb`. Valid values: `docdb`.
  late final pulumi.Output<String?> engine;
  /// The database engine version. Updating this argument results in an outage.
  late final pulumi.Output<String> engineVersion;
  /// The name of your final DB snapshot
  /// when this DB cluster is deleted. If omitted, no final snapshot will be
  /// made.
  late final pulumi.Output<String?> finalSnapshotIdentifier;
  /// The global cluster identifier specified on `aws.docdb.GlobalCluster`.
  late final pulumi.Output<String?> globalClusterIdentifier;
  /// The Route53 Hosted Zone ID of the endpoint
  late final pulumi.Output<String> hostedZoneId;
  /// The ARN for the KMS encryption key. When specifying `kmsKeyId`, `storageEncrypted` needs to be set to true.
  late final pulumi.Output<String> kmsKeyId;
  /// Set to `true` to allow Amazon DocumentDB to manage the master user password in AWS Secrets Manager. Cannot be set if `masterPassword` or `masterPasswordWo` is provided.
  late final pulumi.Output<bool?> manageMasterUserPassword;
  /// Password for the master DB user. Note that this may
  /// show up in logs, and it will be stored in the state file. Please refer to the DocumentDB Naming Constraints. Conflicts with `masterPasswordWo` and `manageMasterUserPassword`.
  late final pulumi.Output<String?> masterPassword;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may
  /// show up in logs. Please refer to the DocumentDB Naming Constraints. Conflicts with `masterPassword` and `manageMasterUserPassword`.
  late final pulumi.Output<String?> masterPasswordWo;
  /// Used together with `masterPasswordWo` to trigger an update. Increment this value when an update to the `masterPasswordWo` is required.
  late final pulumi.Output<int?> masterPasswordWoVersion;
  late final pulumi.Output<List<Map<String, dynamic>>> masterUserSecrets;
  /// Username for the master DB user.
  late final pulumi.Output<String> masterUsername;
  /// The network type of the DB cluster (`IPV4` or `DUAL`).
  late final pulumi.Output<String> networkType;
  /// The port on which the DB accepts connections
  late final pulumi.Output<int?> port;
  /// The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC
  /// Default: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00
  late final pulumi.Output<String> preferredBackupWindow;
  /// The weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  late final pulumi.Output<String> preferredMaintenanceWindow;
  /// A read-only endpoint for the DocumentDB cluster, automatically load-balanced across replicas
  late final pulumi.Output<String> readerEndpoint;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A configuration block for restoring a DB instance to an arbitrary point in time. Requires the `identifier` argument to be set with the name of the new DB instance to be created. See Restore To Point In Time below for details.
  late final pulumi.Output<ClusterRestoreToPointInTime?> restoreToPointInTime;
  /// Scaling configuration of an Amazon DocumentDB Serverless cluster. See Serverless V2 Scaling Configuration below for details.
  late final pulumi.Output<ClusterServerlessV2ScalingConfiguration?> serverlessV2ScalingConfiguration;
  /// Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `finalSnapshotIdentifier`. Default is `false`.
  late final pulumi.Output<bool?> skipFinalSnapshot;
  /// Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  late final pulumi.Output<String?> snapshotIdentifier;
  /// Specifies whether the DB cluster is encrypted. The default is `false`.
  late final pulumi.Output<bool?> storageEncrypted;
  /// The storage type to associate with the DB cluster. Valid values: `standard`, `iopt1`.
  late final pulumi.Output<String?> storageType;
  /// A map of tags to assign to the DB cluster. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// List of VPC security groups to associate
  /// with the Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/docdb/create-db-cluster.html).
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_docdb_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:docdb/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowMajorVersionUpgrade = registerOutput<bool?>('allowMajorVersionUpgrade');
    applyImmediately = registerOutput<bool?>('applyImmediately');
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>>('availabilityZones');
    backupRetentionPeriod = registerOutput<int?>('backupRetentionPeriod');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    clusterIdentifierPrefix = registerOutput<String>('clusterIdentifierPrefix');
    clusterMembers = registerOutput<List<String>>('clusterMembers');
    clusterResourceId = registerOutput<String>('clusterResourceId');
    dbClusterParameterGroupName = registerOutput<String>('dbClusterParameterGroupName');
    dbSubnetGroupName = registerOutput<String>('dbSubnetGroupName');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    enabledCloudwatchLogsExports = registerOutput<List<String>?>('enabledCloudwatchLogsExports');
    endpoint = registerOutput<String>('endpoint');
    engine = registerOutput<String?>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    globalClusterIdentifier = registerOutput<String?>('globalClusterIdentifier');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    manageMasterUserPassword = registerOutput<bool?>('manageMasterUserPassword');
    masterPassword = registerOutput<String?>('masterPassword');
    masterPasswordWo = registerOutput<String?>('masterPasswordWo');
    masterPasswordWoVersion = registerOutput<int?>('masterPasswordWoVersion');
    masterUserSecrets = registerOutput<List<Map<String, dynamic>>>('masterUserSecrets');
    masterUsername = registerOutput<String>('masterUsername');
    networkType = registerOutput<String>('networkType');
    port = registerOutput<int?>('port');
    preferredBackupWindow = registerOutput<String>('preferredBackupWindow');
    preferredMaintenanceWindow = registerOutput<String>('preferredMaintenanceWindow');
    readerEndpoint = registerOutput<String>('readerEndpoint');
    region = registerOutput<String>('region');
    restoreToPointInTime = registerOutput<ClusterRestoreToPointInTime?>('restoreToPointInTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRestoreToPointInTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serverlessV2ScalingConfiguration = registerOutput<ClusterServerlessV2ScalingConfiguration?>('serverlessV2ScalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterServerlessV2ScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    snapshotIdentifier = registerOutput<String?>('snapshotIdentifier');
    storageEncrypted = registerOutput<bool?>('storageEncrypted');
    storageType = registerOutput<String?>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:docdb/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowMajorVersionUpgrade = registerOutput<bool?>('allowMajorVersionUpgrade');
    applyImmediately = registerOutput<bool?>('applyImmediately');
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>>('availabilityZones');
    backupRetentionPeriod = registerOutput<int?>('backupRetentionPeriod');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    clusterIdentifierPrefix = registerOutput<String>('clusterIdentifierPrefix');
    clusterMembers = registerOutput<List<String>>('clusterMembers');
    clusterResourceId = registerOutput<String>('clusterResourceId');
    dbClusterParameterGroupName = registerOutput<String>('dbClusterParameterGroupName');
    dbSubnetGroupName = registerOutput<String>('dbSubnetGroupName');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    enabledCloudwatchLogsExports = registerOutput<List<String>?>('enabledCloudwatchLogsExports');
    endpoint = registerOutput<String>('endpoint');
    engine = registerOutput<String?>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    globalClusterIdentifier = registerOutput<String?>('globalClusterIdentifier');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    manageMasterUserPassword = registerOutput<bool?>('manageMasterUserPassword');
    masterPassword = registerOutput<String?>('masterPassword');
    masterPasswordWo = registerOutput<String?>('masterPasswordWo');
    masterPasswordWoVersion = registerOutput<int?>('masterPasswordWoVersion');
    masterUserSecrets = registerOutput<List<Map<String, dynamic>>>('masterUserSecrets');
    masterUsername = registerOutput<String>('masterUsername');
    networkType = registerOutput<String>('networkType');
    port = registerOutput<int?>('port');
    preferredBackupWindow = registerOutput<String>('preferredBackupWindow');
    preferredMaintenanceWindow = registerOutput<String>('preferredMaintenanceWindow');
    readerEndpoint = registerOutput<String>('readerEndpoint');
    region = registerOutput<String>('region');
    restoreToPointInTime = registerOutput<ClusterRestoreToPointInTime?>('restoreToPointInTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRestoreToPointInTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serverlessV2ScalingConfiguration = registerOutput<ClusterServerlessV2ScalingConfiguration?>('serverlessV2ScalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterServerlessV2ScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    snapshotIdentifier = registerOutput<String?>('snapshotIdentifier');
    storageEncrypted = registerOutput<bool?>('storageEncrypted');
    storageType = registerOutput<String?>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
