import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_cluster_node.dart';
import 'cluster_state.dart';

/// Provides a Redshift Cluster Resource.
///
///
/// > **NOTE:** A Redshift cluster's default IAM role can be managed both by this resource's `default_iam_role_arn` argument and the `aws.redshift.ClusterIamRoles` resource's `default_iam_role_arn` argument. Do not configure different values for both arguments. Doing so will cause a conflict of default IAM roles.
///
/// > **Note:** Write-Only argument `master_password_wo` is available to use in place of `master_password`. Write-Only arguments are supported in HashiCorp Terraform 1.11.0 and later. Learn more.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.Cluster("example", {
///     clusterIdentifier: "tf-redshift-cluster",
///     databaseName: "mydb",
///     masterUsername: "exampleuser",
///     masterPassword: "Mustbe8characters",
///     nodeType: "dc1.large",
///     clusterType: "single-node",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.Cluster("example",
///     cluster_identifier="tf-redshift-cluster",
///     database_name="mydb",
///     master_username="exampleuser",
///     master_password="Mustbe8characters",
///     node_type="dc1.large",
///     cluster_type="single-node")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.Cluster("example", new()
///     {
///         ClusterIdentifier = "tf-redshift-cluster",
///         DatabaseName = "mydb",
///         MasterUsername = "exampleuser",
///         MasterPassword = "Mustbe8characters",
///         NodeType = "dc1.large",
///         ClusterType = "single-node",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.NewCluster(ctx, "example", &redshift.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("tf-redshift-cluster"),
/// 			DatabaseName:      pulumi.String("mydb"),
/// 			MasterUsername:    pulumi.String("exampleuser"),
/// 			MasterPassword:    pulumi.String("Mustbe8characters"),
/// 			NodeType:          pulumi.String("dc1.large"),
/// 			ClusterType:       pulumi.String("single-node"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.Cluster;
/// import com.pulumi.aws.redshift.ClusterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterIdentifier("tf-redshift-cluster")
///             .databaseName("mydb")
///             .masterUsername("exampleuser")
///             .masterPassword("Mustbe8characters")
///             .nodeType("dc1.large")
///             .clusterType("single-node")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:Cluster
///     properties:
///       clusterIdentifier: tf-redshift-cluster
///       databaseName: mydb
///       masterUsername: exampleuser
///       masterPassword: Mustbe8characters
///       nodeType: dc1.large
///       clusterType: single-node
/// ```
///
///
/// ### With Managed Credentials
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.Cluster("example", {
///     clusterIdentifier: "tf-redshift-cluster",
///     databaseName: "mydb",
///     masterUsername: "exampleuser",
///     nodeType: "dc1.large",
///     clusterType: "single-node",
///     manageMasterPassword: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.Cluster("example",
///     cluster_identifier="tf-redshift-cluster",
///     database_name="mydb",
///     master_username="exampleuser",
///     node_type="dc1.large",
///     cluster_type="single-node",
///     manage_master_password=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.Cluster("example", new()
///     {
///         ClusterIdentifier = "tf-redshift-cluster",
///         DatabaseName = "mydb",
///         MasterUsername = "exampleuser",
///         NodeType = "dc1.large",
///         ClusterType = "single-node",
///         ManageMasterPassword = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.NewCluster(ctx, "example", &redshift.ClusterArgs{
/// 			ClusterIdentifier:    pulumi.String("tf-redshift-cluster"),
/// 			DatabaseName:         pulumi.String("mydb"),
/// 			MasterUsername:       pulumi.String("exampleuser"),
/// 			NodeType:             pulumi.String("dc1.large"),
/// 			ClusterType:          pulumi.String("single-node"),
/// 			ManageMasterPassword: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.Cluster;
/// import com.pulumi.aws.redshift.ClusterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterIdentifier("tf-redshift-cluster")
///             .databaseName("mydb")
///             .masterUsername("exampleuser")
///             .nodeType("dc1.large")
///             .clusterType("single-node")
///             .manageMasterPassword(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:Cluster
///     properties:
///       clusterIdentifier: tf-redshift-cluster
///       databaseName: mydb
///       masterUsername: exampleuser
///       nodeType: dc1.large
///       clusterType: single-node
///       manageMasterPassword: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Clusters using the `cluster_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/cluster:Cluster myprodcluster tf-redshift-cluster-12345
/// ```
class Cluster extends pulumi.CustomResource {
  /// If true , major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. Default is `true`.
  late final pulumi.Output<bool?> allowVersionUpgrade;
  /// Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`.
  late final pulumi.Output<bool?> applyImmediately;
  /// The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored.
  /// No longer supported by the AWS API.
  /// Always returns `auto`.
  late final pulumi.Output<String> aquaConfigurationStatus;
  /// Amazon Resource Name (ARN) of cluster
  late final pulumi.Output<String> arn;
  /// The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with create-cluster-snapshot. Default is 1.
  late final pulumi.Output<int?> automatedSnapshotRetentionPeriod;
  /// The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. For example, if you have several EC2 instances running in a specific Availability Zone, then you might want the cluster to be provisioned in the same zone in order to decrease network latency. Can only be changed if `availability_zone_relocation_enabled` is `true`.
  late final pulumi.Output<String> availabilityZone;
  /// If true, the cluster can be relocated to another availabity zone, either automatically by AWS or when requested. Default is `false`. Available for use on clusters from the RA3 instance family.
  late final pulumi.Output<bool?> availabilityZoneRelocationEnabled;
  /// The Cluster Identifier. Must be a lower case string.
  late final pulumi.Output<String> clusterIdentifier;
  /// The namespace Amazon Resource Name (ARN) of the cluster
  late final pulumi.Output<String> clusterNamespaceArn;
  /// The nodes in the cluster. Cluster node blocks are documented below
  late final pulumi.Output<List<ClusterClusterNode>> clusterNodes;
  /// The name of the parameter group to be associated with this cluster.
  late final pulumi.Output<String> clusterParameterGroupName;
  /// The public key for the cluster
  late final pulumi.Output<String> clusterPublicKey;
  /// The specific revision number of the database in the cluster
  late final pulumi.Output<String> clusterRevisionNumber;
  /// The name of a cluster subnet group to be associated with this cluster. If this parameter is not provided the resulting cluster will be deployed outside virtual private cloud (VPC).
  late final pulumi.Output<String> clusterSubnetGroupName;
  /// The cluster type to use. Either `single-node` or `multi-node`.
  late final pulumi.Output<String> clusterType;
  /// The version of the Amazon Redshift engine software that you want to deploy on the cluster.
  /// The version selected runs on all the nodes in the cluster.
  late final pulumi.Output<String?> clusterVersion;
  /// The name of the first database to be created when the cluster is created.
  /// If you do not provide a name, Amazon Redshift will create a default database called `dev`.
  late final pulumi.Output<String> databaseName;
  /// The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  late final pulumi.Output<String> defaultIamRoleArn;
  /// The DNS name of the cluster
  late final pulumi.Output<String> dnsName;
  /// The Elastic IP (EIP) address for the cluster.
  late final pulumi.Output<String?> elasticIp;
  /// If true , the data in the cluster is encrypted at rest.
  /// Default is `true`.
  late final pulumi.Output<String?> encrypted;
  /// The connection endpoint
  late final pulumi.Output<String> endpoint;
  /// If true , enhanced VPC routing is enabled.
  late final pulumi.Output<bool> enhancedVpcRouting;
  /// The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, `skip_final_snapshot` must be false.
  late final pulumi.Output<String?> finalSnapshotIdentifier;
  /// A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  late final pulumi.Output<List<String>> iamRoles;
  /// The ARN for the KMS encryption key. When specifying `kms_key_id`, `encrypted` needs to be set to true.
  late final pulumi.Output<String> kmsKeyId;
  /// The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the MaintenanceTrack value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of  a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks. Default value is `current`.
  late final pulumi.Output<String?> maintenanceTrackName;
  /// Whether to use AWS SecretsManager to manage the cluster admin credentials.
  /// Conflicts with `master_password` and `master_password_wo`.
  /// One of `master_password` or `manage_master_password` is required unless `snapshot_identifier` is provided.
  late final pulumi.Output<bool?> manageMasterPassword;
  /// The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots. Valid values are between `-1` and `3653`. Default value is `-1`.
  late final pulumi.Output<int?> manualSnapshotRetentionPeriod;
  /// Password for the master DB user.
  /// Conflicts with `manage_master_password` and `master_password_wo`.
  /// One of `master_password`, `master_password_wo` or `manage_master_password` is required unless `snapshot_identifier` is provided.
  /// Note that this may show up in logs, and it will be stored in the state file.
  /// Password must contain at least 8 characters and contain at least one uppercase letter, one lowercase letter, and one number.
  late final pulumi.Output<String?> masterPassword;
  /// ARN of the cluster admin credentials secret
  late final pulumi.Output<String> masterPasswordSecretArn;
  /// ID of the KMS key used to encrypt the cluster admin credentials secret.
  late final pulumi.Output<String> masterPasswordSecretKmsKeyId;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user.
  /// Conflicts with `manage_master_password` and `master_password`.
  /// One of `master_password_wo`, `master_password` or `manage_master_password` is required unless `snapshot_identifier` is provided.
  /// Note that this may show up in logs.
  /// Password must contain at least 8 characters and contain at least one uppercase letter, one lowercase letter, and one number.
  late final pulumi.Output<String?> masterPasswordWo;
  /// Used together with `master_password_wo` to trigger an update. Increment this value when an update to the `master_password_wo` is required.
  late final pulumi.Output<int?> masterPasswordWoVersion;
  /// Username for the master DB user.
  late final pulumi.Output<String?> masterUsername;
  /// Specifies if the Redshift cluster is multi-AZ.
  late final pulumi.Output<bool?> multiAz;
  /// The node type to be provisioned for the cluster.
  late final pulumi.Output<String> nodeType;
  /// The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node. Default is 1.
  late final pulumi.Output<int?> numberOfNodes;
  /// The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.
  late final pulumi.Output<String?> ownerAccount;
  /// The port number on which the cluster accepts incoming connections. Valid values are between `1115` and `65535`.
  /// The cluster is accessible only via the JDBC and ODBC connection strings.
  /// Part of the connection string requires the port on which the cluster will listen for incoming connections.
  /// Default port is `5439`.
  late final pulumi.Output<int?> port;
  /// The weekly time range (in UTC) during which automated cluster maintenance can occur.
  /// Format: ddd:hh24:mi-ddd:hh24:mi
  late final pulumi.Output<String> preferredMaintenanceWindow;
  /// If true, the cluster can be accessed from a public network. Default is `false`.
  late final pulumi.Output<bool?> publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If true , a final cluster snapshot is not created. If false , a final cluster snapshot is created before the cluster is deleted. Default is false.
  late final pulumi.Output<bool?> skipFinalSnapshot;
  /// The ARN of the snapshot from which to create the new cluster. Conflicts with `snapshot_identifier`.
  late final pulumi.Output<String?> snapshotArn;
  /// The name of the cluster the source snapshot was created from.
  late final pulumi.Output<String?> snapshotClusterIdentifier;
  /// The name of the snapshot from which to create the new cluster.  Conflicts with `snapshot_arn`.
  late final pulumi.Output<String?> snapshotIdentifier;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](http://docs.aws.amazon.com/cli/latest/reference/redshift/index.html#cli-aws-redshift).
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_redshift_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowVersionUpgrade = registerOutput<bool?>('allowVersionUpgrade');
    this.applyImmediately = registerOutput<bool?>('applyImmediately');
    this.aquaConfigurationStatus = registerOutput<String>('aquaConfigurationStatus');
    this.arn = registerOutput<String>('arn');
    this.automatedSnapshotRetentionPeriod = registerOutput<int?>('automatedSnapshotRetentionPeriod');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.availabilityZoneRelocationEnabled = registerOutput<bool?>('availabilityZoneRelocationEnabled');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.clusterNamespaceArn = registerOutput<String>('clusterNamespaceArn');
    this.clusterNodes = registerOutput<List<ClusterClusterNode>>('clusterNodes');
    this.clusterParameterGroupName = registerOutput<String>('clusterParameterGroupName');
    this.clusterPublicKey = registerOutput<String>('clusterPublicKey');
    this.clusterRevisionNumber = registerOutput<String>('clusterRevisionNumber');
    this.clusterSubnetGroupName = registerOutput<String>('clusterSubnetGroupName');
    this.clusterType = registerOutput<String>('clusterType');
    this.clusterVersion = registerOutput<String?>('clusterVersion');
    this.databaseName = registerOutput<String>('databaseName');
    this.defaultIamRoleArn = registerOutput<String>('defaultIamRoleArn');
    this.dnsName = registerOutput<String>('dnsName');
    this.elasticIp = registerOutput<String?>('elasticIp');
    this.encrypted = registerOutput<String?>('encrypted');
    this.endpoint = registerOutput<String>('endpoint');
    this.enhancedVpcRouting = registerOutput<bool>('enhancedVpcRouting');
    this.finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    this.iamRoles = registerOutput<List<String>>('iamRoles');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.maintenanceTrackName = registerOutput<String?>('maintenanceTrackName');
    this.manageMasterPassword = registerOutput<bool?>('manageMasterPassword');
    this.manualSnapshotRetentionPeriod = registerOutput<int?>('manualSnapshotRetentionPeriod');
    this.masterPassword = registerOutput<String?>('masterPassword');
    this.masterPasswordSecretArn = registerOutput<String>('masterPasswordSecretArn');
    this.masterPasswordSecretKmsKeyId = registerOutput<String>('masterPasswordSecretKmsKeyId');
    this.masterPasswordWo = registerOutput<String?>('masterPasswordWo');
    this.masterPasswordWoVersion = registerOutput<int?>('masterPasswordWoVersion');
    this.masterUsername = registerOutput<String?>('masterUsername');
    this.multiAz = registerOutput<bool?>('multiAz');
    this.nodeType = registerOutput<String>('nodeType');
    this.numberOfNodes = registerOutput<int?>('numberOfNodes');
    this.ownerAccount = registerOutput<String?>('ownerAccount');
    this.port = registerOutput<int?>('port');
    this.preferredMaintenanceWindow = registerOutput<String>('preferredMaintenanceWindow');
    this.publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    this.snapshotArn = registerOutput<String?>('snapshotArn');
    this.snapshotClusterIdentifier = registerOutput<String?>('snapshotClusterIdentifier');
    this.snapshotIdentifier = registerOutput<String?>('snapshotIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
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
          'aws:redshift/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowVersionUpgrade = registerOutput<bool?>('allowVersionUpgrade');
    this.applyImmediately = registerOutput<bool?>('applyImmediately');
    this.aquaConfigurationStatus = registerOutput<String>('aquaConfigurationStatus');
    this.arn = registerOutput<String>('arn');
    this.automatedSnapshotRetentionPeriod = registerOutput<int?>('automatedSnapshotRetentionPeriod');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.availabilityZoneRelocationEnabled = registerOutput<bool?>('availabilityZoneRelocationEnabled');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.clusterNamespaceArn = registerOutput<String>('clusterNamespaceArn');
    this.clusterNodes = registerOutput<List<ClusterClusterNode>>('clusterNodes');
    this.clusterParameterGroupName = registerOutput<String>('clusterParameterGroupName');
    this.clusterPublicKey = registerOutput<String>('clusterPublicKey');
    this.clusterRevisionNumber = registerOutput<String>('clusterRevisionNumber');
    this.clusterSubnetGroupName = registerOutput<String>('clusterSubnetGroupName');
    this.clusterType = registerOutput<String>('clusterType');
    this.clusterVersion = registerOutput<String?>('clusterVersion');
    this.databaseName = registerOutput<String>('databaseName');
    this.defaultIamRoleArn = registerOutput<String>('defaultIamRoleArn');
    this.dnsName = registerOutput<String>('dnsName');
    this.elasticIp = registerOutput<String?>('elasticIp');
    this.encrypted = registerOutput<String?>('encrypted');
    this.endpoint = registerOutput<String>('endpoint');
    this.enhancedVpcRouting = registerOutput<bool>('enhancedVpcRouting');
    this.finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    this.iamRoles = registerOutput<List<String>>('iamRoles');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.maintenanceTrackName = registerOutput<String?>('maintenanceTrackName');
    this.manageMasterPassword = registerOutput<bool?>('manageMasterPassword');
    this.manualSnapshotRetentionPeriod = registerOutput<int?>('manualSnapshotRetentionPeriod');
    this.masterPassword = registerOutput<String?>('masterPassword');
    this.masterPasswordSecretArn = registerOutput<String>('masterPasswordSecretArn');
    this.masterPasswordSecretKmsKeyId = registerOutput<String>('masterPasswordSecretKmsKeyId');
    this.masterPasswordWo = registerOutput<String?>('masterPasswordWo');
    this.masterPasswordWoVersion = registerOutput<int?>('masterPasswordWoVersion');
    this.masterUsername = registerOutput<String?>('masterUsername');
    this.multiAz = registerOutput<bool?>('multiAz');
    this.nodeType = registerOutput<String>('nodeType');
    this.numberOfNodes = registerOutput<int?>('numberOfNodes');
    this.ownerAccount = registerOutput<String?>('ownerAccount');
    this.port = registerOutput<int?>('port');
    this.preferredMaintenanceWindow = registerOutput<String>('preferredMaintenanceWindow');
    this.publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    this.snapshotArn = registerOutput<String?>('snapshotArn');
    this.snapshotClusterIdentifier = registerOutput<String?>('snapshotClusterIdentifier');
    this.snapshotIdentifier = registerOutput<String?>('snapshotIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
