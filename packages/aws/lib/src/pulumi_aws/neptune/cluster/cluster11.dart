import 'package:pulumi/pulumi.dart';
import '../cluster_serverless_v2_scaling_configuration/cluster_serverless_v2_scaling_configuration2.dart';
import 'cluster_args11.dart';

/// Provides an Neptune Cluster Resource. A Cluster Resource defines attributes that are
/// applied to the entire cluster of Neptune Cluster Instances.
///
/// Changes to a Neptune Cluster can occur when you manually change a
/// parameter, such as <span pulumi-lang-nodejs="`backupRetentionPeriod`" pulumi-lang-dotnet="`BackupRetentionPeriod`" pulumi-lang-go="`backupRetentionPeriod`" pulumi-lang-python="`backup_retention_period`" pulumi-lang-yaml="`backupRetentionPeriod`" pulumi-lang-java="`backupRetentionPeriod`">`backup_retention_period`</span>, and are reflected in the next maintenance
/// window. Because of this, this provider may report a difference in its planning
/// phase because a modification has not yet taken place. You can use the
/// <span pulumi-lang-nodejs="`applyImmediately`" pulumi-lang-dotnet="`ApplyImmediately`" pulumi-lang-go="`applyImmediately`" pulumi-lang-python="`apply_immediately`" pulumi-lang-yaml="`applyImmediately`" pulumi-lang-java="`applyImmediately`">`apply_immediately`</span> flag to instruct the service to apply the change immediately
/// (see documentation below).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.neptune.Cluster("default", {
/// clusterIdentifier: "neptune-cluster-demo",
/// engine: "neptune",
/// backupRetentionPeriod: 5,
/// preferredBackupWindow: "07:00-09:00",
/// skipFinalSnapshot: true,
/// iamDatabaseAuthenticationEnabled: true,
/// applyImmediately: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.neptune.Cluster("default",
/// cluster_identifier="neptune-cluster-demo",
/// engine="neptune",
/// backup_retention_period=5,
/// preferred_backup_window="07:00-09:00",
/// skip_final_snapshot=True,
/// iam_database_authentication_enabled=True,
/// apply_immediately=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Neptune.Cluster("default", new()
/// {
/// ClusterIdentifier = "neptune-cluster-demo",
/// Engine = "neptune",
/// BackupRetentionPeriod = 5,
/// PreferredBackupWindow = "07:00-09:00",
/// SkipFinalSnapshot = true,
/// IamDatabaseAuthenticationEnabled = true,
/// ApplyImmediately = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := neptune.NewCluster(ctx, "default", &neptune.ClusterArgs{
/// ClusterIdentifier:                pulumi.String("neptune-cluster-demo"),
/// Engine:                           pulumi.String("neptune"),
/// BackupRetentionPeriod:            pulumi.Int(5),
/// PreferredBackupWindow:            pulumi.String("07:00-09:00"),
/// SkipFinalSnapshot:                pulumi.Bool(true),
/// IamDatabaseAuthenticationEnabled: pulumi.Bool(true),
/// ApplyImmediately:                 pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new Cluster("default", ClusterArgs.builder()
/// .clusterIdentifier("neptune-cluster-demo")
/// .engine("neptune")
/// .backupRetentionPeriod(5)
/// .preferredBackupWindow("07:00-09:00")
/// .skipFinalSnapshot(true)
/// .iamDatabaseAuthenticationEnabled(true)
/// .applyImmediately(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:neptune:Cluster
/// properties:
/// clusterIdentifier: neptune-cluster-demo
/// engine: neptune
/// backupRetentionPeriod: 5
/// preferredBackupWindow: 07:00-09:00
/// skipFinalSnapshot: true
/// iamDatabaseAuthenticationEnabled: true
/// applyImmediately: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// > **Note:** AWS Neptune does not support user name/password–based access control.
/// See the AWS [Docs](https://docs.aws.amazon.com/neptune/latest/userguide/limits.html) for more information.
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.neptune.Cluster`" pulumi-lang-dotnet="`aws.neptune.Cluster`" pulumi-lang-go="`neptune.Cluster`" pulumi-lang-python="`neptune.Cluster`" pulumi-lang-yaml="`aws.neptune.Cluster`" pulumi-lang-java="`aws.neptune.Cluster`">`aws.neptune.Cluster`</span> using the cluster identifier. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/cluster:Cluster example my-cluster
/// ```
class Cluster11 extends CustomResource {
  /// Whether upgrades between different major versions are allowed. You must set it to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> when providing an <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> parameter that uses a different major version than the DB cluster's current version. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> allowMajorVersionUpgrade;

