import 'package:pulumi/pulumi.dart';
import '../cluster_cluster_node/cluster_cluster_node.dart';
import 'cluster_args13.dart';

/// Provides a Redshift Cluster Resource.
///
///
/// > **NOTE:** A Redshift cluster's default IAM role can be managed both by this resource's <span pulumi-lang-nodejs="`defaultIamRoleArn`" pulumi-lang-dotnet="`DefaultIamRoleArn`" pulumi-lang-go="`defaultIamRoleArn`" pulumi-lang-python="`default_iam_role_arn`" pulumi-lang-yaml="`defaultIamRoleArn`" pulumi-lang-java="`defaultIamRoleArn`">`default_iam_role_arn`</span> argument and the <span pulumi-lang-nodejs="`aws.redshift.ClusterIamRoles`" pulumi-lang-dotnet="`aws.redshift.ClusterIamRoles`" pulumi-lang-go="`redshift.ClusterIamRoles`" pulumi-lang-python="`redshift.ClusterIamRoles`" pulumi-lang-yaml="`aws.redshift.ClusterIamRoles`" pulumi-lang-java="`aws.redshift.ClusterIamRoles`">`aws.redshift.ClusterIamRoles`</span> resource's <span pulumi-lang-nodejs="`defaultIamRoleArn`" pulumi-lang-dotnet="`DefaultIamRoleArn`" pulumi-lang-go="`defaultIamRoleArn`" pulumi-lang-python="`default_iam_role_arn`" pulumi-lang-yaml="`defaultIamRoleArn`" pulumi-lang-java="`defaultIamRoleArn`">`default_iam_role_arn`</span> argument. Do not configure different values for both arguments. Doing so will cause a conflict of default IAM roles.
///
/// > **Note:** Write-Only argument <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> is available to use in place of <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span>. Write-Only arguments are supported in HashiCorp Terraform 1.11.0 and later. Learn more.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.Cluster("example", {
/// clusterIdentifier: "tf-redshift-cluster",
/// databaseName: "mydb",
/// masterUsername: "exampleuser",
/// masterPassword: "Mustbe8characters",
/// nodeType: "dc1.large",
/// clusterType: "single-node",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.Cluster("example",
/// cluster_identifier="tf-redshift-cluster",
/// database_name="mydb",
/// master_username="exampleuser",
/// master_password="Mustbe8characters",
/// node_type="dc1.large",
/// cluster_type="single-node")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.RedShift.Cluster("example", new()
/// {
/// ClusterIdentifier = "tf-redshift-cluster",
/// DatabaseName = "mydb",
/// MasterUsername = "exampleuser",
/// MasterPassword = "Mustbe8characters",
/// NodeType = "dc1.large",
/// ClusterType = "single-node",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshift.NewCluster(ctx, "example", &redshift.ClusterArgs{
/// ClusterIdentifier: pulumi.String("tf-redshift-cluster"),
/// DatabaseName:      pulumi.String("mydb"),
/// MasterUsername:    pulumi.String("exampleuser"),
/// MasterPassword:    pulumi.String("Mustbe8characters"),
/// NodeType:          pulumi.String("dc1.large"),
/// ClusterType:       pulumi.String("single-node"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Cluster("example", ClusterArgs.builder()
/// .clusterIdentifier("tf-redshift-cluster")
/// .databaseName("mydb")
/// .masterUsername("exampleuser")
/// .masterPassword("Mustbe8characters")
/// .nodeType("dc1.large")
/// .clusterType("single-node")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshift:Cluster
/// properties:
/// clusterIdentifier: tf-redshift-cluster
/// databaseName: mydb
/// masterUsername: exampleuser
/// masterPassword: Mustbe8characters
/// nodeType: dc1.large
/// clusterType: single-node
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Managed Credentials
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.Cluster("example", {
/// clusterIdentifier: "tf-redshift-cluster",
/// databaseName: "mydb",
/// masterUsername: "exampleuser",
/// nodeType: "dc1.large",
/// clusterType: "single-node",
/// manageMasterPassword: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.Cluster("example",
/// cluster_identifier="tf-redshift-cluster",
/// database_name="mydb",
/// master_username="exampleuser",
/// node_type="dc1.large",
/// cluster_type="single-node",
/// manage_master_password=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.RedShift.Cluster("example", new()
/// {
/// ClusterIdentifier = "tf-redshift-cluster",
/// DatabaseName = "mydb",
/// MasterUsername = "exampleuser",
/// NodeType = "dc1.large",
/// ClusterType = "single-node",
/// ManageMasterPassword = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshift.NewCluster(ctx, "example", &redshift.ClusterArgs{
/// ClusterIdentifier:    pulumi.String("tf-redshift-cluster"),
/// DatabaseName:         pulumi.String("mydb"),
/// MasterUsername:       pulumi.String("exampleuser"),
/// NodeType:             pulumi.String("dc1.large"),
/// ClusterType:          pulumi.String("single-node"),
/// ManageMasterPassword: pulumi.Bool(true),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Cluster("example", ClusterArgs.builder()
/// .clusterIdentifier("tf-redshift-cluster")
/// .databaseName("mydb")
/// .masterUsername("exampleuser")
/// .nodeType("dc1.large")
/// .clusterType("single-node")
/// .manageMasterPassword(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshift:Cluster
/// properties:
/// clusterIdentifier: tf-redshift-cluster
/// databaseName: mydb
/// masterUsername: exampleuser
/// nodeType: dc1.large
/// clusterType: single-node
/// manageMasterPassword: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Clusters using the <span pulumi-lang-nodejs="`clusterIdentifier`" pulumi-lang-dotnet="`ClusterIdentifier`" pulumi-lang-go="`clusterIdentifier`" pulumi-lang-python="`cluster_identifier`" pulumi-lang-yaml="`clusterIdentifier`" pulumi-lang-java="`clusterIdentifier`">`cluster_identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/cluster:Cluster myprodcluster tf-redshift-cluster-12345
/// ```
class Cluster13 extends CustomResource {
  /// If true , major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> allowVersionUpgrade;

  /// Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> applyImmediately;

  /// The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored.
  /// No longer supported by the AWS API.
  /// Always returns <span pulumi-lang-nodejs="`auto`" pulumi-lang-dotnet="`Auto`" pulumi-lang-go="`auto`" pulumi-lang-python="`auto`" pulumi-lang-yaml="`auto`" pulumi-lang-java="`auto`">`auto`</span>.
  late final Output<String> aquaConfigurationStatus;

  /// Amazon Resource Name (ARN) of cluster
  late final Output<String> arn;

  /// The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with create-cluster-snapshot. Default is 1.
  late final Output<int?> automatedSnapshotRetentionPeriod;

  /// The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. For example, if you have several EC2 instances running in a specific Availability Zone, then you might want the cluster to be provisioned in the same zone in order to decrease network latency. Can only be changed if <span pulumi-lang-nodejs="`availabilityZoneRelocationEnabled`" pulumi-lang-dotnet="`AvailabilityZoneRelocationEnabled`" pulumi-lang-go="`availabilityZoneRelocationEnabled`" pulumi-lang-python="`availability_zone_relocation_enabled`" pulumi-lang-yaml="`availabilityZoneRelocationEnabled`" pulumi-lang-java="`availabilityZoneRelocationEnabled`">`availability_zone_relocation_enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<String> availabilityZone;

  /// If true, the cluster can be relocated to another availabity zone, either automatically by AWS or when requested. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Available for use on clusters from the RA3 instance family.
  late final Output<bool?> availabilityZoneRelocationEnabled;

  /// The Cluster Identifier. Must be a lower case string.
  late final Output<String> clusterIdentifier;

  /// The namespace Amazon Resource Name (ARN) of the cluster
  late final Output<String> clusterNamespaceArn;

  /// The nodes in the cluster. Cluster node blocks are documented below
  late final Output<List<ClusterClusterNode>> clusterNodes;

  /// The name of the parameter group to be associated with this cluster.
  late final Output<String> clusterParameterGroupName;

  /// The public key for the cluster
  late final Output<String> clusterPublicKey;

  /// The specific revision number of the database in the cluster
  late final Output<String> clusterRevisionNumber;

  /// The name of a cluster subnet group to be associated with this cluster. If this parameter is not provided the resulting cluster will be deployed outside virtual private cloud (VPC).
  late final Output<String> clusterSubnetGroupName;

  /// The cluster type to use. Either `single-node` or `multi-node`.
  late final Output<String> clusterType;

  /// The version of the Amazon Redshift engine software that you want to deploy on the cluster.
  /// The version selected runs on all the nodes in the cluster.
  late final Output<String?> clusterVersion;

  /// The name of the first database to be created when the cluster is created.
  /// If you do not provide a name, Amazon Redshift will create a default database called <span pulumi-lang-nodejs="`dev`" pulumi-lang-dotnet="`Dev`" pulumi-lang-go="`dev`" pulumi-lang-python="`dev`" pulumi-lang-yaml="`dev`" pulumi-lang-java="`dev`">`dev`</span>.
  late final Output<String> databaseName;

  /// The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created.
  late final Output<String> defaultIamRoleArn;

  /// The DNS name of the cluster
  late final Output<String> dnsName;

  /// The Elastic IP (EIP) address for the cluster.
  late final Output<String?> elasticIp;

  /// If true , the data in the cluster is encrypted at rest.
  /// Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<String?> encrypted;

  /// The connection endpoint
  late final Output<String> endpoint;

  /// If true , enhanced VPC routing is enabled.
  late final Output<bool> enhancedVpcRouting;

  /// The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, <span pulumi-lang-nodejs="`skipFinalSnapshot`" pulumi-lang-dotnet="`SkipFinalSnapshot`" pulumi-lang-go="`skipFinalSnapshot`" pulumi-lang-python="`skip_final_snapshot`" pulumi-lang-yaml="`skipFinalSnapshot`" pulumi-lang-java="`skipFinalSnapshot`">`skip_final_snapshot`</span> must be false.
  late final Output<String?> finalSnapshotIdentifier;

  /// A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time.
  late final Output<List<String>> iamRoles;

  /// The ARN for the KMS encryption key. When specifying <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span>, <span pulumi-lang-nodejs="`encrypted`" pulumi-lang-dotnet="`Encrypted`" pulumi-lang-go="`encrypted`" pulumi-lang-python="`encrypted`" pulumi-lang-yaml="`encrypted`" pulumi-lang-java="`encrypted`">`encrypted`</span> needs to be set to true.
  late final Output<String> kmsKeyId;

  /// The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the MaintenanceTrack value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of  a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks. Default value is <span pulumi-lang-nodejs="`current`" pulumi-lang-dotnet="`Current`" pulumi-lang-go="`current`" pulumi-lang-python="`current`" pulumi-lang-yaml="`current`" pulumi-lang-java="`current`">`current`</span>.
  late final Output<String?> maintenanceTrackName;

  /// Whether to use AWS SecretsManager to manage the cluster admin credentials.
  /// Conflicts with <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span> and <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span>.
  /// One of <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span> or <span pulumi-lang-nodejs="`manageMasterPassword`" pulumi-lang-dotnet="`ManageMasterPassword`" pulumi-lang-go="`manageMasterPassword`" pulumi-lang-python="`manage_master_password`" pulumi-lang-yaml="`manageMasterPassword`" pulumi-lang-java="`manageMasterPassword`">`manage_master_password`</span> is required unless <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span> is provided.
  late final Output<bool?> manageMasterPassword;

  /// The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots. Valid values are between `-1` and <span pulumi-lang-nodejs="`3653`" pulumi-lang-dotnet="`3653`" pulumi-lang-go="`3653`" pulumi-lang-python="`3653`" pulumi-lang-yaml="`3653`" pulumi-lang-java="`3653`">`3653`</span>. Default value is `-1`.
  late final Output<int?> manualSnapshotRetentionPeriod;

  /// Password for the master DB user.
  /// Conflicts with <span pulumi-lang-nodejs="`manageMasterPassword`" pulumi-lang-dotnet="`ManageMasterPassword`" pulumi-lang-go="`manageMasterPassword`" pulumi-lang-python="`manage_master_password`" pulumi-lang-yaml="`manageMasterPassword`" pulumi-lang-java="`manageMasterPassword`">`manage_master_password`</span> and <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span>.
  /// One of <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span>, <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> or <span pulumi-lang-nodejs="`manageMasterPassword`" pulumi-lang-dotnet="`ManageMasterPassword`" pulumi-lang-go="`manageMasterPassword`" pulumi-lang-python="`manage_master_password`" pulumi-lang-yaml="`manageMasterPassword`" pulumi-lang-java="`manageMasterPassword`">`manage_master_password`</span> is required unless <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span> is provided.
  /// Note that this may show up in logs, and it will be stored in the state file.
  /// Password must contain at least 8 characters and contain at least one uppercase letter, one lowercase letter, and one number.
  late final Output<String?> masterPassword;

  /// ARN of the cluster admin credentials secret
  late final Output<String> masterPasswordSecretArn;

  /// ID of the KMS key used to encrypt the cluster admin credentials secret.
  late final Output<String> masterPasswordSecretKmsKeyId;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user.
  /// Conflicts with <span pulumi-lang-nodejs="`manageMasterPassword`" pulumi-lang-dotnet="`ManageMasterPassword`" pulumi-lang-go="`manageMasterPassword`" pulumi-lang-python="`manage_master_password`" pulumi-lang-yaml="`manageMasterPassword`" pulumi-lang-java="`manageMasterPassword`">`manage_master_password`</span> and <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span>.
  /// One of <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span>, <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span> or <span pulumi-lang-nodejs="`manageMasterPassword`" pulumi-lang-dotnet="`ManageMasterPassword`" pulumi-lang-go="`manageMasterPassword`" pulumi-lang-python="`manage_master_password`" pulumi-lang-yaml="`manageMasterPassword`" pulumi-lang-java="`manageMasterPassword`">`manage_master_password`</span> is required unless <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span> is provided.
  /// Note that this may show up in logs.
  /// Password must contain at least 8 characters and contain at least one uppercase letter, one lowercase letter, and one number.
  late final Output<String?> masterPasswordWo;

  /// Used together with <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> to trigger an update. Increment this value when an update to the <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> is required.
  late final Output<int?> masterPasswordWoVersion;

  /// Username for the master DB user.
  late final Output<String?> masterUsername;

  /// Specifies if the Redshift cluster is multi-AZ.
  late final Output<bool?> multiAz;

  /// The node type to be provisioned for the cluster.
  late final Output<String> nodeType;

  /// The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node. Default is 1.
  late final Output<int?> numberOfNodes;

  /// The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot.
  late final Output<String?> ownerAccount;

  /// The port number on which the cluster accepts incoming connections. Valid values are between <span pulumi-lang-nodejs="`1115`" pulumi-lang-dotnet="`1115`" pulumi-lang-go="`1115`" pulumi-lang-python="`1115`" pulumi-lang-yaml="`1115`" pulumi-lang-java="`1115`">`1115`</span> and <span pulumi-lang-nodejs="`65535`" pulumi-lang-dotnet="`65535`" pulumi-lang-go="`65535`" pulumi-lang-python="`65535`" pulumi-lang-yaml="`65535`" pulumi-lang-java="`65535`">`65535`</span>.
  /// The cluster is accessible only via the JDBC and ODBC connection strings.
  /// Part of the connection string requires the port on which the cluster will listen for incoming connections.
  /// Default port is <span pulumi-lang-nodejs="`5439`" pulumi-lang-dotnet="`5439`" pulumi-lang-go="`5439`" pulumi-lang-python="`5439`" pulumi-lang-yaml="`5439`" pulumi-lang-java="`5439`">`5439`</span>.
  late final Output<int?> port;

  /// The weekly time range (in UTC) during which automated cluster maintenance can occur.
  /// Format: ddd:hh24:mi-ddd:hh24:mi
  late final Output<String> preferredMaintenanceWindow;

  /// If true, the cluster can be accessed from a public network. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If true , a final cluster snapshot is not created. If false , a final cluster snapshot is created before the cluster is deleted. Default is false.
  late final Output<bool?> skipFinalSnapshot;

  /// The ARN of the snapshot from which to create the new cluster. Conflicts with <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span>.
  late final Output<String?> snapshotArn;

  /// The name of the cluster the source snapshot was created from.
  late final Output<String?> snapshotClusterIdentifier;

  /// The name of the snapshot from which to create the new cluster.  Conflicts with <span pulumi-lang-nodejs="`snapshotArn`" pulumi-lang-dotnet="`SnapshotArn`" pulumi-lang-go="`snapshotArn`" pulumi-lang-python="`snapshot_arn`" pulumi-lang-yaml="`snapshotArn`" pulumi-lang-java="`snapshotArn`">`snapshot_arn`</span>.
  late final Output<String?> snapshotIdentifier;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](http://docs.aws.amazon.com/cli/latest/reference/redshift/index.html#cli-aws-redshift).
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.
  late final Output<List<String>> vpcSecurityGroupIds;

  Cluster13(
    String name, {
    ClusterArgs13? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowVersionUpgrade = Output.createUnknown<bool?>();
    this.applyImmediately = Output.createUnknown<bool?>();
    this.aquaConfigurationStatus = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.automatedSnapshotRetentionPeriod = Output.createUnknown<int?>();
    this.availabilityZone = Output.createUnknown<String>();
    this.availabilityZoneRelocationEnabled = Output.createUnknown<bool?>();
    this.clusterIdentifier = Output.createUnknown<String>();
    this.clusterNamespaceArn = Output.createUnknown<String>();
    this.clusterNodes = Output.createUnknown<List<ClusterClusterNode>>();
    this.clusterParameterGroupName = Output.createUnknown<String>();
    this.clusterPublicKey = Output.createUnknown<String>();
    this.clusterRevisionNumber = Output.createUnknown<String>();
    this.clusterSubnetGroupName = Output.createUnknown<String>();
    this.clusterType = Output.createUnknown<String>();
    this.clusterVersion = Output.createUnknown<String?>();
    this.databaseName = Output.createUnknown<String>();
    this.defaultIamRoleArn = Output.createUnknown<String>();
    this.dnsName = Output.createUnknown<String>();
    this.elasticIp = Output.createUnknown<String?>();
    this.encrypted = Output.createUnknown<String?>();
    this.endpoint = Output.createUnknown<String>();
    this.enhancedVpcRouting = Output.createUnknown<bool>();
    this.finalSnapshotIdentifier = Output.createUnknown<String?>();
    this.iamRoles = Output.createUnknown<List<String>>();
    this.kmsKeyId = Output.createUnknown<String>();
    this.maintenanceTrackName = Output.createUnknown<String?>();
    this.manageMasterPassword = Output.createUnknown<bool?>();
    this.manualSnapshotRetentionPeriod = Output.createUnknown<int?>();
    this.masterPassword = Output.createUnknown<String?>();
    this.masterPasswordSecretArn = Output.createUnknown<String>();
    this.masterPasswordSecretKmsKeyId = Output.createUnknown<String>();
    this.masterPasswordWo = Output.createUnknown<String?>();
    this.masterPasswordWoVersion = Output.createUnknown<int?>();
    this.masterUsername = Output.createUnknown<String?>();
    this.multiAz = Output.createUnknown<bool?>();
    this.nodeType = Output.createUnknown<String>();
    this.numberOfNodes = Output.createUnknown<int?>();
    this.ownerAccount = Output.createUnknown<String?>();
    this.port = Output.createUnknown<int?>();
    this.preferredMaintenanceWindow = Output.createUnknown<String>();
    this.publiclyAccessible = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.skipFinalSnapshot = Output.createUnknown<bool?>();
    this.snapshotArn = Output.createUnknown<String?>();
    this.snapshotClusterIdentifier = Output.createUnknown<String?>();
    this.snapshotIdentifier = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcSecurityGroupIds = Output.createUnknown<List<String>>();
  }
}
