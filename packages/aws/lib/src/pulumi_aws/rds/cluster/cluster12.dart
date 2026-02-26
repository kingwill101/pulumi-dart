import 'package:pulumi/pulumi.dart';
import '../cluster_master_user_secret/cluster_master_user_secret2.dart';
import '../cluster_restore_to_point_in_time/cluster_restore_to_point_in_time2.dart';
import '../cluster_s3_import/cluster_s3_import.dart';
import '../cluster_scaling_configuration/cluster_scaling_configuration.dart';
import '../cluster_serverlessv2_scaling_configuration/cluster_serverlessv2_scaling_configuration.dart';
import 'cluster_args12.dart';

/// Manages a [RDS Aurora Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_Aurora.html) or a [RDS Multi-AZ DB Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html). To manage cluster instances that inherit configuration from the cluster (when not running the cluster in <span pulumi-lang-nodejs="`serverless`" pulumi-lang-dotnet="`Serverless`" pulumi-lang-go="`serverless`" pulumi-lang-python="`serverless`" pulumi-lang-yaml="`serverless`" pulumi-lang-java="`serverless`">`serverless`</span> engine mode), see the <span pulumi-lang-nodejs="`aws.rds.ClusterInstance`" pulumi-lang-dotnet="`aws.rds.ClusterInstance`" pulumi-lang-go="`rds.ClusterInstance`" pulumi-lang-python="`rds.ClusterInstance`" pulumi-lang-yaml="`aws.rds.ClusterInstance`" pulumi-lang-java="`aws.rds.ClusterInstance`">`aws.rds.ClusterInstance`</span> resource. To manage non-Aurora DB instances (e.g., MySQL, PostgreSQL, SQL Server, etc.), see the <span pulumi-lang-nodejs="`aws.rds.Instance`" pulumi-lang-dotnet="`aws.rds.Instance`" pulumi-lang-go="`rds.Instance`" pulumi-lang-python="`rds.Instance`" pulumi-lang-yaml="`aws.rds.Instance`" pulumi-lang-java="`aws.rds.Instance`">`aws.rds.Instance`</span> resource.
///
/// For information on the difference between the available Aurora MySQL engines see [Comparison between Aurora MySQL 1 and Aurora MySQL 2](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Updates.20180206.html) in the Amazon RDS User Guide.
///
/// Changes to an RDS Cluster can occur when you manually change a parameter, such as <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span>, and are reflected in the next maintenance window. Because of this, this provider may report a difference in its planning phase because a modification has not yet taken place. You can use the <span pulumi-lang-nodejs="`applyImmediately`" pulumi-lang-dotnet="`ApplyImmediately`" pulumi-lang-go="`applyImmediately`" pulumi-lang-python="`apply_immediately`" pulumi-lang-yaml="`applyImmediately`" pulumi-lang-java="`applyImmediately`">`apply_immediately`</span> flag to instruct the service to apply the change immediately (see documentation below).
///
/// > **Note:** Multi-AZ DB clusters are supported only for the MySQL and PostgreSQL DB engines.
///
/// > **Note:** <span pulumi-lang-nodejs="`caCertificateIdentifier`" pulumi-lang-dotnet="`CaCertificateIdentifier`" pulumi-lang-go="`caCertificateIdentifier`" pulumi-lang-python="`ca_certificate_identifier`" pulumi-lang-yaml="`caCertificateIdentifier`" pulumi-lang-java="`caCertificateIdentifier`">`ca_certificate_identifier`</span> is only supported for Multi-AZ DB clusters.
///
/// > **Note:** using <span pulumi-lang-nodejs="`applyImmediately`" pulumi-lang-dotnet="`ApplyImmediately`" pulumi-lang-go="`applyImmediately`" pulumi-lang-python="`apply_immediately`" pulumi-lang-yaml="`applyImmediately`" pulumi-lang-java="`applyImmediately`">`apply_immediately`</span> can result in a brief downtime as the server reboots. See the AWS Docs on [RDS Maintenance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html) for more information.
///
/// > **Note:** All arguments including the username and password will be stored in the raw state as plain-text.
/// > **NOTE on RDS Clusters and RDS Cluster Role Associations:** Pulumi provides both a standalone RDS Cluster Role Association - (an association between an RDS Cluster and a single IAM Role) and an RDS Cluster resource with <span pulumi-lang-nodejs="`iamRoles`" pulumi-lang-dotnet="`IamRoles`" pulumi-lang-go="`iamRoles`" pulumi-lang-python="`iam_roles`" pulumi-lang-yaml="`iamRoles`" pulumi-lang-java="`iamRoles`">`iam_roles`</span> attributes. Use one resource or the other to associate IAM Roles and RDS Clusters. Not doing so will cause a conflict of associations and will result in the association being overwritten.
///
///
/// ## Example Usage
///
/// ### Aurora MySQL 2.x (MySQL 5.7)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.Cluster("default", {
/// clusterIdentifier: "aurora-cluster-demo",
/// engine: aws.rds.EngineType.AuroraMysql,
/// engineVersion: "5.7.mysql_aurora.2.03.2",
/// availabilityZones: [
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// databaseName: "mydb",
/// masterUsername: "foo",
/// masterPassword: "must_be_eight_characters",
/// backupRetentionPeriod: 5,
/// preferredBackupWindow: "07:00-09:00",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Cluster("default",
/// cluster_identifier="aurora-cluster-demo",
/// engine=aws.rds.EngineType.AURORA_MYSQL,
/// engine_version="5.7.mysql_aurora.2.03.2",
/// availability_zones=[
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// database_name="mydb",
/// master_username="foo",
/// master_password="must_be_eight_characters",
/// backup_retention_period=5,
/// preferred_backup_window="07:00-09:00")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Rds.Cluster("default", new()
/// {
/// ClusterIdentifier = "aurora-cluster-demo",
/// Engine = Aws.Rds.EngineType.AuroraMysql,
/// EngineVersion = "5.7.mysql_aurora.2.03.2",
/// AvailabilityZones = new[]
/// {
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// },
/// DatabaseName = "mydb",
/// MasterUsername = "foo",
/// MasterPassword = "must_be_eight_characters",
/// BackupRetentionPeriod = 5,
/// PreferredBackupWindow = "07:00-09:00",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.NewCluster(ctx, "default", &rds.ClusterArgs{
/// ClusterIdentifier: pulumi.String("aurora-cluster-demo"),
/// Engine:            pulumi.String(rds.EngineTypeAuroraMysql),
/// EngineVersion:     pulumi.String("5.7.mysql_aurora.2.03.2"),
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-west-2a"),
/// pulumi.String("us-west-2b"),
/// pulumi.String("us-west-2c"),
/// },
/// DatabaseName:          pulumi.String("mydb"),
/// MasterUsername:        pulumi.String("foo"),
/// MasterPassword:        pulumi.String("must_be_eight_characters"),
/// BackupRetentionPeriod: pulumi.Int(5),
/// PreferredBackupWindow: pulumi.String("07:00-09:00"),
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
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
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
/// .clusterIdentifier("aurora-cluster-demo")
/// .engine("aurora-mysql")
/// .engineVersion("5.7.mysql_aurora.2.03.2")
/// .availabilityZones(
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c")
/// .databaseName("mydb")
/// .masterUsername("foo")
/// .masterPassword("must_be_eight_characters")
/// .backupRetentionPeriod(5)
/// .preferredBackupWindow("07:00-09:00")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:rds:Cluster
/// properties:
/// clusterIdentifier: aurora-cluster-demo
/// engine: aurora-mysql
/// engineVersion: 5.7.mysql_aurora.2.03.2
/// availabilityZones:
/// - us-west-2a
/// - us-west-2b
/// - us-west-2c
/// databaseName: mydb
/// masterUsername: foo
/// masterPassword: must_be_eight_characters
/// backupRetentionPeriod: 5
/// preferredBackupWindow: 07:00-09:00
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Aurora MySQL 1.x (MySQL 5.6)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.Cluster("default", {
/// clusterIdentifier: "aurora-cluster-demo",
/// availabilityZones: [
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// databaseName: "mydb",
/// masterUsername: "foo",
/// masterPassword: "must_be_eight_characters",
/// backupRetentionPeriod: 5,
/// preferredBackupWindow: "07:00-09:00",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Cluster("default",
/// cluster_identifier="aurora-cluster-demo",
/// availability_zones=[
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// database_name="mydb",
/// master_username="foo",
/// master_password="must_be_eight_characters",
/// backup_retention_period=5,
/// preferred_backup_window="07:00-09:00")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Rds.Cluster("default", new()
/// {
/// ClusterIdentifier = "aurora-cluster-demo",
/// AvailabilityZones = new[]
/// {
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// },
/// DatabaseName = "mydb",
/// MasterUsername = "foo",
/// MasterPassword = "must_be_eight_characters",
/// BackupRetentionPeriod = 5,
/// PreferredBackupWindow = "07:00-09:00",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.NewCluster(ctx, "default", &rds.ClusterArgs{
/// ClusterIdentifier: pulumi.String("aurora-cluster-demo"),
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-west-2a"),
/// pulumi.String("us-west-2b"),
/// pulumi.String("us-west-2c"),
/// },
/// DatabaseName:          pulumi.String("mydb"),
/// MasterUsername:        pulumi.String("foo"),
/// MasterPassword:        pulumi.String("must_be_eight_characters"),
/// BackupRetentionPeriod: pulumi.Int(5),
/// PreferredBackupWindow: pulumi.String("07:00-09:00"),
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
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
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
/// .clusterIdentifier("aurora-cluster-demo")
/// .availabilityZones(
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c")
/// .databaseName("mydb")
/// .masterUsername("foo")
/// .masterPassword("must_be_eight_characters")
/// .backupRetentionPeriod(5)
/// .preferredBackupWindow("07:00-09:00")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:rds:Cluster
/// properties:
/// clusterIdentifier: aurora-cluster-demo
/// availabilityZones:
/// - us-west-2a
/// - us-west-2b
/// - us-west-2c
/// databaseName: mydb
/// masterUsername: foo
/// masterPassword: must_be_eight_characters
/// backupRetentionPeriod: 5
/// preferredBackupWindow: 07:00-09:00
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Aurora with PostgreSQL engine
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const postgresql = new aws.rds.Cluster("postgresql", {
/// clusterIdentifier: "aurora-cluster-demo",
/// engine: aws.rds.EngineType.AuroraPostgresql,
/// availabilityZones: [
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// databaseName: "mydb",
/// masterUsername: "foo",
/// masterPassword: "must_be_eight_characters",
/// backupRetentionPeriod: 5,
/// preferredBackupWindow: "07:00-09:00",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// postgresql = aws.rds.Cluster("postgresql",
/// cluster_identifier="aurora-cluster-demo",
/// engine=aws.rds.EngineType.AURORA_POSTGRESQL,
/// availability_zones=[
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// database_name="mydb",
/// master_username="foo",
/// master_password="must_be_eight_characters",
/// backup_retention_period=5,
/// preferred_backup_window="07:00-09:00")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var postgresql = new Aws.Rds.Cluster("postgresql", new()
/// {
/// ClusterIdentifier = "aurora-cluster-demo",
/// Engine = Aws.Rds.EngineType.AuroraPostgresql,
/// AvailabilityZones = new[]
/// {
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// },
/// DatabaseName = "mydb",
/// MasterUsername = "foo",
/// MasterPassword = "must_be_eight_characters",
/// BackupRetentionPeriod = 5,
/// PreferredBackupWindow = "07:00-09:00",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.NewCluster(ctx, "postgresql", &rds.ClusterArgs{
/// ClusterIdentifier: pulumi.String("aurora-cluster-demo"),
/// Engine:            pulumi.String(rds.EngineTypeAuroraPostgresql),
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-west-2a"),
/// pulumi.String("us-west-2b"),
/// pulumi.String("us-west-2c"),
/// },
/// DatabaseName:          pulumi.String("mydb"),
/// MasterUsername:        pulumi.String("foo"),
/// MasterPassword:        pulumi.String("must_be_eight_characters"),
/// BackupRetentionPeriod: pulumi.Int(5),
/// PreferredBackupWindow: pulumi.String("07:00-09:00"),
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
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
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
/// var postgresql = new Cluster("postgresql", ClusterArgs.builder()
/// .clusterIdentifier("aurora-cluster-demo")
/// .engine("aurora-postgresql")
/// .availabilityZones(
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c")
/// .databaseName("mydb")
/// .masterUsername("foo")
/// .masterPassword("must_be_eight_characters")
/// .backupRetentionPeriod(5)
/// .preferredBackupWindow("07:00-09:00")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// postgresql:
/// type: aws:rds:Cluster
/// properties:
/// clusterIdentifier: aurora-cluster-demo
/// engine: aurora-postgresql
/// availabilityZones:
/// - us-west-2a
/// - us-west-2b
/// - us-west-2c
/// databaseName: mydb
/// masterUsername: foo
/// masterPassword: must_be_eight_characters
/// backupRetentionPeriod: 5
/// preferredBackupWindow: 07:00-09:00
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### RDS Multi-AZ Cluster
///
/// > More information about RDS Multi-AZ Clusters can be found in the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html).
///
/// To create a Multi-AZ RDS cluster, you must additionally specify the <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span>, <span pulumi-lang-nodejs="`storageType`" pulumi-lang-dotnet="`StorageType`" pulumi-lang-go="`storageType`" pulumi-lang-python="`storage_type`" pulumi-lang-yaml="`storageType`" pulumi-lang-java="`storageType`">`storage_type`</span>, <span pulumi-lang-nodejs="`allocatedStorage`" pulumi-lang-dotnet="`AllocatedStorage`" pulumi-lang-go="`allocatedStorage`" pulumi-lang-python="`allocated_storage`" pulumi-lang-yaml="`allocatedStorage`" pulumi-lang-java="`allocatedStorage`">`allocated_storage`</span>, <span pulumi-lang-nodejs="`iops`" pulumi-lang-dotnet="`Iops`" pulumi-lang-go="`iops`" pulumi-lang-python="`iops`" pulumi-lang-yaml="`iops`" pulumi-lang-java="`iops`">`iops`</span> and <span pulumi-lang-nodejs="`dbClusterInstanceClass`" pulumi-lang-dotnet="`DbClusterInstanceClass`" pulumi-lang-go="`dbClusterInstanceClass`" pulumi-lang-python="`db_cluster_instance_class`" pulumi-lang-yaml="`dbClusterInstanceClass`" pulumi-lang-java="`dbClusterInstanceClass`">`db_cluster_instance_class`</span> attributes.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Cluster("example", {
/// clusterIdentifier: "example",
/// availabilityZones: [
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// engine: aws.rds.EngineType.Mysql,
/// dbClusterInstanceClass: "db.r6gd.xlarge",
/// storageType: "io1",
/// allocatedStorage: 100,
/// iops: 1000,
/// masterUsername: "test",
/// masterPassword: "mustbeeightcharaters",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Cluster("example",
/// cluster_identifier="example",
/// availability_zones=[
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// ],
/// engine=aws.rds.EngineType.MYSQL,
/// db_cluster_instance_class="db.r6gd.xlarge",
/// storage_type="io1",
/// allocated_storage=100,
/// iops=1000,
/// master_username="test",
/// master_password="mustbeeightcharaters")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Rds.Cluster("example", new()
/// {
/// ClusterIdentifier = "example",
/// AvailabilityZones = new[]
/// {
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c",
/// },
/// Engine = Aws.Rds.EngineType.Mysql,
/// DbClusterInstanceClass = "db.r6gd.xlarge",
/// StorageType = "io1",
/// AllocatedStorage = 100,
/// Iops = 1000,
/// MasterUsername = "test",
/// MasterPassword = "mustbeeightcharaters",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.NewCluster(ctx, "example", &rds.ClusterArgs{
/// ClusterIdentifier: pulumi.String("example"),
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-west-2a"),
/// pulumi.String("us-west-2b"),
/// pulumi.String("us-west-2c"),
/// },
/// Engine:                 pulumi.String(rds.EngineTypeMysql),
/// DbClusterInstanceClass: pulumi.String("db.r6gd.xlarge"),
/// StorageType:            pulumi.String("io1"),
/// AllocatedStorage:       pulumi.Int(100),
/// Iops:                   pulumi.Int(1000),
/// MasterUsername:         pulumi.String("test"),
/// MasterPassword:         pulumi.String("mustbeeightcharaters"),
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
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
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
/// .clusterIdentifier("example")
/// .availabilityZones(
/// "us-west-2a",
/// "us-west-2b",
/// "us-west-2c")
/// .engine("mysql")
/// .dbClusterInstanceClass("db.r6gd.xlarge")
/// .storageType("io1")
/// .allocatedStorage(100)
/// .iops(1000)
/// .masterUsername("test")
/// .masterPassword("mustbeeightcharaters")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rds:Cluster
/// properties:
/// clusterIdentifier: example
/// availabilityZones:
/// - us-west-2a
/// - us-west-2b
/// - us-west-2c
/// engine: mysql
/// dbClusterInstanceClass: db.r6gd.xlarge
/// storageType: io1
/// allocatedStorage: 100
/// iops: 1000
/// masterUsername: test
/// masterPassword: mustbeeightcharaters
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### RDS Serverless v2 Cluster
///
/// > More information about RDS Serverless v2 Clusters can be found in the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html).
///
/// > **Note:** Unlike Serverless v1, in Serverless v2 the <span pulumi-lang-nodejs="`storageEncrypted`" pulumi-lang-dotnet="`StorageEncrypted`" pulumi-lang-go="`storageEncrypted`" pulumi-lang-python="`storage_encrypted`" pulumi-lang-yaml="`storageEncrypted`" pulumi-lang-java="`storageEncrypted`">`storage_encrypted`</span> value is set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> by default.
/// This is because Serverless v1 uses the <span pulumi-lang-nodejs="`serverless`" pulumi-lang-dotnet="`Serverless`" pulumi-lang-go="`serverless`" pulumi-lang-python="`serverless`" pulumi-lang-yaml="`serverless`" pulumi-lang-java="`serverless`">`serverless`</span> <span pulumi-lang-nodejs="`engineMode`" pulumi-lang-dotnet="`EngineMode`" pulumi-lang-go="`engineMode`" pulumi-lang-python="`engine_mode`" pulumi-lang-yaml="`engineMode`" pulumi-lang-java="`engineMode`">`engine_mode`</span>, but Serverless v2 uses the <span pulumi-lang-nodejs="`provisioned`" pulumi-lang-dotnet="`Provisioned`" pulumi-lang-go="`provisioned`" pulumi-lang-python="`provisioned`" pulumi-lang-yaml="`provisioned`" pulumi-lang-java="`provisioned`">`provisioned`</span> <span pulumi-lang-nodejs="`engineMode`" pulumi-lang-dotnet="`EngineMode`" pulumi-lang-go="`engineMode`" pulumi-lang-python="`engine_mode`" pulumi-lang-yaml="`engineMode`" pulumi-lang-java="`engineMode`">`engine_mode`</span>.
///
/// To create a Serverless v2 RDS cluster, you must additionally specify the <span pulumi-lang-nodejs="`engineMode`" pulumi-lang-dotnet="`EngineMode`" pulumi-lang-go="`engineMode`" pulumi-lang-python="`engine_mode`" pulumi-lang-yaml="`engineMode`" pulumi-lang-java="`engineMode`">`engine_mode`</span> and <span pulumi-lang-nodejs="`serverlessv2ScalingConfiguration`" pulumi-lang-dotnet="`Serverlessv2ScalingConfiguration`" pulumi-lang-go="`serverlessv2ScalingConfiguration`" pulumi-lang-python="`serverlessv2_scaling_configuration`" pulumi-lang-yaml="`serverlessv2ScalingConfiguration`" pulumi-lang-java="`serverlessv2ScalingConfiguration`">`serverlessv2_scaling_configuration`</span> attributes. An <span pulumi-lang-nodejs="`aws.rds.ClusterInstance`" pulumi-lang-dotnet="`aws.rds.ClusterInstance`" pulumi-lang-go="`rds.ClusterInstance`" pulumi-lang-python="`rds.ClusterInstance`" pulumi-lang-yaml="`aws.rds.ClusterInstance`" pulumi-lang-java="`aws.rds.ClusterInstance`">`aws.rds.ClusterInstance`</span> resource must also be added to the cluster with the <span pulumi-lang-nodejs="`instanceClass`" pulumi-lang-dotnet="`InstanceClass`" pulumi-lang-go="`instanceClass`" pulumi-lang-python="`instance_class`" pulumi-lang-yaml="`instanceClass`" pulumi-lang-java="`instanceClass`">`instance_class`</span> attribute specified.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Cluster("example", {
/// clusterIdentifier: "example",
/// engine: aws.rds.EngineType.AuroraPostgresql,
/// engineMode: aws.rds.EngineMode.Provisioned,
/// engineVersion: "13.6",
/// databaseName: "test",
/// masterUsername: "test",
/// masterPassword: "must_be_eight_characters",
/// storageEncrypted: true,
/// serverlessv2ScalingConfiguration: {
/// maxCapacity: 1,
/// minCapacity: 0,
/// secondsUntilAutoPause: 3600,
/// },
/// });
/// const exampleClusterInstance = new aws.rds.ClusterInstance("example", {
/// clusterIdentifier: example.id,
/// instanceClass: "db.serverless",
/// engine: example.engine.apply((x) => aws.rds.EngineType[x]),
/// engineVersion: example.engineVersion,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Cluster("example",
/// cluster_identifier="example",
/// engine=aws.rds.EngineType.AURORA_POSTGRESQL,
/// engine_mode=aws.rds.EngineMode.PROVISIONED,
/// engine_version="13.6",
/// database_name="test",
/// master_username="test",
/// master_password="must_be_eight_characters",
/// storage_encrypted=True,
/// serverlessv2_scaling_configuration={
/// "max_capacity": 1,
/// "min_capacity": 0,
/// "seconds_until_auto_pause": 3600,
/// })
/// example_cluster_instance = aws.rds.ClusterInstance("example",
/// cluster_identifier=example.id,
/// instance_class="db.serverless",
/// engine=example.engine.apply(lambda x: aws.rds.EngineType(x)),
/// engine_version=example.engine_version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Rds.Cluster("example", new()
/// {
/// ClusterIdentifier = "example",
/// Engine = Aws.Rds.EngineType.AuroraPostgresql,
/// EngineMode = Aws.Rds.EngineMode.Provisioned,
/// EngineVersion = "13.6",
/// DatabaseName = "test",
/// MasterUsername = "test",
/// MasterPassword = "must_be_eight_characters",
/// StorageEncrypted = true,
/// Serverlessv2ScalingConfiguration = new Aws.Rds.Inputs.ClusterServerlessv2ScalingConfigurationArgs
/// {
/// MaxCapacity = 1,
/// MinCapacity = 0,
/// SecondsUntilAutoPause = 3600,
/// },
/// });
///
/// var exampleClusterInstance = new Aws.Rds.ClusterInstance("example", new()
/// {
/// ClusterIdentifier = example.Id,
/// InstanceClass = "db.serverless",
/// Engine = example.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
/// EngineVersion = example.EngineVersion,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := rds.NewCluster(ctx, "example", &rds.ClusterArgs{
/// ClusterIdentifier: pulumi.String("example"),
/// Engine:            pulumi.String(rds.EngineTypeAuroraPostgresql),
/// EngineMode:        pulumi.String(rds.EngineModeProvisioned),
/// EngineVersion:     pulumi.String("13.6"),
/// DatabaseName:      pulumi.String("test"),
/// MasterUsername:    pulumi.String("test"),
/// MasterPassword:    pulumi.String("must_be_eight_characters"),
/// StorageEncrypted:  pulumi.Bool(true),
/// Serverlessv2ScalingConfiguration: &rds.ClusterServerlessv2ScalingConfigurationArgs{
/// MaxCapacity:           pulumi.Float64(1),
/// MinCapacity:           pulumi.Float64(0),
/// SecondsUntilAutoPause: pulumi.Int(3600),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = rds.NewClusterInstance(ctx, "example", &rds.ClusterInstanceArgs{
/// ClusterIdentifier: example.ID(),
/// InstanceClass:     pulumi.String("db.serverless"),
/// Engine:            example.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// EngineVersion:     example.EngineVersion,
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
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
/// import com.pulumi.aws.rds.inputs.ClusterServerlessv2ScalingConfigurationArgs;
/// import com.pulumi.aws.rds.ClusterInstance;
/// import com.pulumi.aws.rds.ClusterInstanceArgs;
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
/// .clusterIdentifier("example")
/// .engine("aurora-postgresql")
/// .engineMode("provisioned")
/// .engineVersion("13.6")
/// .databaseName("test")
/// .masterUsername("test")
/// .masterPassword("must_be_eight_characters")
/// .storageEncrypted(true)
/// .serverlessv2ScalingConfiguration(ClusterServerlessv2ScalingConfigurationArgs.builder()
/// .maxCapacity(1.0)
/// .minCapacity(0.0)
/// .secondsUntilAutoPause(3600)
/// .build())
/// .build());
///
/// var exampleClusterInstance = new ClusterInstance("exampleClusterInstance", ClusterInstanceArgs.builder()
/// .clusterIdentifier(example.id())
/// .instanceClass("db.serverless")
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rds:Cluster
/// properties:
/// clusterIdentifier: example
/// engine: aurora-postgresql
/// engineMode: provisioned
/// engineVersion: '13.6'
/// databaseName: test
/// masterUsername: test
/// masterPassword: must_be_eight_characters
/// storageEncrypted: true
/// serverlessv2ScalingConfiguration:
/// maxCapacity: 1
/// minCapacity: 0
/// secondsUntilAutoPause: 3600
/// exampleClusterInstance:
/// type: aws:rds:ClusterInstance
/// name: example
/// properties:
/// clusterIdentifier: ${example.id}
/// instanceClass: db.serverless
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### RDS/Aurora Managed Master Passwords via Secrets Manager, default KMS Key
///
/// > More information about RDS/Aurora Aurora integrates with Secrets Manager to manage master user passwords for your DB clusters can be found in the [RDS User Guide](https://aws.amazon.com/about-aws/whats-new/2022/12/amazon-rds-integration-aws-secrets-manager/) and [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html).
///
/// You can specify the <span pulumi-lang-nodejs="`manageMasterUserPassword`" pulumi-lang-dotnet="`ManageMasterUserPassword`" pulumi-lang-go="`manageMasterUserPassword`" pulumi-lang-python="`manage_master_user_password`" pulumi-lang-yaml="`manageMasterUserPassword`" pulumi-lang-java="`manageMasterUserPassword`">`manage_master_user_password`</span> attribute to enable managing the master password with Secrets Manager. You can also update an existing cluster to use Secrets Manager by specify the <span pulumi-lang-nodejs="`manageMasterUserPassword`" pulumi-lang-dotnet="`ManageMasterUserPassword`" pulumi-lang-go="`manageMasterUserPassword`" pulumi-lang-python="`manage_master_user_password`" pulumi-lang-yaml="`manageMasterUserPassword`" pulumi-lang-java="`manageMasterUserPassword`">`manage_master_user_password`</span> attribute and removing the <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span> attribute (removal is required).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.rds.Cluster("test", {
/// clusterIdentifier: "example",
/// databaseName: "test",
/// manageMasterUserPassword: true,
/// masterUsername: "test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.Cluster("test",
/// cluster_identifier="example",
/// database_name="test",
/// manage_master_user_password=True,
/// master_username="test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Rds.Cluster("test", new()
/// {
/// ClusterIdentifier = "example",
/// DatabaseName = "test",
/// ManageMasterUserPassword = true,
/// MasterUsername = "test",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.NewCluster(ctx, "test", &rds.ClusterArgs{
/// ClusterIdentifier:        pulumi.String("example"),
/// DatabaseName:             pulumi.String("test"),
/// ManageMasterUserPassword: pulumi.Bool(true),
/// MasterUsername:           pulumi.String("test"),
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
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
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
/// var test = new Cluster("test", ClusterArgs.builder()
/// .clusterIdentifier("example")
/// .databaseName("test")
/// .manageMasterUserPassword(true)
/// .masterUsername("test")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:rds:Cluster
/// properties:
/// clusterIdentifier: example
/// databaseName: test
/// manageMasterUserPassword: true
/// masterUsername: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### RDS/Aurora Managed Master Passwords via Secrets Manager, specific KMS Key
///
/// > More information about RDS/Aurora Aurora integrates with Secrets Manager to manage master user passwords for your DB clusters can be found in the [RDS User Guide](https://aws.amazon.com/about-aws/whats-new/2022/12/amazon-rds-integration-aws-secrets-manager/) and [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html).
///
/// You can specify the <span pulumi-lang-nodejs="`masterUserSecretKmsKeyId`" pulumi-lang-dotnet="`MasterUserSecretKmsKeyId`" pulumi-lang-go="`masterUserSecretKmsKeyId`" pulumi-lang-python="`master_user_secret_kms_key_id`" pulumi-lang-yaml="`masterUserSecretKmsKeyId`" pulumi-lang-java="`masterUserSecretKmsKeyId`">`master_user_secret_kms_key_id`</span> attribute to specify a specific KMS Key.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {description: "Example KMS Key"});
/// const test = new aws.rds.Cluster("test", {
/// clusterIdentifier: "example",
/// databaseName: "test",
/// manageMasterUserPassword: true,
/// masterUsername: "test",
/// masterUserSecretKmsKeyId: example.keyId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example", description="Example KMS Key")
/// test = aws.rds.Cluster("test",
/// cluster_identifier="example",
/// database_name="test",
/// manage_master_user_password=True,
/// master_username="test",
/// master_user_secret_kms_key_id=example.key_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "Example KMS Key",
/// });
///
/// var test = new Aws.Rds.Cluster("test", new()
/// {
/// ClusterIdentifier = "example",
/// DatabaseName = "test",
/// ManageMasterUserPassword = true,
/// MasterUsername = "test",
/// MasterUserSecretKmsKeyId = example.KeyId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description: pulumi.String("Example KMS Key"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = rds.NewCluster(ctx, "test", &rds.ClusterArgs{
/// ClusterIdentifier:        pulumi.String("example"),
/// DatabaseName:             pulumi.String("test"),
/// ManageMasterUserPassword: pulumi.Bool(true),
/// MasterUsername:           pulumi.String("test"),
/// MasterUserSecretKmsKeyId: example.KeyId,
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("Example KMS Key")
/// .build());
///
/// var test = new Cluster("test", ClusterArgs.builder()
/// .clusterIdentifier("example")
/// .databaseName("test")
/// .manageMasterUserPassword(true)
/// .masterUsername("test")
/// .masterUserSecretKmsKeyId(example.keyId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kms:Key
/// properties:
/// description: Example KMS Key
/// test:
/// type: aws:rds:Cluster
/// properties:
/// clusterIdentifier: example
/// databaseName: test
/// manageMasterUserPassword: true
/// masterUsername: test
/// masterUserSecretKmsKeyId: ${example.keyId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Global Cluster Restored From Snapshot
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.rds.getClusterSnapshot({
/// dbClusterIdentifier: "example-original-cluster",
/// mostRecent: true,
/// });
/// const exampleCluster = new aws.rds.Cluster("example", {
/// engine: aws.rds.EngineType.Aurora,
/// engineVersion: "5.6.mysql_aurora.1.22.4",
/// clusterIdentifier: "example",
/// snapshotIdentifier: example.then(example => example.id),
/// });
/// const exampleGlobalCluster = new aws.rds.GlobalCluster("example", {
/// globalClusterIdentifier: "example",
/// sourceDbClusterIdentifier: exampleCluster.arn,
/// forceDestroy: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_cluster_snapshot(db_cluster_identifier="example-original-cluster",
/// most_recent=True)
/// example_cluster = aws.rds.Cluster("example",
/// engine=aws.rds.EngineType.AURORA,
/// engine_version="5.6.mysql_aurora.1.22.4",
/// cluster_identifier="example",
/// snapshot_identifier=example.id)
/// example_global_cluster = aws.rds.GlobalCluster("example",
/// global_cluster_identifier="example",
/// source_db_cluster_identifier=example_cluster.arn,
/// force_destroy=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Rds.GetClusterSnapshot.Invoke(new()
/// {
/// DbClusterIdentifier = "example-original-cluster",
/// MostRecent = true,
/// });
///
/// var exampleCluster = new Aws.Rds.Cluster("example", new()
/// {
/// Engine = Aws.Rds.EngineType.Aurora,
/// EngineVersion = "5.6.mysql_aurora.1.22.4",
/// ClusterIdentifier = "example",
/// SnapshotIdentifier = example.Apply(getClusterSnapshotResult => getClusterSnapshotResult.Id),
/// });
///
/// var exampleGlobalCluster = new Aws.Rds.GlobalCluster("example", new()
/// {
/// GlobalClusterIdentifier = "example",
/// SourceDbClusterIdentifier = exampleCluster.Arn,
/// ForceDestroy = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := rds.LookupClusterSnapshot(ctx, &rds.LookupClusterSnapshotArgs{
/// DbClusterIdentifier: pulumi.StringRef("example-original-cluster"),
/// MostRecent:          pulumi.BoolRef(true),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// exampleCluster, err := rds.NewCluster(ctx, "example", &rds.ClusterArgs{
/// Engine:             pulumi.String(rds.EngineTypeAurora),
/// EngineVersion:      pulumi.String("5.6.mysql_aurora.1.22.4"),
/// ClusterIdentifier:  pulumi.String("example"),
/// SnapshotIdentifier: pulumi.String(example.Id),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = rds.NewGlobalCluster(ctx, "example", &rds.GlobalClusterArgs{
/// GlobalClusterIdentifier:   pulumi.String("example"),
/// SourceDbClusterIdentifier: exampleCluster.Arn,
/// ForceDestroy:              pulumi.Bool(true),
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
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetClusterSnapshotArgs;
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
/// import com.pulumi.aws.rds.GlobalCluster;
/// import com.pulumi.aws.rds.GlobalClusterArgs;
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
/// final var example = RdsFunctions.getClusterSnapshot(GetClusterSnapshotArgs.builder()
/// .dbClusterIdentifier("example-original-cluster")
/// .mostRecent(true)
/// .build());
///
/// var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
/// .engine("aurora")
/// .engineVersion("5.6.mysql_aurora.1.22.4")
/// .clusterIdentifier("example")
/// .snapshotIdentifier(example.id())
/// .build());
///
/// var exampleGlobalCluster = new GlobalCluster("exampleGlobalCluster", GlobalClusterArgs.builder()
/// .globalClusterIdentifier("example")
/// .sourceDbClusterIdentifier(exampleCluster.arn())
/// .forceDestroy(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleCluster:
/// type: aws:rds:Cluster
/// name: example
/// properties:
/// engine: aurora
/// engineVersion: 5.6.mysql_aurora.1.22.4
/// clusterIdentifier: example
/// snapshotIdentifier: ${example.id}
/// exampleGlobalCluster:
/// type: aws:rds:GlobalCluster
/// name: example
/// properties:
/// globalClusterIdentifier: example
/// sourceDbClusterIdentifier: ${exampleCluster.arn}
/// forceDestroy: true
/// variables:
/// example:
/// fn::invoke:
/// function: aws:rds:getClusterSnapshot
/// arguments:
/// dbClusterIdentifier: example-original-cluster
/// mostRecent: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import RDS Clusters using the <span pulumi-lang-nodejs="`clusterIdentifier`" pulumi-lang-dotnet="`ClusterIdentifier`" pulumi-lang-go="`clusterIdentifier`" pulumi-lang-python="`cluster_identifier`" pulumi-lang-yaml="`clusterIdentifier`" pulumi-lang-java="`clusterIdentifier`">`cluster_identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rds/cluster:Cluster aurora_cluster aurora-prod-cluster
/// ```
class Cluster12 extends CustomResource {
  /// The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster.
  late final Output<int> allocatedStorage;

  /// Enable to allow major engine version upgrades when changing engine versions. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> allowMajorVersionUpgrade;

  /// Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. See [Amazon RDS Documentation for more information.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
  late final Output<bool> applyImmediately;

  /// Amazon Resource Name (ARN) of cluster
  late final Output<String> arn;

  /// List of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created.
  /// RDS automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next pulumi up.
  /// We recommend specifying 3 AZs or using the <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> configuration block <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> argument if necessary.
  /// A maximum of 3 AZs can be configured.
  late final Output<List<String>> availabilityZones;

  /// Target backtrack window, in seconds. Only available for <span pulumi-lang-nodejs="`aurora`" pulumi-lang-dotnet="`Aurora`" pulumi-lang-go="`aurora`" pulumi-lang-python="`aurora`" pulumi-lang-yaml="`aurora`" pulumi-lang-java="`aurora`">`aurora`</span> and `aurora-mysql` engines currently. To disable backtracking, set this value to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. Must be between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`259200`" pulumi-lang-dotnet="`259200`" pulumi-lang-go="`259200`" pulumi-lang-python="`259200`" pulumi-lang-yaml="`259200`" pulumi-lang-java="`259200`">`259200`</span> (72 hours)
  late final Output<int?> backtrackWindow;

  /// Days to retain backups for. Default <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>
  late final Output<int> backupRetentionPeriod;

  /// The CA certificate identifier to use for the DB cluster's server certificate.
  late final Output<String> caCertificateIdentifier;

  /// Expiration date of the DB instance’s server certificate
  late final Output<String> caCertificateValidTill;

  /// The cluster identifier. If omitted, this provider will assign a random, unique identifier.
  late final Output<String> clusterIdentifier;

  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`clusterIdentifier`" pulumi-lang-dotnet="`ClusterIdentifier`" pulumi-lang-go="`clusterIdentifier`" pulumi-lang-python="`cluster_identifier`" pulumi-lang-yaml="`clusterIdentifier`" pulumi-lang-java="`clusterIdentifier`">`cluster_identifier`</span>.
  late final Output<String> clusterIdentifierPrefix;

  /// List of RDS Instances that are a part of this cluster
  late final Output<List<String>> clusterMembers;

  /// RDS Cluster Resource ID
  late final Output<String> clusterResourceId;

  /// Specifies the scalability mode of the Aurora DB cluster. When set to <span pulumi-lang-nodejs="`limitless`" pulumi-lang-dotnet="`Limitless`" pulumi-lang-go="`limitless`" pulumi-lang-python="`limitless`" pulumi-lang-yaml="`limitless`" pulumi-lang-java="`limitless`">`limitless`</span>, the cluster operates as an Aurora Limitless Database. When set to <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span> (the default), the cluster uses normal DB instance creation. Valid values: <span pulumi-lang-nodejs="`limitless`" pulumi-lang-dotnet="`Limitless`" pulumi-lang-go="`limitless`" pulumi-lang-python="`limitless`" pulumi-lang-yaml="`limitless`" pulumi-lang-java="`limitless`">`limitless`</span>, <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>.
  late final Output<String> clusterScalabilityType;

  /// Copy all Cluster <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span> to snapshots. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> copyTagsToSnapshot;

  /// The mode of Database Insights to enable for the DB cluster. Valid values: <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, <span pulumi-lang-nodejs="`advanced`" pulumi-lang-dotnet="`Advanced`" pulumi-lang-go="`advanced`" pulumi-lang-python="`advanced`" pulumi-lang-yaml="`advanced`" pulumi-lang-java="`advanced`">`advanced`</span>.
  late final Output<String> databaseInsightsMode;

  /// Name for an automatically created database on cluster creation. There are different naming restrictions per database engine: [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints)
  late final Output<String> databaseName;

  /// The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example `db.m6g.xlarge`. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes and availability for your engine, see [DB instance class](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) in the Amazon RDS User Guide.
  late final Output<String?> dbClusterInstanceClass;

  /// A cluster parameter group to associate with the cluster.
  late final Output<String> dbClusterParameterGroupName;

  /// Instance parameter group to associate with all instances of the DB cluster. The <span pulumi-lang-nodejs="`dbInstanceParameterGroupName`" pulumi-lang-dotnet="`DbInstanceParameterGroupName`" pulumi-lang-go="`dbInstanceParameterGroupName`" pulumi-lang-python="`db_instance_parameter_group_name`" pulumi-lang-yaml="`dbInstanceParameterGroupName`" pulumi-lang-java="`dbInstanceParameterGroupName`">`db_instance_parameter_group_name`</span> parameter is only valid in combination with the <span pulumi-lang-nodejs="`allowMajorVersionUpgrade`" pulumi-lang-dotnet="`AllowMajorVersionUpgrade`" pulumi-lang-go="`allowMajorVersionUpgrade`" pulumi-lang-python="`allow_major_version_upgrade`" pulumi-lang-yaml="`allowMajorVersionUpgrade`" pulumi-lang-java="`allowMajorVersionUpgrade`">`allow_major_version_upgrade`</span> parameter.
  late final Output<String?> dbInstanceParameterGroupName;

  /// DB subnet group to associate with this DB cluster.
  /// **NOTE:** This must match the <span pulumi-lang-nodejs="`dbSubnetGroupName`" pulumi-lang-dotnet="`DbSubnetGroupName`" pulumi-lang-go="`dbSubnetGroupName`" pulumi-lang-python="`db_subnet_group_name`" pulumi-lang-yaml="`dbSubnetGroupName`" pulumi-lang-java="`dbSubnetGroupName`">`db_subnet_group_name`</span> specified on every <span pulumi-lang-nodejs="`aws.rds.ClusterInstance`" pulumi-lang-dotnet="`aws.rds.ClusterInstance`" pulumi-lang-go="`rds.ClusterInstance`" pulumi-lang-python="`rds.ClusterInstance`" pulumi-lang-yaml="`aws.rds.ClusterInstance`" pulumi-lang-java="`aws.rds.ClusterInstance`">`aws.rds.ClusterInstance`</span> in the cluster.
  late final Output<String> dbSubnetGroupName;

  /// For use with RDS Custom.
  late final Output<String> dbSystemId;

  /// Specifies whether to remove automated backups immediately after the DB cluster is deleted. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> deleteAutomatedBackups;

  /// If the DB cluster should have deletion protection enabled.
  /// The database can't be deleted when this value is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  /// The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> deletionProtection;

  /// The ID of the Directory Service Active Directory domain to create the cluster in.
  late final Output<String?> domain;

  /// The name of the IAM role to be used when making API calls to the Directory Service.
  late final Output<String?> domainIamRoleName;

  /// Whether cluster should forward writes to an associated global cluster. Applied to secondary clusters to enable them to forward writes to an <span pulumi-lang-nodejs="`aws.rds.GlobalCluster`" pulumi-lang-dotnet="`aws.rds.GlobalCluster`" pulumi-lang-go="`rds.GlobalCluster`" pulumi-lang-python="`rds.GlobalCluster`" pulumi-lang-yaml="`aws.rds.GlobalCluster`" pulumi-lang-java="`aws.rds.GlobalCluster`">`aws.rds.GlobalCluster`</span>'s primary cluster. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-write-forwarding.html) for more information.
  late final Output<bool?> enableGlobalWriteForwarding;

  /// Enable HTTP endpoint (data API). Only valid for some combinations of <span pulumi-lang-nodejs="`engineMode`" pulumi-lang-dotnet="`EngineMode`" pulumi-lang-go="`engineMode`" pulumi-lang-python="`engine_mode`" pulumi-lang-yaml="`engineMode`" pulumi-lang-java="`engineMode`">`engine_mode`</span>, <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span> and <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> and only available in some regions. See the [Region and version availability](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html#data-api.regions) section of the documentation. This option also does not work with any of these options specified: <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span>, <span pulumi-lang-nodejs="`replicationSourceIdentifier`" pulumi-lang-dotnet="`ReplicationSourceIdentifier`" pulumi-lang-go="`replicationSourceIdentifier`" pulumi-lang-python="`replication_source_identifier`" pulumi-lang-yaml="`replicationSourceIdentifier`" pulumi-lang-java="`replicationSourceIdentifier`">`replication_source_identifier`</span>, <span pulumi-lang-nodejs="`s3Import`" pulumi-lang-dotnet="`S3Import`" pulumi-lang-go="`s3Import`" pulumi-lang-python="`s3_import`" pulumi-lang-yaml="`s3Import`" pulumi-lang-java="`s3Import`">`s3_import`</span>.
  late final Output<bool?> enableHttpEndpoint;

  /// Whether read replicas can forward write operations to the writer DB instance in the DB cluster. By default, write operations aren't allowed on reader DB instances. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-write-forwarding.html) for more information. **NOTE:** Local write forwarding requires Aurora MySQL version 3.04 or higher.
  late final Output<bool?> enableLocalWriteForwarding;

  /// Set of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: <span pulumi-lang-nodejs="`audit`" pulumi-lang-dotnet="`Audit`" pulumi-lang-go="`audit`" pulumi-lang-python="`audit`" pulumi-lang-yaml="`audit`" pulumi-lang-java="`audit`">`audit`</span>, <span pulumi-lang-nodejs="`error`" pulumi-lang-dotnet="`Error`" pulumi-lang-go="`error`" pulumi-lang-python="`error`" pulumi-lang-yaml="`error`" pulumi-lang-java="`error`">`error`</span>, <span pulumi-lang-nodejs="`general`" pulumi-lang-dotnet="`General`" pulumi-lang-go="`general`" pulumi-lang-python="`general`" pulumi-lang-yaml="`general`" pulumi-lang-java="`general`">`general`</span>, `iam-db-auth-error`, <span pulumi-lang-nodejs="`instance`" pulumi-lang-dotnet="`Instance`" pulumi-lang-go="`instance`" pulumi-lang-python="`instance`" pulumi-lang-yaml="`instance`" pulumi-lang-java="`instance`">`instance`</span>, <span pulumi-lang-nodejs="`postgresql`" pulumi-lang-dotnet="`Postgresql`" pulumi-lang-go="`postgresql`" pulumi-lang-python="`postgresql`" pulumi-lang-yaml="`postgresql`" pulumi-lang-java="`postgresql`">`postgresql`</span> (PostgreSQL), <span pulumi-lang-nodejs="`slowquery`" pulumi-lang-dotnet="`Slowquery`" pulumi-lang-go="`slowquery`" pulumi-lang-python="`slowquery`" pulumi-lang-yaml="`slowquery`" pulumi-lang-java="`slowquery`">`slowquery`</span>.
  late final Output<List<String>?> enabledCloudwatchLogsExports;

  /// DNS address of the RDS instance
  late final Output<String> endpoint;

  /// Name of the database engine to be used for this DB cluster. Valid Values: `aurora-mysql`, `aurora-postgresql`, <span pulumi-lang-nodejs="`mysql`" pulumi-lang-dotnet="`Mysql`" pulumi-lang-go="`mysql`" pulumi-lang-python="`mysql`" pulumi-lang-yaml="`mysql`" pulumi-lang-java="`mysql`">`mysql`</span>, <span pulumi-lang-nodejs="`postgres`" pulumi-lang-dotnet="`Postgres`" pulumi-lang-go="`postgres`" pulumi-lang-python="`postgres`" pulumi-lang-yaml="`postgres`" pulumi-lang-java="`postgres`">`postgres`</span>. (Note that <span pulumi-lang-nodejs="`mysql`" pulumi-lang-dotnet="`Mysql`" pulumi-lang-go="`mysql`" pulumi-lang-python="`mysql`" pulumi-lang-yaml="`mysql`" pulumi-lang-java="`mysql`">`mysql`</span> and <span pulumi-lang-nodejs="`postgres`" pulumi-lang-dotnet="`Postgres`" pulumi-lang-go="`postgres`" pulumi-lang-python="`postgres`" pulumi-lang-yaml="`postgres`" pulumi-lang-java="`postgres`">`postgres`</span> are Multi-AZ RDS clusters).
  late final Output<String> engine;

  /// The life cycle type for this DB instance. This setting is valid for cluster types Aurora DB clusters and Multi-AZ DB clusters. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  late final Output<String> engineLifecycleSupport;

  /// Database engine mode. Valid values: <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span> (only valid for Aurora MySQL 1.21 and earlier), <span pulumi-lang-nodejs="`parallelquery`" pulumi-lang-dotnet="`Parallelquery`" pulumi-lang-go="`parallelquery`" pulumi-lang-python="`parallelquery`" pulumi-lang-yaml="`parallelquery`" pulumi-lang-java="`parallelquery`">`parallelquery`</span>, <span pulumi-lang-nodejs="`provisioned`" pulumi-lang-dotnet="`Provisioned`" pulumi-lang-go="`provisioned`" pulumi-lang-python="`provisioned`" pulumi-lang-yaml="`provisioned`" pulumi-lang-java="`provisioned`">`provisioned`</span>, <span pulumi-lang-nodejs="`serverless`" pulumi-lang-dotnet="`Serverless`" pulumi-lang-go="`serverless`" pulumi-lang-python="`serverless`" pulumi-lang-yaml="`serverless`" pulumi-lang-java="`serverless`">`serverless`</span>. Defaults to: <span pulumi-lang-nodejs="`provisioned`" pulumi-lang-dotnet="`Provisioned`" pulumi-lang-go="`provisioned`" pulumi-lang-python="`provisioned`" pulumi-lang-yaml="`provisioned`" pulumi-lang-java="`provisioned`">`provisioned`</span>. Specify an empty value (`""`) for no engine mode. See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html) for limitations when using <span pulumi-lang-nodejs="`serverless`" pulumi-lang-dotnet="`Serverless`" pulumi-lang-go="`serverless`" pulumi-lang-python="`serverless`" pulumi-lang-yaml="`serverless`" pulumi-lang-java="`serverless`">`serverless`</span>.
  late final Output<String?> engineMode;

  /// Database engine version. Updating this argument results in an outage. See the [Aurora MySQL](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html) and [Aurora Postgres](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.html) documentation for your configured engine to determine this value, or by running `aws rds describe-db-engine-versions`. For example with Aurora MySQL 2, a potential value for this argument is `5.7.mysql_aurora.2.03.2`. The value can contain a partial version where supported by the API. The actual engine version used is returned in the attribute <span pulumi-lang-nodejs="`engineVersionActual`" pulumi-lang-dotnet="`EngineVersionActual`" pulumi-lang-go="`engineVersionActual`" pulumi-lang-python="`engine_version_actual`" pulumi-lang-yaml="`engineVersionActual`" pulumi-lang-java="`engineVersionActual`">`engine_version_actual`</span>, see Attribute Reference below.
  late final Output<String> engineVersion;

  /// Running version of the database.
  late final Output<String> engineVersionActual;

  /// Name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made.
  late final Output<String?> finalSnapshotIdentifier;

  /// Global cluster identifier specified on <span pulumi-lang-nodejs="`aws.rds.GlobalCluster`" pulumi-lang-dotnet="`aws.rds.GlobalCluster`" pulumi-lang-go="`rds.GlobalCluster`" pulumi-lang-python="`rds.GlobalCluster`" pulumi-lang-yaml="`aws.rds.GlobalCluster`" pulumi-lang-java="`aws.rds.GlobalCluster`">`aws.rds.GlobalCluster`</span>.
  late final Output<String?> globalClusterIdentifier;

  /// Route53 Hosted Zone ID of the endpoint
  late final Output<String> hostedZoneId;

  /// Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html) for availability and limitations.
  late final Output<bool?> iamDatabaseAuthenticationEnabled;

  /// List of ARNs for the IAM roles to associate to the RDS Cluster.
  late final Output<List<String>> iamRoles;

  /// Amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster. For information about valid Iops values, see [Amazon RDS Provisioned IOPS storage to improve performance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS) in the Amazon RDS User Guide. (This setting is required to create a Multi-AZ DB cluster). Must be a multiple between .5 and 50 of the storage amount for the DB cluster.
  late final Output<int?> iops;

  /// ARN for the KMS encryption key. When specifying <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span>, <span pulumi-lang-nodejs="`storageEncrypted`" pulumi-lang-dotnet="`StorageEncrypted`" pulumi-lang-go="`storageEncrypted`" pulumi-lang-python="`storage_encrypted`" pulumi-lang-yaml="`storageEncrypted`" pulumi-lang-java="`storageEncrypted`">`storage_encrypted`</span> needs to be set to true.
  late final Output<String> kmsKeyId;

  /// Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if <span pulumi-lang-nodejs="`masterPassword`" pulumi-lang-dotnet="`MasterPassword`" pulumi-lang-go="`masterPassword`" pulumi-lang-python="`master_password`" pulumi-lang-yaml="`masterPassword`" pulumi-lang-java="`masterPassword`">`master_password`</span> is provided.
  late final Output<bool?> manageMasterUserPassword;

  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if <span pulumi-lang-nodejs="`manageMasterUserPassword`" pulumi-lang-dotnet="`ManageMasterUserPassword`" pulumi-lang-go="`manageMasterUserPassword`" pulumi-lang-python="`manage_master_user_password`" pulumi-lang-yaml="`manageMasterUserPassword`" pulumi-lang-java="`manageMasterUserPassword`">`manage_master_user_password`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<String?> masterPassword;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may show up in logs. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if <span pulumi-lang-nodejs="`manageMasterUserPassword`" pulumi-lang-dotnet="`ManageMasterUserPassword`" pulumi-lang-go="`manageMasterUserPassword`" pulumi-lang-python="`manage_master_user_password`" pulumi-lang-yaml="`manageMasterUserPassword`" pulumi-lang-java="`manageMasterUserPassword`">`manage_master_user_password`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<String?> masterPasswordWo;

  /// Used together with <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> to trigger an update. Increment this value when an update to the <span pulumi-lang-nodejs="`masterPasswordWo`" pulumi-lang-dotnet="`MasterPasswordWo`" pulumi-lang-go="`masterPasswordWo`" pulumi-lang-python="`master_password_wo`" pulumi-lang-yaml="`masterPasswordWo`" pulumi-lang-java="`masterPasswordWo`">`master_password_wo`</span> is required.
  late final Output<int?> masterPasswordWoVersion;

  /// Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN. If not specified, the default KMS key for your Amazon Web Services account is used.
  late final Output<String> masterUserSecretKmsKeyId;

  /// Block that specifies the master user secret. Only available when <span pulumi-lang-nodejs="`manageMasterUserPassword`" pulumi-lang-dotnet="`ManageMasterUserPassword`" pulumi-lang-go="`manageMasterUserPassword`" pulumi-lang-python="`manage_master_user_password`" pulumi-lang-yaml="`manageMasterUserPassword`" pulumi-lang-java="`manageMasterUserPassword`">`manage_master_user_password`</span> is set to true. Documented below.
  late final Output<List<ClusterMasterUserSecret2>> masterUserSecrets;

  /// Username for the master DB user. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). This argument does not support in-place updates and cannot be changed during a restore from snapshot.
  late final Output<String> masterUsername;

  /// Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB cluster. To turn off collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60.
  late final Output<int> monitoringInterval;

  /// ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole.html) what IAM permissions are needed to allow Enhanced Monitoring for RDS Clusters.
  late final Output<String> monitoringRoleArn;

  /// Network type of the cluster. Valid values: `IPV4`, `DUAL`.
  late final Output<String> networkType;

  /// Enables Performance Insights.
  late final Output<bool?> performanceInsightsEnabled;

  /// Specifies the KMS Key ID to encrypt Performance Insights data. If not specified, the default RDS KMS key will be used (`aws/rds`).
  late final Output<String> performanceInsightsKmsKeyId;

  /// Specifies the amount of time to retain performance insights data for. Defaults to 7 days if Performance Insights are enabled. Valid values are <span pulumi-lang-nodejs="`7`" pulumi-lang-dotnet="`7`" pulumi-lang-go="`7`" pulumi-lang-python="`7`" pulumi-lang-yaml="`7`" pulumi-lang-java="`7`">`7`</span>, `month * 31` (where month is a number of months from 1-23), and <span pulumi-lang-nodejs="`731`" pulumi-lang-dotnet="`731`" pulumi-lang-go="`731`" pulumi-lang-python="`731`" pulumi-lang-yaml="`731`" pulumi-lang-java="`731`">`731`</span>. See [here](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.Overview.cost.html) for more information on retention periods.
  late final Output<int> performanceInsightsRetentionPeriod;

  /// Port on which the DB accepts connections.
  late final Output<int> port;

  /// Daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per region, e.g. `04:00-09:00`.
  late final Output<String> preferredBackupWindow;

  /// Weekly time range during which system maintenance can occur, in (UTC) e.g., `wed:04:00-wed:04:30`
  late final Output<String> preferredMaintenanceWindow;

  /// Read-only endpoint for the Aurora cluster, automatically
  /// load-balanced across replicas
  late final Output<String> readerEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of a source DB cluster or DB instance if this DB cluster is to be created as a Read Replica. **Note:** Removing this attribute after creation will promote the read replica to a standalone cluster. If DB Cluster is part of a Global Cluster, use the `ignoreChanges` resource option to prevent Pulumi from showing differences for this argument instead of configuring this value.
  late final Output<String?> replicationSourceIdentifier;

  /// Nested attribute for [point in time restore](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-pitr.html). More details below.
  late final Output<ClusterRestoreToPointInTime2?> restoreToPointInTime;
  late final Output<ClusterS3Import?> s3Import;

  /// Nested attribute with scaling properties. Only valid when <span pulumi-lang-nodejs="`engineMode`" pulumi-lang-dotnet="`EngineMode`" pulumi-lang-go="`engineMode`" pulumi-lang-python="`engine_mode`" pulumi-lang-yaml="`engineMode`" pulumi-lang-java="`engineMode`">`engine_mode`</span> is set to <span pulumi-lang-nodejs="`serverless`" pulumi-lang-dotnet="`Serverless`" pulumi-lang-go="`serverless`" pulumi-lang-python="`serverless`" pulumi-lang-yaml="`serverless`" pulumi-lang-java="`serverless`">`serverless`</span>. More details below.
  late final Output<ClusterScalingConfiguration?> scalingConfiguration;

  /// Nested attribute with scaling properties for ServerlessV2. Only valid when <span pulumi-lang-nodejs="`engineMode`" pulumi-lang-dotnet="`EngineMode`" pulumi-lang-go="`engineMode`" pulumi-lang-python="`engine_mode`" pulumi-lang-yaml="`engineMode`" pulumi-lang-java="`engineMode`">`engine_mode`</span> is set to <span pulumi-lang-nodejs="`provisioned`" pulumi-lang-dotnet="`Provisioned`" pulumi-lang-go="`provisioned`" pulumi-lang-python="`provisioned`" pulumi-lang-yaml="`provisioned`" pulumi-lang-java="`provisioned`">`provisioned`</span>. More details below.
  late final Output<ClusterServerlessv2ScalingConfiguration?>
      serverlessv2ScalingConfiguration;

  /// Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from <span pulumi-lang-nodejs="`finalSnapshotIdentifier`" pulumi-lang-dotnet="`FinalSnapshotIdentifier`" pulumi-lang-go="`finalSnapshotIdentifier`" pulumi-lang-python="`final_snapshot_identifier`" pulumi-lang-yaml="`finalSnapshotIdentifier`" pulumi-lang-java="`finalSnapshotIdentifier`">`final_snapshot_identifier`</span>. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> skipFinalSnapshot;

  /// Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Conflicts with <span pulumi-lang-nodejs="`globalClusterIdentifier`" pulumi-lang-dotnet="`GlobalClusterIdentifier`" pulumi-lang-go="`globalClusterIdentifier`" pulumi-lang-python="`global_cluster_identifier`" pulumi-lang-yaml="`globalClusterIdentifier`" pulumi-lang-java="`globalClusterIdentifier`">`global_cluster_identifier`</span>. Clusters cannot be restored from snapshot **and** joined to an existing global cluster in a single operation. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-getting-started.html#aurora-global-database.use-snapshot) or the Global Cluster Restored From Snapshot example for instructions on building a global cluster starting with a snapshot.
  late final Output<String?> snapshotIdentifier;

  /// The source region for an encrypted replica DB cluster.
  late final Output<String?> sourceRegion;

  /// Specifies whether the DB cluster is encrypted. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> for <span pulumi-lang-nodejs="`provisioned`" pulumi-lang-dotnet="`Provisioned`" pulumi-lang-go="`provisioned`" pulumi-lang-python="`provisioned`" pulumi-lang-yaml="`provisioned`" pulumi-lang-java="`provisioned`">`provisioned`</span> <span pulumi-lang-nodejs="`engineMode`" pulumi-lang-dotnet="`EngineMode`" pulumi-lang-go="`engineMode`" pulumi-lang-python="`engine_mode`" pulumi-lang-yaml="`engineMode`" pulumi-lang-java="`engineMode`">`engine_mode`</span> and <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> for <span pulumi-lang-nodejs="`serverless`" pulumi-lang-dotnet="`Serverless`" pulumi-lang-go="`serverless`" pulumi-lang-python="`serverless`" pulumi-lang-yaml="`serverless`" pulumi-lang-java="`serverless`">`serverless`</span> <span pulumi-lang-nodejs="`engineMode`" pulumi-lang-dotnet="`EngineMode`" pulumi-lang-go="`engineMode`" pulumi-lang-python="`engine_mode`" pulumi-lang-yaml="`engineMode`" pulumi-lang-java="`engineMode`">`engine_mode`</span>. When restoring an unencrypted <span pulumi-lang-nodejs="`snapshotIdentifier`" pulumi-lang-dotnet="`SnapshotIdentifier`" pulumi-lang-go="`snapshotIdentifier`" pulumi-lang-python="`snapshot_identifier`" pulumi-lang-yaml="`snapshotIdentifier`" pulumi-lang-java="`snapshotIdentifier`">`snapshot_identifier`</span>, the <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span> argument must be provided to encrypt the restored cluster. The provider will only perform drift detection if a configuration value is provided.
  late final Output<bool> storageEncrypted;

  /// (Forces new for Multi-AZ DB clusters) Specifies the storage type to be associated with the DB cluster. For Aurora DB clusters, <span pulumi-lang-nodejs="`storageType`" pulumi-lang-dotnet="`StorageType`" pulumi-lang-go="`storageType`" pulumi-lang-python="`storage_type`" pulumi-lang-yaml="`storageType`" pulumi-lang-java="`storageType`">`storage_type`</span> modifications can be done in-place. For Multi-AZ DB Clusters, the <span pulumi-lang-nodejs="`iops`" pulumi-lang-dotnet="`Iops`" pulumi-lang-go="`iops`" pulumi-lang-python="`iops`" pulumi-lang-yaml="`iops`" pulumi-lang-java="`iops`">`iops`</span> argument must also be set. Valid values are: `""`, `aurora-iopt1` (Aurora DB Clusters); <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span>, <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span> (Multi-AZ DB Clusters). Default: `""` (Aurora DB Clusters); <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span> (Multi-AZ DB Clusters).
  late final Output<String> storageType;

  /// A map of tags to assign to the DB cluster. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Order in which the clusters are upgraded (<span pulumi-lang-nodejs="`first`" pulumi-lang-dotnet="`First`" pulumi-lang-go="`first`" pulumi-lang-python="`first`" pulumi-lang-yaml="`first`" pulumi-lang-java="`first`">`first`</span>, <span pulumi-lang-nodejs="`second`" pulumi-lang-dotnet="`Second`" pulumi-lang-go="`second`" pulumi-lang-python="`second`" pulumi-lang-yaml="`second`" pulumi-lang-java="`second`">`second`</span>, <span pulumi-lang-nodejs="`last`" pulumi-lang-dotnet="`Last`" pulumi-lang-go="`last`" pulumi-lang-python="`last`" pulumi-lang-yaml="`last`" pulumi-lang-java="`last`">`last`</span>). See [the AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Maintenance.AMVU.UpgradeRollout.html) for details.
  late final Output<String> upgradeRolloutOrder;

  /// List of VPC security groups to associate with the Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the AWS official documentation:
  ///
  /// * [create-db-cluster](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-cluster.html)
  /// * [modify-db-cluster](https://docs.aws.amazon.com/cli/latest/reference/rds/modify-db-cluster.html)
  late final Output<List<String>> vpcSecurityGroupIds;

  Cluster12(
    String name, {
    ClusterArgs12? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocatedStorage = Output.createUnknown<int>();
    this.allowMajorVersionUpgrade = Output.createUnknown<bool?>();
    this.applyImmediately = Output.createUnknown<bool>();
    this.arn = Output.createUnknown<String>();
    this.availabilityZones = Output.createUnknown<List<String>>();
    this.backtrackWindow = Output.createUnknown<int?>();
    this.backupRetentionPeriod = Output.createUnknown<int>();
    this.caCertificateIdentifier = Output.createUnknown<String>();
    this.caCertificateValidTill = Output.createUnknown<String>();
    this.clusterIdentifier = Output.createUnknown<String>();
    this.clusterIdentifierPrefix = Output.createUnknown<String>();
    this.clusterMembers = Output.createUnknown<List<String>>();
    this.clusterResourceId = Output.createUnknown<String>();
    this.clusterScalabilityType = Output.createUnknown<String>();
    this.copyTagsToSnapshot = Output.createUnknown<bool?>();
    this.databaseInsightsMode = Output.createUnknown<String>();
    this.databaseName = Output.createUnknown<String>();
    this.dbClusterInstanceClass = Output.createUnknown<String?>();
    this.dbClusterParameterGroupName = Output.createUnknown<String>();
    this.dbInstanceParameterGroupName = Output.createUnknown<String?>();
    this.dbSubnetGroupName = Output.createUnknown<String>();
    this.dbSystemId = Output.createUnknown<String>();
    this.deleteAutomatedBackups = Output.createUnknown<bool?>();
    this.deletionProtection = Output.createUnknown<bool?>();
    this.domain = Output.createUnknown<String?>();
    this.domainIamRoleName = Output.createUnknown<String?>();
    this.enableGlobalWriteForwarding = Output.createUnknown<bool?>();
    this.enableHttpEndpoint = Output.createUnknown<bool?>();
    this.enableLocalWriteForwarding = Output.createUnknown<bool?>();
    this.enabledCloudwatchLogsExports = Output.createUnknown<List<String>?>();
    this.endpoint = Output.createUnknown<String>();
    this.engine = Output.createUnknown<String>();
    this.engineLifecycleSupport = Output.createUnknown<String>();
    this.engineMode = Output.createUnknown<String?>();
    this.engineVersion = Output.createUnknown<String>();
    this.engineVersionActual = Output.createUnknown<String>();
    this.finalSnapshotIdentifier = Output.createUnknown<String?>();
    this.globalClusterIdentifier = Output.createUnknown<String?>();
    this.hostedZoneId = Output.createUnknown<String>();
    this.iamDatabaseAuthenticationEnabled = Output.createUnknown<bool?>();
    this.iamRoles = Output.createUnknown<List<String>>();
    this.iops = Output.createUnknown<int?>();
    this.kmsKeyId = Output.createUnknown<String>();
    this.manageMasterUserPassword = Output.createUnknown<bool?>();
    this.masterPassword = Output.createUnknown<String?>();
    this.masterPasswordWo = Output.createUnknown<String?>();
    this.masterPasswordWoVersion = Output.createUnknown<int?>();
    this.masterUserSecretKmsKeyId = Output.createUnknown<String>();
    this.masterUserSecrets =
        Output.createUnknown<List<ClusterMasterUserSecret2>>();
    this.masterUsername = Output.createUnknown<String>();
    this.monitoringInterval = Output.createUnknown<int>();
    this.monitoringRoleArn = Output.createUnknown<String>();
    this.networkType = Output.createUnknown<String>();
    this.performanceInsightsEnabled = Output.createUnknown<bool?>();
    this.performanceInsightsKmsKeyId = Output.createUnknown<String>();
    this.performanceInsightsRetentionPeriod = Output.createUnknown<int>();
    this.port = Output.createUnknown<int>();
    this.preferredBackupWindow = Output.createUnknown<String>();
    this.preferredMaintenanceWindow = Output.createUnknown<String>();
    this.readerEndpoint = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.replicationSourceIdentifier = Output.createUnknown<String?>();
    this.restoreToPointInTime =
        Output.createUnknown<ClusterRestoreToPointInTime2?>();
    this.s3Import = Output.createUnknown<ClusterS3Import?>();
    this.scalingConfiguration =
        Output.createUnknown<ClusterScalingConfiguration?>();
    this.serverlessv2ScalingConfiguration =
        Output.createUnknown<ClusterServerlessv2ScalingConfiguration?>();
    this.skipFinalSnapshot = Output.createUnknown<bool?>();
    this.snapshotIdentifier = Output.createUnknown<String?>();
    this.sourceRegion = Output.createUnknown<String?>();
    this.storageEncrypted = Output.createUnknown<bool>();
    this.storageType = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.upgradeRolloutOrder = Output.createUnknown<String>();
    this.vpcSecurityGroupIds = Output.createUnknown<List<String>>();
  }
}