  /// Whether any cluster modifications are applied immediately, or during the next maintenance window. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> applyImmediately;

  /// Neptune Cluster ARN
  late final Output<String> arn;

  /// List of EC2 Availability Zones that instances in the Neptune cluster can be created in.
  late final Output<List<String>> availabilityZones;

  /// Days to retain backups for. Default <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>
  late final Output<int?> backupRetentionPeriod;

  /// Cluster identifier. If omitted, Terraform will assign a random, unique identifier.
  late final Output<String> clusterIdentifier;

  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`clusterIdentifier`" pulumi-lang-dotnet="`ClusterIdentifier`" pulumi-lang-go="`clusterIdentifier`" pulumi-lang-python="`cluster_identifier`" pulumi-lang-yaml="`clusterIdentifier`" pulumi-lang-java="`clusterIdentifier`">`cluster_identifier`</span>.
  late final Output<String> clusterIdentifierPrefix;

  /// List of Neptune Instances that are a part of this cluster
  late final Output<List<String>> clusterMembers;

  /// Neptune Cluster Resource ID
  late final Output<String> clusterResourceId;

  /// If set to true, tags are copied to any snapshot of the DB cluster that is created.
  late final Output<bool?> copyTagsToSnapshot;

  /// Value that indicates whether the DB cluster has deletion protection enabled.The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.
  late final Output<bool?> deletionProtection;

  /// List of the log types this DB cluster is configured to export to Cloudwatch Logs. Currently only supports <span pulumi-lang-nodejs="`audit`" pulumi-lang-dotnet="`Audit`" pulumi-lang-go="`audit`" pulumi-lang-python="`audit`" pulumi-lang-yaml="`audit`" pulumi-lang-java="`audit`">`audit`</span> and <span pulumi-lang-nodejs="`slowquery`" pulumi-lang-dotnet="`Slowquery`" pulumi-lang-go="`slowquery`" pulumi-lang-python="`slowquery`" pulumi-lang-yaml="`slowquery`" pulumi-lang-java="`slowquery`">`slowquery`</span>.
  late final Output<List<String>?> enableCloudwatchLogsExports;

  /// DNS address of the Neptune instance
  late final Output<String> endpoint;

  /// Name of the database engine to be used for this Neptune cluster. Defaults to <span pulumi-lang-nodejs="`neptune`" pulumi-lang-dotnet="`Neptune`" pulumi-lang-go="`neptune`" pulumi-lang-python="`neptune`" pulumi-lang-yaml="`neptune`" pulumi-lang-java="`neptune`">`neptune`</span>.
  late final Output<String?> engine;

  /// Database engine version.
  late final Output<String> engineVersion;

  /// Name of your final Neptune snapshot when this Neptune cluster is deleted. If omitted, no final snapshot will be made.
  late final Output<String?> finalSnapshotIdentifier;

  /// Global cluster identifier specified on <span pulumi-lang-nodejs="`aws.neptune.GlobalCluster`" pulumi-lang-dotnet="`aws.neptune.GlobalCluster`" pulumi-lang-go="`neptune.GlobalCluster`" pulumi-lang-python="`neptune.GlobalCluster`" pulumi-lang-yaml="`aws.neptune.GlobalCluster`" pulumi-lang-java="`aws.neptune.GlobalCluster`">`aws.neptune.GlobalCluster`</span>.
  late final Output<String?> globalClusterIdentifier;

  /// Route53 Hosted Zone ID of the endpoint
  late final Output<String> hostedZoneId;

  /// Whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.
  late final Output<bool?> iamDatabaseAuthenticationEnabled;

  /// List of ARNs for the IAM roles to associate to the Neptune Cluster.
  late final Output<List<String>?> iamRoles;

  /// ARN for the KMS encryption key. When specifying <span pulumi-lang-nodejs="`kmsKeyArn`" pulumi-lang-dotnet="`KmsKeyArn`" pulumi-lang-go="`kmsKeyArn`" pulumi-lang-python="`kms_key_arn`" pulumi-lang-yaml="`kmsKeyArn`" pulumi-lang-java="`kmsKeyArn`">`kms_key_arn`</span>, <span pulumi-lang-nodejs="`storageEncrypted`" pulumi-lang-dotnet="`StorageEncrypted`" pulumi-lang-go="`storageEncrypted`" pulumi-lang-python="`storage_encrypted`" pulumi-lang-yaml="`storageEncrypted`" pulumi-lang-java="`storageEncrypted`">`storage_encrypted`</span> needs to be set to true.
  late final Output<String> kmsKeyArn;

