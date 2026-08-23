import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_serverless_v2_scaling_configuration.dart';
import 'cluster_state.dart';

/// Provides an Neptune Cluster Resource. A Cluster Resource defines attributes that are
/// applied to the entire cluster of Neptune Cluster Instances.
///
/// Changes to a Neptune Cluster can occur when you manually change a
/// parameter, such as `backupRetentionPeriod`, and are reflected in the next maintenance
/// window. Because of this, this provider may report a difference in its planning
/// phase because a modification has not yet taken place. You can use the
/// `applyImmediately` flag to instruct the service to apply the change immediately
/// (see documentation below).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.neptune.Cluster("default", {
///     clusterIdentifier: "neptune-cluster-demo",
///     engine: "neptune",
///     backupRetentionPeriod: 5,
///     preferredBackupWindow: "07:00-09:00",
///     skipFinalSnapshot: true,
///     iamDatabaseAuthenticationEnabled: true,
///     applyImmediately: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.neptune.Cluster("default",
///     cluster_identifier="neptune-cluster-demo",
///     engine="neptune",
///     backup_retention_period=5,
///     preferred_backup_window="07:00-09:00",
///     skip_final_snapshot=True,
///     iam_database_authentication_enabled=True,
///     apply_immediately=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Neptune.Cluster("default", new()
///     {
///         ClusterIdentifier = "neptune-cluster-demo",
///         Engine = "neptune",
///         BackupRetentionPeriod = 5,
///         PreferredBackupWindow = "07:00-09:00",
///         SkipFinalSnapshot = true,
///         IamDatabaseAuthenticationEnabled = true,
///         ApplyImmediately = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := neptune.NewCluster(ctx, "default", &neptune.ClusterArgs{
/// 			ClusterIdentifier:                pulumi.String("neptune-cluster-demo"),
/// 			Engine:                           pulumi.String("neptune"),
/// 			BackupRetentionPeriod:            pulumi.Int(5),
/// 			PreferredBackupWindow:            pulumi.String("07:00-09:00"),
/// 			SkipFinalSnapshot:                pulumi.Bool(true),
/// 			IamDatabaseAuthenticationEnabled: pulumi.Bool(true),
/// 			ApplyImmediately:                 pulumi.Bool(true),
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
/// resource "aws_neptune_cluster" "default" {
///   cluster_identifier                  = "neptune-cluster-demo"
///   engine                              = "neptune"
///   backup_retention_period             = 5
///   preferred_backup_window             = "07:00-09:00"
///   skip_final_snapshot                 = true
///   iam_database_authentication_enabled = true
///   apply_immediately                   = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.neptune.Cluster;
/// import com.pulumi.aws.neptune.ClusterArgs;
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
///         var default_ = new Cluster("default", ClusterArgs.builder()
///             .clusterIdentifier("neptune-cluster-demo")
///             .engine("neptune")
///             .backupRetentionPeriod(5)
///             .preferredBackupWindow("07:00-09:00")
///             .skipFinalSnapshot(true)
///             .iamDatabaseAuthenticationEnabled(true)
///             .applyImmediately(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:neptune:Cluster
///     properties:
///       clusterIdentifier: neptune-cluster-demo
///       engine: neptune
///       backupRetentionPeriod: 5
///       preferredBackupWindow: 07:00-09:00
///       skipFinalSnapshot: true
///       iamDatabaseAuthenticationEnabled: true
///       applyImmediately: true
/// ```
///
///
/// &gt; **Note:** AWS Neptune does not support user name/password–based access control.
/// See the AWS [Docs](https://docs.aws.amazon.com/neptune/latest/userguide/limits.html) for more information.
///
/// ## Import
///
/// Using `pulumi import`, import `aws.neptune.Cluster` using the cluster identifier. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/cluster:Cluster example my-cluster
/// ```
class Cluster extends pulumi.CustomResource {
  /// Whether upgrades between different major versions are allowed. You must set it to `true` when providing an `engineVersion` parameter that uses a different major version than the DB cluster's current version. Default is `false`.
  late final pulumi.Output<bool> allowMajorVersionUpgrade;
  /// Whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`.
  late final pulumi.Output<bool> applyImmediately;
  /// Neptune Cluster ARN
  late final pulumi.Output<String> arn;
  /// List of EC2 Availability Zones that instances in the Neptune cluster can be created in.
  late final pulumi.Output<List<String>> availabilityZones;
  /// Days to retain backups for. Default `1`
  late final pulumi.Output<int?> backupRetentionPeriod;
  /// Cluster identifier. If omitted, Terraform will assign a random, unique identifier.
  late final pulumi.Output<String> clusterIdentifier;
  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `clusterIdentifier`.
  late final pulumi.Output<String> clusterIdentifierPrefix;
  /// List of Neptune Instances that are a part of this cluster
  late final pulumi.Output<List<String>> clusterMembers;
  /// Neptune Cluster Resource ID
  late final pulumi.Output<String> clusterResourceId;
  /// If set to true, tags are copied to any snapshot of the DB cluster that is created.
  late final pulumi.Output<bool?> copyTagsToSnapshot;
  /// Value that indicates whether the DB cluster has deletion protection enabled.The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
  late final pulumi.Output<bool?> deletionProtection;
  /// List of the log types this DB cluster is configured to export to Cloudwatch Logs. Currently only supports `audit` and `slowquery`.
  late final pulumi.Output<List<String>?> enableCloudwatchLogsExports;
  /// DNS address of the Neptune instance
  late final pulumi.Output<String> endpoint;
  /// Name of the database engine to be used for this Neptune cluster. Defaults to `neptune`.
  late final pulumi.Output<String?> engine;
  /// Database engine version.
  late final pulumi.Output<String> engineVersion;
  /// Name of your final Neptune snapshot when this Neptune cluster is deleted. If omitted, no final snapshot will be made.
  late final pulumi.Output<String?> finalSnapshotIdentifier;
  /// Global cluster identifier specified on `aws.neptune.GlobalCluster`.
  late final pulumi.Output<String?> globalClusterIdentifier;
  /// Route53 Hosted Zone ID of the endpoint
  late final pulumi.Output<String> hostedZoneId;
  /// Whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
  late final pulumi.Output<bool?> iamDatabaseAuthenticationEnabled;
  /// List of ARNs for the IAM roles to associate to the Neptune Cluster.
  late final pulumi.Output<List<String>?> iamRoles;
  /// ARN for the KMS encryption key. When specifying `kmsKeyArn`, `storageEncrypted` needs to be set to true.
  late final pulumi.Output<String> kmsKeyArn;
  /// Cluster parameter group to associate with the cluster.
  late final pulumi.Output<String> neptuneClusterParameterGroupName;
  /// Name of DB parameter group to apply to all instances in the cluster. When upgrading, AWS does not return this value, so do not reference it in other arguments—either leave it unset, configure each instance directly, or ensure it matches the `engineVersion`.
  late final pulumi.Output<String?> neptuneInstanceParameterGroupName;
  /// Neptune subnet group to associate with this Neptune instance.
  late final pulumi.Output<String> neptuneSubnetGroupName;
  /// Port on which the Neptune accepts connections. Default is `8182`.
  late final pulumi.Output<int?> port;
  /// Daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter. Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00
  late final pulumi.Output<String> preferredBackupWindow;
  /// Weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  late final pulumi.Output<String> preferredMaintenanceWindow;
  /// Read-only endpoint for the Neptune cluster, automatically load-balanced across replicas
  late final pulumi.Output<String> readerEndpoint;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of a source Neptune cluster or Neptune instance if this Neptune cluster is to be created as a Read Replica.
  late final pulumi.Output<String?> replicationSourceIdentifier;
  /// If set, create the Neptune cluster as a serverless one. See Serverless for example block attributes.
  late final pulumi.Output<ClusterServerlessV2ScalingConfiguration?> serverlessV2ScalingConfiguration;
  /// Whether a final Neptune snapshot is created before the Neptune cluster is deleted. If true is specified, no Neptune snapshot is created. If false is specified, a Neptune snapshot is created before the Neptune cluster is deleted, using the value from `finalSnapshotIdentifier`. Default is `false`.
  late final pulumi.Output<bool?> skipFinalSnapshot;
  /// Whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a Neptune cluster snapshot, or the ARN when specifying a Neptune snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  late final pulumi.Output<String?> snapshotIdentifier;
  /// Whether the Neptune cluster is encrypted. The default is `false` if not specified.
  late final pulumi.Output<bool?> storageEncrypted;
  /// Storage type associated with the cluster `standard/iopt1`. Default: `standard`.
  late final pulumi.Output<String> storageType;
  /// Map of tags to assign to the Neptune cluster. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// List of VPC security groups to associate with the Cluster
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_neptune_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptune/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowMajorVersionUpgrade = registerOutput<bool>('allowMajorVersionUpgrade');
    applyImmediately = registerOutput<bool>('applyImmediately');
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>>('availabilityZones');
    backupRetentionPeriod = registerOutput<int?>('backupRetentionPeriod');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    clusterIdentifierPrefix = registerOutput<String>('clusterIdentifierPrefix');
    clusterMembers = registerOutput<List<String>>('clusterMembers');
    clusterResourceId = registerOutput<String>('clusterResourceId');
    copyTagsToSnapshot = registerOutput<bool?>('copyTagsToSnapshot');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    enableCloudwatchLogsExports = registerOutput<List<String>?>('enableCloudwatchLogsExports');
    endpoint = registerOutput<String>('endpoint');
    engine = registerOutput<String?>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    globalClusterIdentifier = registerOutput<String?>('globalClusterIdentifier');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    iamDatabaseAuthenticationEnabled = registerOutput<bool?>('iamDatabaseAuthenticationEnabled');
    iamRoles = registerOutput<List<String>?>('iamRoles');
    kmsKeyArn = registerOutput<String>('kmsKeyArn');
    neptuneClusterParameterGroupName = registerOutput<String>('neptuneClusterParameterGroupName');
    neptuneInstanceParameterGroupName = registerOutput<String?>('neptuneInstanceParameterGroupName');
    neptuneSubnetGroupName = registerOutput<String>('neptuneSubnetGroupName');
    port = registerOutput<int?>('port');
    preferredBackupWindow = registerOutput<String>('preferredBackupWindow');
    preferredMaintenanceWindow = registerOutput<String>('preferredMaintenanceWindow');
    readerEndpoint = registerOutput<String>('readerEndpoint');
    region = registerOutput<String>('region');
    replicationSourceIdentifier = registerOutput<String?>('replicationSourceIdentifier');
    serverlessV2ScalingConfiguration = registerOutput<ClusterServerlessV2ScalingConfiguration?>('serverlessV2ScalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterServerlessV2ScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    snapshotIdentifier = registerOutput<String?>('snapshotIdentifier');
    storageEncrypted = registerOutput<bool?>('storageEncrypted');
    storageType = registerOutput<String>('storageType');
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
          'aws:neptune/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowMajorVersionUpgrade = registerOutput<bool>('allowMajorVersionUpgrade');
    applyImmediately = registerOutput<bool>('applyImmediately');
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>>('availabilityZones');
    backupRetentionPeriod = registerOutput<int?>('backupRetentionPeriod');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    clusterIdentifierPrefix = registerOutput<String>('clusterIdentifierPrefix');
    clusterMembers = registerOutput<List<String>>('clusterMembers');
    clusterResourceId = registerOutput<String>('clusterResourceId');
    copyTagsToSnapshot = registerOutput<bool?>('copyTagsToSnapshot');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    enableCloudwatchLogsExports = registerOutput<List<String>?>('enableCloudwatchLogsExports');
    endpoint = registerOutput<String>('endpoint');
    engine = registerOutput<String?>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    globalClusterIdentifier = registerOutput<String?>('globalClusterIdentifier');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    iamDatabaseAuthenticationEnabled = registerOutput<bool?>('iamDatabaseAuthenticationEnabled');
    iamRoles = registerOutput<List<String>?>('iamRoles');
    kmsKeyArn = registerOutput<String>('kmsKeyArn');
    neptuneClusterParameterGroupName = registerOutput<String>('neptuneClusterParameterGroupName');
    neptuneInstanceParameterGroupName = registerOutput<String?>('neptuneInstanceParameterGroupName');
    neptuneSubnetGroupName = registerOutput<String>('neptuneSubnetGroupName');
    port = registerOutput<int?>('port');
    preferredBackupWindow = registerOutput<String>('preferredBackupWindow');
    preferredMaintenanceWindow = registerOutput<String>('preferredMaintenanceWindow');
    readerEndpoint = registerOutput<String>('readerEndpoint');
    region = registerOutput<String>('region');
    replicationSourceIdentifier = registerOutput<String?>('replicationSourceIdentifier');
    serverlessV2ScalingConfiguration = registerOutput<ClusterServerlessV2ScalingConfiguration?>('serverlessV2ScalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterServerlessV2ScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    snapshotIdentifier = registerOutput<String?>('snapshotIdentifier');
    storageEncrypted = registerOutput<bool?>('storageEncrypted');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
