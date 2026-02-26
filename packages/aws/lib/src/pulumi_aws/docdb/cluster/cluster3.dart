import 'package:pulumi/pulumi.dart';
import '../cluster_master_user_secret/cluster_master_user_secret.dart';
import '../cluster_restore_to_point_in_time/cluster_restore_to_point_in_time.dart';
import '../cluster_serverless_v2_scaling_configuration/cluster_serverless_v2_scaling_configuration.dart';
import 'cluster_args3.dart';

/// Manages a DocumentDB Cluster.
///
/// Changes to a DocumentDB Cluster can occur when you manually change a
/// parameter, such as <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span>, and are reflected in the next maintenance
/// window. Because of this, this provider may report a difference in its planning
/// phase because a modification has not yet taken place. You can use the
/// <span pulumi-lang-nodejs="`applyImmediately`" pulumi-lang-dotnet="`ApplyImmediately`" pulumi-lang-go="`applyImmediately`" pulumi-lang-python="`apply_immediately`" pulumi-lang-yaml="`applyImmediately`" pulumi-lang-java="`applyImmediately`">`apply_immediately`</span> flag to instruct the service to apply the change immediately
/// (see documentation below).
///
/// > **Note:** using <span pulumi-lang-nodejs="`applyImmediately`" pulumi-lang-dotnet="`ApplyImmediately`" pulumi-lang-go="`applyImmediately`" pulumi-lang-python="`apply_immediately`" pulumi-lang-yaml="`applyImmediately`" pulumi-lang-java="`applyImmediately`">`apply_immediately`</span> can result in a brief downtime as the server reboots.
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const docdb = new aws.docdb.Cluster("docdb", {
/// clusterIdentifier: "my-docdb-cluster",
/// engine: "docdb",
/// masterUsername: "foo",
/// masterPassword: "mustbeeightchars",
/// backupRetentionPeriod: 5,
/// preferredBackupWindow: "07:00-09:00",
/// skipFinalSnapshot: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// docdb = aws.docdb.Cluster("docdb",
/// cluster_identifier="my-docdb-cluster",
/// engine="docdb",
/// master_username="foo",
/// master_password="mustbeeightchars",
/// backup_retention_period=5,
/// preferred_backup_window="07:00-09:00",
/// skip_final_snapshot=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var docdb = new Aws.DocDB.Cluster("docdb", new()
/// {
/// ClusterIdentifier = "my-docdb-cluster",
/// Engine = "docdb",
/// MasterUsername = "foo",
/// MasterPassword = "mustbeeightchars",
/// BackupRetentionPeriod = 5,
/// PreferredBackupWindow = "07:00-09:00",
/// SkipFinalSnapshot = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/docdb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := docdb.NewCluster(ctx, "docdb", &docdb.ClusterArgs{
/// ClusterIdentifier:     pulumi.String("my-docdb-cluster"),
/// Engine:                pulumi.String("docdb"),
/// MasterUsername:        pulumi.String("foo"),
/// MasterPassword:        pulumi.String("mustbeeightchars"),
/// BackupRetentionPeriod: pulumi.Int(5),
/// PreferredBackupWindow: pulumi.String("07:00-09:00"),
/// SkipFinalSnapshot:     pulumi.Bool(true),
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
/// import com.pulumi.aws.docdb.Cluster;
/// import com.pulumi.aws.docdb.ClusterArgs;
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
/// var docdb = new Cluster("docdb", ClusterArgs.builder()
/// .clusterIdentifier("my-docdb-cluster")
/// .engine("docdb")
/// .masterUsername("foo")
/// .masterPassword("mustbeeightchars")
/// .backupRetentionPeriod(5)
/// .preferredBackupWindow("07:00-09:00")
/// .skipFinalSnapshot(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// docdb:
/// type: aws:docdb:Cluster
/// properties:
/// clusterIdentifier: my-docdb-cluster
/// engine: docdb
/// masterUsername: foo
/// masterPassword: mustbeeightchars
/// backupRetentionPeriod: 5
/// preferredBackupWindow: 07:00-09:00
/// skipFinalSnapshot: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DocumentDB Clusters using the <span pulumi-lang-nodejs="`clusterIdentifier`" pulumi-lang-dotnet="`ClusterIdentifier`" pulumi-lang-go="`clusterIdentifier`" pulumi-lang-python="`cluster_identifier`" pulumi-lang-yaml="`clusterIdentifier`" pulumi-lang-java="`clusterIdentifier`">`cluster_identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:docdb/cluster:Cluster docdb_cluster docdb-prod-cluster
/// ```
class Cluster3 extends CustomResource {
  /// A value that indicates whether major version upgrades are allowed. Constraints: You must allow major version upgrades when specifying a value for the EngineVersion parameter that is a different major version than the DB cluster's current version.
  late final Output<bool?> allowMajorVersionUpgrade;

  /// Specifies whether any cluster modifications
  /// are applied immediately, or during the next maintenance window. Default is
  /// <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> applyImmediately;

  /// Amazon Resource Name (ARN) of cluster
  late final Output<String> arn;

  /// A list of EC2 Availability Zones that instances in the DB cluster can be created in.
  /// DocumentDB automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next pulumi up.
  /// We recommend specifying 3 AZs or using the <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> configuration block <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> argument if necessary.
  late final Output<List<String>> availabilityZones;

  /// The days to retain backups for. Default <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>
  late final Output<int?> backupRetentionPeriod;

  /// The cluster identifier. If omitted, the provider will assign a random, unique identifier.
  late final Output<String> clusterIdentifier;

  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`clusterIdentifier`" pulumi-lang-dotnet="`ClusterIdentifier`" pulumi-lang-go="`clusterIdentifier`" pulumi-lang-python="`cluster_identifier`" pulumi-lang-yaml="`clusterIdentifier`" pulumi-lang-java="`clusterIdentifier`">`cluster_identifier`</span>.
  late final Output<String> clusterIdentifierPrefix;

  /// List of DocumentDB Instances that are a part of this cluster
  late final Output<List<String>> clusterMembers;

  /// The DocumentDB Cluster Resource ID
  late final Output<String> clusterResourceId;

  /// A cluster parameter group to associate with the cluster.
  late final Output<String> dbClusterParameterGroupName;

  /// A DB subnet group to associate with this DB instance.
  late final Output<String> dbSubnetGroupName;

  /// A boolean value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> deletionProtection;

  /// List of log types to export to cloudwatch. If omitted, no logs will be exported.
  /// The following log types are supported: <span pulumi-lang-nodejs="`audit`" pulumi-lang-dotnet="`Audit`" pulumi-lang-go="`audit`" pulumi-lang-python="`audit`" pulumi-lang-yaml="`audit`" pulumi-lang-java="`audit`">`audit`</span>, <span pulumi-lang-nodejs="`profiler`" pulumi-lang-dotnet="`Profiler`" pulumi-lang-go="`profiler`" pulumi-lang-python="`profiler`" pulumi-lang-yaml="`profiler`" pulumi-lang-java="`profiler`">`profiler`</span>.
  late final Output<List<String>?> enabledCloudwatchLogsExports;

  /// The DNS address of the DocumentDB instance
  late final Output<String> endpoint;

  /// The name of the database engine to be used for this DB cluster. Defaults to <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>. Valid values: <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>.
  late final Output<String?> engine;

  /// The database engine version. Updating this argument results in an outage.
  late final Output<String> engineVersion;

  /// The name of your final DB snapshot
  /// when this DB cluster is deleted. If omitted, no final snapshot will be
  /// made.
  late final Output<String?> finalSnapshotIdentifier;

  /// The global cluster identifier specified on <span pulumi-lang-nodejs="`aws.docdb.GlobalCluster`" pulumi-lang-dotnet="`aws.docdb.GlobalCluster`" pulumi-lang-go="`docdb.GlobalCluster`" pulumi-lang-python="`docdb.GlobalCluster`" pulumi-lang-yaml="`aws.docdb.GlobalCluster`" pulumi-lang-java="`aws.docdb.GlobalCluster`">`aws.docdb.GlobalCluster`</span>.
  late final Output<String?> globalClusterIdentifier;

  /// The Route53 Hosted Zone ID of the endpoint
  late final Output<String> hostedZoneId;

  /// The ARN for the KMS encryption key. When specifying <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span>, <span pulumi-lang-nodejs="`storageEncrypted`" pulumi-lang-dotnet="`StorageEncrypted`" pulumi-lang-go="`storageEncrypted`" pulumi-lang-python="`storage_encrypted`" pulumi-lang-yaml="`storageEncrypted`" pulumi-lang-java="`storageEncrypted`">`storage_encrypted`</span> needs to be set to true.
  late final Output<String> kmsKeyId;

  /// Set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to allow Amazon DocumentDB to manage the master user password in AWS Secrets Manager. Cannot be set if <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span> or <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> is provided.
  late final Output<bool?> manageMasterUserPassword;

  /// Password for the master DB user. Note that this may
  /// show up in logs, and it will be stored in the state file. Please refer to the DocumentDB Naming Constraints. Conflicts with <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> and <span pulumi-lang-nodejs="`manageMasterUserPassword`" pulumi-lang-dotnet="`ManageMasterUserPassword`" pulumi-lang-go="`manageMasterUserPassword`" pulumi-lang-python="`manage_master_user_password`" pulumi-lang-yaml="`manageMasterUserPassword`" pulumi-lang-java="`manageMasterUserPassword`">`manage_master_user_password`</span>.
  late final Output<String?> masterPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may
  /// show up in logs. Please refer to the DocumentDB Naming Constraints. Conflicts with <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span> and <span pulumi-lang-nodejs="`manageMasterUserPassword`" pulumi-lang-dotnet="`ManageMasterUserPassword`" pulumi-lang-go="`manageMasterUserPassword`" pulumi-lang-python="`manage_master_user_password`" pulumi-lang-yaml="`manageMasterUserPassword`" pulumi-lang-java="`manageMasterUserPassword`">`manage_master_user_password`</span>.
  late final Output<String?> masterPasswordWo;

  /// Used together with <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> to trigger an update. Increment this value when an update to the <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> is required.
  late final Output<int?> masterPasswordWoVersion;
  late final Output<List<ClusterMasterUserSecret>> masterUserSecrets;

  /// Username for the master DB user.
  late final Output<String> masterUsername;

  /// The network type of the DB cluster (`IPV4` or `DUAL`).
  late final Output<String> networkType;

  /// The port on which the DB accepts connections
  late final Output<int?> port;

  /// The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC
  /// Default: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00
  late final Output<String> preferredBackupWindow;

  /// The weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30
  late final Output<String> preferredMaintenanceWindow;

  /// A read-only endpoint for the DocumentDB cluster, automatically load-balanced across replicas
  late final Output<String> readerEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A configuration block for restoring a DB instance to an arbitrary point in time. Requires the <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span> argument to be set with the name of the new DB instance to be created. See Restore To Point In Time below for details.
  late final Output<ClusterRestoreToPointInTime?> restoreToPointInTime;

  /// Scaling configuration of an Amazon DocumentDB Serverless cluster. See Serverless V2 Scaling Configuration below for details.
  late final Output<ClusterServerlessV2ScalingConfiguration?>
      serverlessV2ScalingConfiguration;

  /// Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from <span pulumi-lang-nodejs="`finalSnapshotIdentifier`" pulumi-lang-dotnet="`FinalSnapshotIdentifier`" pulumi-lang-go="`finalSnapshotIdentifier`" pulumi-lang-python="`final_snapshot_identifier`" pulumi-lang-yaml="`finalSnapshotIdentifier`" pulumi-lang-java="`finalSnapshotIdentifier`">`final_snapshot_identifier`</span>. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> skipFinalSnapshot;

  /// Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Automated snapshots **should not** be used for this attribute, unless from a different cluster. Automated snapshots are deleted as part of cluster destruction when the resource is replaced.
  late final Output<String?> snapshotIdentifier;

  /// Specifies whether the DB cluster is encrypted. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> storageEncrypted;

  /// The storage type to associate with the DB cluster. Valid values: <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, <span pulumi-lang-nodejs="`iopt1`" pulumi-lang-dotnet="`Iopt1`" pulumi-lang-go="`iopt1`" pulumi-lang-python="`iopt1`" pulumi-lang-yaml="`iopt1`" pulumi-lang-java="`iopt1`">`iopt1`</span>.
  late final Output<String?> storageType;

  /// A map of tags to assign to the DB cluster. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// List of VPC security groups to associate
  /// with the Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/docdb/create-db-cluster.html).
  late final Output<List<String>> vpcSecurityGroupIds;

  Cluster3(
    String name, {
    ClusterArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:docdb/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowMajorVersionUpgrade =
        registerOutput<bool?>('allowMajorVersionUpgrade');
    this.applyImmediately = registerOutput<bool?>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.backupRetentionPeriod = registerOutput<int?>('backupRetentionPeriod');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.clusterIdentifierPrefix =
        registerOutput<String>('clusterIdentifierPrefix');
    this.clusterMembers = registerOutput<List<String>>('clusterMembers');
    this.clusterResourceId = registerOutput<String>('clusterResourceId');
    this.dbClusterParameterGroupName =
        registerOutput<String>('dbClusterParameterGroupName');
    this.dbSubnetGroupName = registerOutput<String>('dbSubnetGroupName');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.enabledCloudwatchLogsExports =
        registerOutput<List<String>?>('enabledCloudwatchLogsExports');
    this.endpoint = registerOutput<String>('endpoint');
    this.engine = registerOutput<String?>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.finalSnapshotIdentifier =
        registerOutput<String?>('finalSnapshotIdentifier');
    this.globalClusterIdentifier =
        registerOutput<String?>('globalClusterIdentifier');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.manageMasterUserPassword =
        registerOutput<bool?>('manageMasterUserPassword');
    this.masterPassword = registerOutput<String?>('masterPassword');
    this.masterPasswordWo = registerOutput<String?>('masterPasswordWo');
    this.masterPasswordWoVersion =
        registerOutput<int?>('masterPasswordWoVersion');
    this.masterUserSecrets =
        registerOutput<List<ClusterMasterUserSecret>>('masterUserSecrets');
    this.masterUsername = registerOutput<String>('masterUsername');
    this.networkType = registerOutput<String>('networkType');
    this.port = registerOutput<int?>('port');
    this.preferredBackupWindow =
        registerOutput<String>('preferredBackupWindow');
    this.preferredMaintenanceWindow =
        registerOutput<String>('preferredMaintenanceWindow');
    this.readerEndpoint = registerOutput<String>('readerEndpoint');
    this.region = registerOutput<String>('region');
    this.restoreToPointInTime =
        registerOutput<ClusterRestoreToPointInTime?>('restoreToPointInTime');
    this.serverlessV2ScalingConfiguration =
        registerOutput<ClusterServerlessV2ScalingConfiguration?>(
            'serverlessV2ScalingConfiguration');
    this.skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    this.snapshotIdentifier = registerOutput<String?>('snapshotIdentifier');
    this.storageEncrypted = registerOutput<bool?>('storageEncrypted');
    this.storageType = registerOutput<String?>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