  /// Cluster parameter group to associate with the cluster.
  late final Output<String> neptuneClusterParameterGroupName;

  /// Name of DB parameter group to apply to all instances in the cluster. When upgrading, AWS does not return this value, so do not reference it in other arguments—either leave it unset, configure each instance directly, or ensure it matches the <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span>.
  late final Output<String?> neptuneInstanceParameterGroupName;

  /// Neptune subnet group to associate with this Neptune instance.
  late final Output<String> neptuneSubnetGroupName;

  /// Port on which the Neptune accepts connections. Default is <span pulumi-lang-nodejs="`8182`" pulumi-lang-dotnet="`8182`" pulumi-lang-go="`8182`" pulumi-lang-python="`8182`" pulumi-lang-yaml="`8182`" pulumi-lang-java="`8182`">`8182`</span>.
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

  /// Whether a final Neptune snapshot is created before the Neptune cluster is deleted. If true is specified, no Neptune snapshot is created. If false is specified, a Neptune snapshot is created before the Neptune cluster is deleted, using the value from <span pulumi-lang-nodejs="`finalSnapshotIdentifier`" pulumi-lang-dotnet="`FinalSnapshotIdentifier`" pulumi-lang-go="`finalSnapshotIdentifier`" pulumi-lang-python="`final_snapshot_identifier`" pulumi-lang-yaml="`finalSnapshotIdentifier`" pulumi-lang-java="`finalSnapshotIdentifier`">`final_snapshot_identifier`</span>. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> skipFinalSnapshot;

  /// Whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a Neptune cluster snapshot, or the ARN when specifying a Neptune snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  late final Output<String?> snapshotIdentifier;

  /// Whether the Neptune cluster is encrypted. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> if not specified.
  late final Output<bool?> storageEncrypted;

  /// Storage type associated with the cluster `standard/iopt1`. Default: <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>.
  late final Output<String> storageType;

  /// Map of tags to assign to the Neptune cluster. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
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
    this.allowMajorVersionUpgrade = Output.createUnknown<bool>();
    this.applyImmediately = Output.createUnknown<bool>();
    this.arn = Output.createUnknown<String>();
    this.availabilityZones = Output.createUnknown<List<String>>();
    this.backupRetentionPeriod = Output.createUnknown<int?>();
    this.clusterIdentifier = Output.createUnknown<String>();
    this.clusterIdentifierPrefix = Output.createUnknown<String>();
    this.clusterMembers = Output.createUnknown<List<String>>();
    this.clusterResourceId = Output.createUnknown<String>();
    this.copyTagsToSnapshot = Output.createUnknown<bool?>();
    this.deletionProtection = Output.createUnknown<bool?>();
    this.enableCloudwatchLogsExports = Output.createUnknown<List<String>?>();
    this.endpoint = Output.createUnknown<String>();
    this.engine = Output.createUnknown<String?>();
    this.engineVersion = Output.createUnknown<String>();
    this.finalSnapshotIdentifier = Output.createUnknown<String?>();
    this.globalClusterIdentifier = Output.createUnknown<String?>();
    this.hostedZoneId = Output.createUnknown<String>();
    this.iamDatabaseAuthenticationEnabled = Output.createUnknown<bool?>();
    this.iamRoles = Output.createUnknown<List<String>?>();
    this.kmsKeyArn = Output.createUnknown<String>();
    this.neptuneClusterParameterGroupName = Output.createUnknown<String>();
    this.neptuneInstanceParameterGroupName = Output.createUnknown<String?>();
    this.neptuneSubnetGroupName = Output.createUnknown<String>();
    this.port = Output.createUnknown<int?>();
    this.preferredBackupWindow = Output.createUnknown<String>();
    this.preferredMaintenanceWindow = Output.createUnknown<String>();
    this.readerEndpoint = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.replicationSourceIdentifier = Output.createUnknown<String?>();
    this.serverlessV2ScalingConfiguration =
        Output.createUnknown<ClusterServerlessV2ScalingConfiguration2?>();
    this.skipFinalSnapshot = Output.createUnknown<bool?>();
    this.snapshotIdentifier = Output.createUnknown<String?>();
    this.storageEncrypted = Output.createUnknown<bool?>();
    this.storageType = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcSecurityGroupIds = Output.createUnknown<List<String>>();
  }
}
