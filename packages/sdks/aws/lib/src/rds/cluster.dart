import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_restore_to_point_in_time.dart';
import 'cluster_s3_import.dart';
import 'cluster_scaling_configuration.dart';
import 'cluster_serverlessv2_scaling_configuration.dart';
import 'cluster_state.dart';

/// Manages a [RDS Aurora Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_Aurora.html) or a [RDS Multi-AZ DB Cluster](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html). To manage cluster instances that inherit configuration from the cluster (when not running the cluster in `serverless` engine mode), see the `aws.rds.ClusterInstance` resource. To manage non-Aurora DB instances (e.g., MySQL, PostgreSQL, SQL Server, etc.), see the `aws.rds.Instance` resource.
///
/// For information on the difference between the available Aurora MySQL engines see [Comparison between Aurora MySQL 1 and Aurora MySQL 2](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Updates.20180206.html) in the Amazon RDS User Guide.
///
/// Changes to an RDS Cluster can occur when you manually change a parameter, such as `port`, and are reflected in the next maintenance window. Because of this, this provider may report a difference in its planning phase because a modification has not yet taken place. You can use the `applyImmediately` flag to instruct the service to apply the change immediately (see documentation below).
///
/// &gt; **Note:** Multi-AZ DB clusters are supported only for the MySQL and PostgreSQL DB engines.
///
/// &gt; **Note:** `caCertificateIdentifier` is only supported for Multi-AZ DB clusters.
///
/// &gt; **Note:** using `applyImmediately` can result in a brief downtime as the server reboots. See the AWS Docs on [RDS Maintenance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html) for more information.
///
/// &gt; **Note:** All arguments including the username and password will be stored in the raw state as plain-text.
/// &gt; **NOTE on RDS Clusters and RDS Cluster Role Associations:** Pulumi provides both a standalone RDS Cluster Role Association - (an association between an RDS Cluster and a single IAM Role) and an RDS Cluster resource with `iamRoles` attributes. Use one resource or the other to associate IAM Roles and RDS Clusters. Not doing so will cause a conflict of associations and will result in the association being overwritten.
///
///
/// ## Example Usage
///
/// ### Aurora MySQL 2.x (MySQL 5.7)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.Cluster("default", {
///     clusterIdentifier: "aurora-cluster-demo",
///     engine: aws.rds.EngineType.AuroraMysql,
///     engineVersion: "5.7.mysql_aurora.2.03.2",
///     availabilityZones: [
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     databaseName: "mydb",
///     masterUsername: "foo",
///     masterPassword: "must_be_eight_characters",
///     backupRetentionPeriod: 5,
///     preferredBackupWindow: "07:00-09:00",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Cluster("default",
///     cluster_identifier="aurora-cluster-demo",
///     engine=aws.rds.EngineType.AURORA_MYSQL,
///     engine_version="5.7.mysql_aurora.2.03.2",
///     availability_zones=[
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     database_name="mydb",
///     master_username="foo",
///     master_password="must_be_eight_characters",
///     backup_retention_period=5,
///     preferred_backup_window="07:00-09:00")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Rds.Cluster("default", new()
///     {
///         ClusterIdentifier = "aurora-cluster-demo",
///         Engine = Aws.Rds.EngineType.AuroraMysql,
///         EngineVersion = "5.7.mysql_aurora.2.03.2",
///         AvailabilityZones = new[]
///         {
///             "us-west-2a",
///             "us-west-2b",
///             "us-west-2c",
///         },
///         DatabaseName = "mydb",
///         MasterUsername = "foo",
///         MasterPassword = "must_be_eight_characters",
///         BackupRetentionPeriod = 5,
///         PreferredBackupWindow = "07:00-09:00",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewCluster(ctx, "default", &rds.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("aurora-cluster-demo"),
/// 			Engine:            pulumi.String(rds.EngineTypeAuroraMysql),
/// 			EngineVersion:     pulumi.String("5.7.mysql_aurora.2.03.2"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-west-2a"),
/// 				pulumi.String("us-west-2b"),
/// 				pulumi.String("us-west-2c"),
/// 			},
/// 			DatabaseName:          pulumi.String("mydb"),
/// 			MasterUsername:        pulumi.String("foo"),
/// 			MasterPassword:        pulumi.String("must_be_eight_characters"),
/// 			BackupRetentionPeriod: pulumi.Int(5),
/// 			PreferredBackupWindow: pulumi.String("07:00-09:00"),
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
/// resource "aws_rds_cluster" "default" {
///   cluster_identifier      = "aurora-cluster-demo"
///   engine                  = "aurora-mysql"
///   engine_version          = "5.7.mysql_aurora.2.03.2"
///   availability_zones      = ["us-west-2a", "us-west-2b", "us-west-2c"]
///   database_name           = "mydb"
///   master_username         = "foo"
///   master_password         = "must_be_eight_characters"
///   backup_retention_period = 5
///   preferred_backup_window = "07:00-09:00"
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
///             .clusterIdentifier("aurora-cluster-demo")
///             .engine("aurora-mysql")
///             .engineVersion("5.7.mysql_aurora.2.03.2")
///             .availabilityZones(
///                 "us-west-2a",
///                 "us-west-2b",
///                 "us-west-2c")
///             .databaseName("mydb")
///             .masterUsername("foo")
///             .masterPassword("must_be_eight_characters")
///             .backupRetentionPeriod(5)
///             .preferredBackupWindow("07:00-09:00")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:Cluster
///     properties:
///       clusterIdentifier: aurora-cluster-demo
///       engine: aurora-mysql
///       engineVersion: 5.7.mysql_aurora.2.03.2
///       availabilityZones:
///         - us-west-2a
///         - us-west-2b
///         - us-west-2c
///       databaseName: mydb
///       masterUsername: foo
///       masterPassword: must_be_eight_characters
///       backupRetentionPeriod: 5
///       preferredBackupWindow: 07:00-09:00
/// ```
///
///
/// ### Aurora MySQL 1.x (MySQL 5.6)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.Cluster("default", {
///     clusterIdentifier: "aurora-cluster-demo",
///     availabilityZones: [
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     databaseName: "mydb",
///     masterUsername: "foo",
///     masterPassword: "must_be_eight_characters",
///     backupRetentionPeriod: 5,
///     preferredBackupWindow: "07:00-09:00",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Cluster("default",
///     cluster_identifier="aurora-cluster-demo",
///     availability_zones=[
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     database_name="mydb",
///     master_username="foo",
///     master_password="must_be_eight_characters",
///     backup_retention_period=5,
///     preferred_backup_window="07:00-09:00")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Rds.Cluster("default", new()
///     {
///         ClusterIdentifier = "aurora-cluster-demo",
///         AvailabilityZones = new[]
///         {
///             "us-west-2a",
///             "us-west-2b",
///             "us-west-2c",
///         },
///         DatabaseName = "mydb",
///         MasterUsername = "foo",
///         MasterPassword = "must_be_eight_characters",
///         BackupRetentionPeriod = 5,
///         PreferredBackupWindow = "07:00-09:00",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewCluster(ctx, "default", &rds.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("aurora-cluster-demo"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-west-2a"),
/// 				pulumi.String("us-west-2b"),
/// 				pulumi.String("us-west-2c"),
/// 			},
/// 			DatabaseName:          pulumi.String("mydb"),
/// 			MasterUsername:        pulumi.String("foo"),
/// 			MasterPassword:        pulumi.String("must_be_eight_characters"),
/// 			BackupRetentionPeriod: pulumi.Int(5),
/// 			PreferredBackupWindow: pulumi.String("07:00-09:00"),
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
/// resource "aws_rds_cluster" "default" {
///   cluster_identifier      = "aurora-cluster-demo"
///   availability_zones      = ["us-west-2a", "us-west-2b", "us-west-2c"]
///   database_name           = "mydb"
///   master_username         = "foo"
///   master_password         = "must_be_eight_characters"
///   backup_retention_period = 5
///   preferred_backup_window = "07:00-09:00"
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
///             .clusterIdentifier("aurora-cluster-demo")
///             .availabilityZones(
///                 "us-west-2a",
///                 "us-west-2b",
///                 "us-west-2c")
///             .databaseName("mydb")
///             .masterUsername("foo")
///             .masterPassword("must_be_eight_characters")
///             .backupRetentionPeriod(5)
///             .preferredBackupWindow("07:00-09:00")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:Cluster
///     properties:
///       clusterIdentifier: aurora-cluster-demo
///       availabilityZones:
///         - us-west-2a
///         - us-west-2b
///         - us-west-2c
///       databaseName: mydb
///       masterUsername: foo
///       masterPassword: must_be_eight_characters
///       backupRetentionPeriod: 5
///       preferredBackupWindow: 07:00-09:00
/// ```
///
///
/// ### Aurora with PostgreSQL engine
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const postgresql = new aws.rds.Cluster("postgresql", {
///     clusterIdentifier: "aurora-cluster-demo",
///     engine: aws.rds.EngineType.AuroraPostgresql,
///     availabilityZones: [
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     databaseName: "mydb",
///     masterUsername: "foo",
///     masterPassword: "must_be_eight_characters",
///     backupRetentionPeriod: 5,
///     preferredBackupWindow: "07:00-09:00",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// postgresql = aws.rds.Cluster("postgresql",
///     cluster_identifier="aurora-cluster-demo",
///     engine=aws.rds.EngineType.AURORA_POSTGRESQL,
///     availability_zones=[
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     database_name="mydb",
///     master_username="foo",
///     master_password="must_be_eight_characters",
///     backup_retention_period=5,
///     preferred_backup_window="07:00-09:00")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var postgresql = new Aws.Rds.Cluster("postgresql", new()
///     {
///         ClusterIdentifier = "aurora-cluster-demo",
///         Engine = Aws.Rds.EngineType.AuroraPostgresql,
///         AvailabilityZones = new[]
///         {
///             "us-west-2a",
///             "us-west-2b",
///             "us-west-2c",
///         },
///         DatabaseName = "mydb",
///         MasterUsername = "foo",
///         MasterPassword = "must_be_eight_characters",
///         BackupRetentionPeriod = 5,
///         PreferredBackupWindow = "07:00-09:00",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewCluster(ctx, "postgresql", &rds.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("aurora-cluster-demo"),
/// 			Engine:            pulumi.String(rds.EngineTypeAuroraPostgresql),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-west-2a"),
/// 				pulumi.String("us-west-2b"),
/// 				pulumi.String("us-west-2c"),
/// 			},
/// 			DatabaseName:          pulumi.String("mydb"),
/// 			MasterUsername:        pulumi.String("foo"),
/// 			MasterPassword:        pulumi.String("must_be_eight_characters"),
/// 			BackupRetentionPeriod: pulumi.Int(5),
/// 			PreferredBackupWindow: pulumi.String("07:00-09:00"),
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
/// resource "aws_rds_cluster" "postgresql" {
///   cluster_identifier      = "aurora-cluster-demo"
///   engine                  = "aurora-postgresql"
///   availability_zones      = ["us-west-2a", "us-west-2b", "us-west-2c"]
///   database_name           = "mydb"
///   master_username         = "foo"
///   master_password         = "must_be_eight_characters"
///   backup_retention_period = 5
///   preferred_backup_window = "07:00-09:00"
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
///         var postgresql = new Cluster("postgresql", ClusterArgs.builder()
///             .clusterIdentifier("aurora-cluster-demo")
///             .engine("aurora-postgresql")
///             .availabilityZones(
///                 "us-west-2a",
///                 "us-west-2b",
///                 "us-west-2c")
///             .databaseName("mydb")
///             .masterUsername("foo")
///             .masterPassword("must_be_eight_characters")
///             .backupRetentionPeriod(5)
///             .preferredBackupWindow("07:00-09:00")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   postgresql:
///     type: aws:rds:Cluster
///     properties:
///       clusterIdentifier: aurora-cluster-demo
///       engine: aurora-postgresql
///       availabilityZones:
///         - us-west-2a
///         - us-west-2b
///         - us-west-2c
///       databaseName: mydb
///       masterUsername: foo
///       masterPassword: must_be_eight_characters
///       backupRetentionPeriod: 5
///       preferredBackupWindow: 07:00-09:00
/// ```
///
///
/// ### RDS Multi-AZ Cluster
///
/// &gt; More information about RDS Multi-AZ Clusters can be found in the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html).
///
/// To create a Multi-AZ RDS cluster, you must additionally specify the `engine`, `storageType`, `allocatedStorage`, `iops` and `dbClusterInstanceClass` attributes.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Cluster("example", {
///     clusterIdentifier: "example",
///     availabilityZones: [
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     engine: aws.rds.EngineType.Mysql,
///     dbClusterInstanceClass: "db.r6gd.xlarge",
///     storageType: "io1",
///     allocatedStorage: 100,
///     iops: 1000,
///     masterUsername: "test",
///     masterPassword: "mustbeeightcharaters",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Cluster("example",
///     cluster_identifier="example",
///     availability_zones=[
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     engine=aws.rds.EngineType.MYSQL,
///     db_cluster_instance_class="db.r6gd.xlarge",
///     storage_type="io1",
///     allocated_storage=100,
///     iops=1000,
///     master_username="test",
///     master_password="mustbeeightcharaters")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.Cluster("example", new()
///     {
///         ClusterIdentifier = "example",
///         AvailabilityZones = new[]
///         {
///             "us-west-2a",
///             "us-west-2b",
///             "us-west-2c",
///         },
///         Engine = Aws.Rds.EngineType.Mysql,
///         DbClusterInstanceClass = "db.r6gd.xlarge",
///         StorageType = "io1",
///         AllocatedStorage = 100,
///         Iops = 1000,
///         MasterUsername = "test",
///         MasterPassword = "mustbeeightcharaters",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewCluster(ctx, "example", &rds.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("example"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-west-2a"),
/// 				pulumi.String("us-west-2b"),
/// 				pulumi.String("us-west-2c"),
/// 			},
/// 			Engine:                 pulumi.String(rds.EngineTypeMysql),
/// 			DbClusterInstanceClass: pulumi.String("db.r6gd.xlarge"),
/// 			StorageType:            pulumi.String("io1"),
/// 			AllocatedStorage:       pulumi.Int(100),
/// 			Iops:                   pulumi.Int(1000),
/// 			MasterUsername:         pulumi.String("test"),
/// 			MasterPassword:         pulumi.String("mustbeeightcharaters"),
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
/// resource "aws_rds_cluster" "example" {
///   cluster_identifier        = "example"
///   availability_zones        = ["us-west-2a", "us-west-2b", "us-west-2c"]
///   engine                    = "mysql"
///   db_cluster_instance_class = "db.r6gd.xlarge"
///   storage_type              = "io1"
///   allocated_storage         = 100
///   iops                      = 1000
///   master_username           = "test"
///   master_password           = "mustbeeightcharaters"
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterIdentifier("example")
///             .availabilityZones(
///                 "us-west-2a",
///                 "us-west-2b",
///                 "us-west-2c")
///             .engine("mysql")
///             .dbClusterInstanceClass("db.r6gd.xlarge")
///             .storageType("io1")
///             .allocatedStorage(100)
///             .iops(1000)
///             .masterUsername("test")
///             .masterPassword("mustbeeightcharaters")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:Cluster
///     properties:
///       clusterIdentifier: example
///       availabilityZones:
///         - us-west-2a
///         - us-west-2b
///         - us-west-2c
///       engine: mysql
///       dbClusterInstanceClass: db.r6gd.xlarge
///       storageType: io1
///       allocatedStorage: 100
///       iops: 1000
///       masterUsername: test
///       masterPassword: mustbeeightcharaters
/// ```
///
///
/// ### RDS Serverless v2 Cluster
///
/// &gt; More information about RDS Serverless v2 Clusters can be found in the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html).
///
/// &gt; **Note:** Unlike Serverless v1, in Serverless v2 the `storageEncrypted` value is set to `false` by default.
/// This is because Serverless v1 uses the `serverless` `engineMode`, but Serverless v2 uses the `provisioned` `engineMode`.
///
/// To create a Serverless v2 RDS cluster, you must additionally specify the `engineMode` and `serverlessv2ScalingConfiguration` attributes. An `aws.rds.ClusterInstance` resource must also be added to the cluster with the `instanceClass` attribute specified.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Cluster("example", {
///     clusterIdentifier: "example",
///     engine: aws.rds.EngineType.AuroraPostgresql,
///     engineMode: aws.rds.EngineMode.Provisioned,
///     engineVersion: "13.6",
///     databaseName: "test",
///     masterUsername: "test",
///     masterPassword: "must_be_eight_characters",
///     storageEncrypted: true,
///     serverlessv2ScalingConfiguration: {
///         maxCapacity: 1,
///         minCapacity: 0,
///         secondsUntilAutoPause: 3600,
///     },
/// });
/// const exampleClusterInstance = new aws.rds.ClusterInstance("example", {
///     clusterIdentifier: example.id,
///     instanceClass: "db.serverless",
///     engine: example.engine.apply((x) => aws.rds.EngineType[x]),
///     engineVersion: example.engineVersion,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Cluster("example",
///     cluster_identifier="example",
///     engine=aws.rds.EngineType.AURORA_POSTGRESQL,
///     engine_mode=aws.rds.EngineMode.PROVISIONED,
///     engine_version="13.6",
///     database_name="test",
///     master_username="test",
///     master_password="must_be_eight_characters",
///     storage_encrypted=True,
///     serverlessv2_scaling_configuration={
///         "max_capacity": float(1),
///         "min_capacity": float(0),
///         "seconds_until_auto_pause": 3600,
///     })
/// example_cluster_instance = aws.rds.ClusterInstance("example",
///     cluster_identifier=example.id,
///     instance_class="db.serverless",
///     engine=example.engine.apply(lambda x: aws.rds.EngineType(x)),
///     engine_version=example.engine_version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.Cluster("example", new()
///     {
///         ClusterIdentifier = "example",
///         Engine = Aws.Rds.EngineType.AuroraPostgresql,
///         EngineMode = Aws.Rds.EngineMode.Provisioned,
///         EngineVersion = "13.6",
///         DatabaseName = "test",
///         MasterUsername = "test",
///         MasterPassword = "must_be_eight_characters",
///         StorageEncrypted = true,
///         Serverlessv2ScalingConfiguration = new Aws.Rds.Inputs.ClusterServerlessv2ScalingConfigurationArgs
///         {
///             MaxCapacity = 1,
///             MinCapacity = 0,
///             SecondsUntilAutoPause = 3600,
///         },
///     });
///
///     var exampleClusterInstance = new Aws.Rds.ClusterInstance("example", new()
///     {
///         ClusterIdentifier = example.Id,
///         InstanceClass = "db.serverless",
///         Engine = example.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
///         EngineVersion = example.EngineVersion,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := rds.NewCluster(ctx, "example", &rds.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("example"),
/// 			Engine:            pulumi.String(rds.EngineTypeAuroraPostgresql),
/// 			EngineMode:        pulumi.String(rds.EngineModeProvisioned),
/// 			EngineVersion:     pulumi.String("13.6"),
/// 			DatabaseName:      pulumi.String("test"),
/// 			MasterUsername:    pulumi.String("test"),
/// 			MasterPassword:    pulumi.String("must_be_eight_characters"),
/// 			StorageEncrypted:  pulumi.Bool(true),
/// 			Serverlessv2ScalingConfiguration: &rds.ClusterServerlessv2ScalingConfigurationArgs{
/// 				MaxCapacity:           pulumi.Float64(1),
/// 				MinCapacity:           pulumi.Float64(0),
/// 				SecondsUntilAutoPause: pulumi.Int(3600),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewClusterInstance(ctx, "example", &rds.ClusterInstanceArgs{
/// 			ClusterIdentifier: example.ID().ToIDOutput().ToStringOutput(),
/// 			InstanceClass:     pulumi.String("db.serverless"),
/// 			Engine:            example.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// 			EngineVersion:     example.EngineVersion,
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
/// resource "aws_rds_cluster" "example" {
///   cluster_identifier = "example"
///   engine             = "aurora-postgresql"
///   engine_mode        = "provisioned"
///   engine_version     = "13.6"
///   database_name      = "test"
///   master_username    = "test"
///   master_password    = "must_be_eight_characters"
///   storage_encrypted  = true
///   serverlessv2_scaling_configuration = {
///     max_capacity             = 1
///     min_capacity             = 0
///     seconds_until_auto_pause = 3600
///   }
/// }
/// resource "aws_rds_clusterinstance" "example" {
///   cluster_identifier = aws_rds_cluster.example.id
///   instance_class     = "db.serverless"
///   engine             = aws_rds_cluster.example.engine
///   engine_version     = aws_rds_cluster.example.engine_version
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .clusterIdentifier("example")
///             .engine("aurora-postgresql")
///             .engineMode("provisioned")
///             .engineVersion("13.6")
///             .databaseName("test")
///             .masterUsername("test")
///             .masterPassword("must_be_eight_characters")
///             .storageEncrypted(true)
///             .serverlessv2ScalingConfiguration(ClusterServerlessv2ScalingConfigurationArgs.builder()
///                 .maxCapacity(1.0)
///                 .minCapacity(0.0)
///                 .secondsUntilAutoPause(3600)
///                 .build())
///             .build());
///
///         var exampleClusterInstance = new ClusterInstance("exampleClusterInstance", ClusterInstanceArgs.builder()
///             .clusterIdentifier(example.id())
///             .instanceClass("db.serverless")
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:Cluster
///     properties:
///       clusterIdentifier: example
///       engine: aurora-postgresql
///       engineMode: provisioned
///       engineVersion: '13.6'
///       databaseName: test
///       masterUsername: test
///       masterPassword: must_be_eight_characters
///       storageEncrypted: true
///       serverlessv2ScalingConfiguration:
///         maxCapacity: 1
///         minCapacity: 0
///         secondsUntilAutoPause: 3600
///   exampleClusterInstance:
///     type: aws:rds:ClusterInstance
///     name: example
///     properties:
///       clusterIdentifier: ${example.id}
///       instanceClass: db.serverless
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
/// ```
///
///
/// ### RDS/Aurora Managed Master Passwords via Secrets Manager, default KMS Key
///
/// &gt; More information about RDS/Aurora Aurora integrates with Secrets Manager to manage master user passwords for your DB clusters can be found in the [RDS User Guide](https://aws.amazon.com/about-aws/whats-new/2022/12/amazon-rds-integration-aws-secrets-manager/) and [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html).
///
/// You can specify the `manageMasterUserPassword` attribute to enable managing the master password with Secrets Manager. You can also update an existing cluster to use Secrets Manager by specify the `manageMasterUserPassword` attribute and removing the `masterPassword` attribute (removal is required).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.rds.Cluster("test", {
///     clusterIdentifier: "example",
///     databaseName: "test",
///     manageMasterUserPassword: true,
///     masterUsername: "test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.Cluster("test",
///     cluster_identifier="example",
///     database_name="test",
///     manage_master_user_password=True,
///     master_username="test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Rds.Cluster("test", new()
///     {
///         ClusterIdentifier = "example",
///         DatabaseName = "test",
///         ManageMasterUserPassword = true,
///         MasterUsername = "test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewCluster(ctx, "test", &rds.ClusterArgs{
/// 			ClusterIdentifier:        pulumi.String("example"),
/// 			DatabaseName:             pulumi.String("test"),
/// 			ManageMasterUserPassword: pulumi.Bool(true),
/// 			MasterUsername:           pulumi.String("test"),
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
/// resource "aws_rds_cluster" "test" {
///   cluster_identifier          = "example"
///   database_name               = "test"
///   manage_master_user_password = true
///   master_username             = "test"
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
///         var test = new Cluster("test", ClusterArgs.builder()
///             .clusterIdentifier("example")
///             .databaseName("test")
///             .manageMasterUserPassword(true)
///             .masterUsername("test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:rds:Cluster
///     properties:
///       clusterIdentifier: example
///       databaseName: test
///       manageMasterUserPassword: true
///       masterUsername: test
/// ```
///
///
/// ### RDS/Aurora Managed Master Passwords via Secrets Manager, specific KMS Key
///
/// &gt; More information about RDS/Aurora Aurora integrates with Secrets Manager to manage master user passwords for your DB clusters can be found in the [RDS User Guide](https://aws.amazon.com/about-aws/whats-new/2022/12/amazon-rds-integration-aws-secrets-manager/) and [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html).
///
/// You can specify the `masterUserSecretKmsKeyId` attribute to specify a specific KMS Key.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {description: "Example KMS Key"});
/// const test = new aws.rds.Cluster("test", {
///     clusterIdentifier: "example",
///     databaseName: "test",
///     manageMasterUserPassword: true,
///     masterUsername: "test",
///     masterUserSecretKmsKeyId: example.keyId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example", description="Example KMS Key")
/// test = aws.rds.Cluster("test",
///     cluster_identifier="example",
///     database_name="test",
///     manage_master_user_password=True,
///     master_username="test",
///     master_user_secret_kms_key_id=example.key_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "Example KMS Key",
///     });
///
///     var test = new Aws.Rds.Cluster("test", new()
///     {
///         ClusterIdentifier = "example",
///         DatabaseName = "test",
///         ManageMasterUserPassword = true,
///         MasterUsername = "test",
///         MasterUserSecretKmsKeyId = example.KeyId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description: pulumi.String("Example KMS Key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewCluster(ctx, "test", &rds.ClusterArgs{
/// 			ClusterIdentifier:        pulumi.String("example"),
/// 			DatabaseName:             pulumi.String("test"),
/// 			ManageMasterUserPassword: pulumi.Bool(true),
/// 			MasterUsername:           pulumi.String("test"),
/// 			MasterUserSecretKmsKeyId: example.KeyId,
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
/// resource "aws_kms_key" "example" {
///   description = "Example KMS Key"
/// }
/// resource "aws_rds_cluster" "test" {
///   cluster_identifier            = "example"
///   database_name                 = "test"
///   manage_master_user_password   = true
///   master_username               = "test"
///   master_user_secret_kms_key_id = aws_kms_key.example.key_id
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("Example KMS Key")
///             .build());
///
///         var test = new Cluster("test", ClusterArgs.builder()
///             .clusterIdentifier("example")
///             .databaseName("test")
///             .manageMasterUserPassword(true)
///             .masterUsername("test")
///             .masterUserSecretKmsKeyId(example.keyId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: Example KMS Key
///   test:
///     type: aws:rds:Cluster
///     properties:
///       clusterIdentifier: example
///       databaseName: test
///       manageMasterUserPassword: true
///       masterUsername: test
///       masterUserSecretKmsKeyId: ${example.keyId}
/// ```
///
///
/// ### Global Cluster Restored From Snapshot
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.rds.getClusterSnapshot({
///     dbClusterIdentifier: "example-original-cluster",
///     mostRecent: true,
/// });
/// const exampleCluster = new aws.rds.Cluster("example", {
///     engine: aws.rds.EngineType.Aurora,
///     engineVersion: "5.6.mysql_aurora.1.22.4",
///     clusterIdentifier: "example",
///     snapshotIdentifier: example.then(example => example.id),
/// });
/// const exampleGlobalCluster = new aws.rds.GlobalCluster("example", {
///     globalClusterIdentifier: "example",
///     sourceDbClusterIdentifier: exampleCluster.arn,
///     forceDestroy: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_cluster_snapshot(db_cluster_identifier="example-original-cluster",
///     most_recent=True)
/// example_cluster = aws.rds.Cluster("example",
///     engine=aws.rds.EngineType.AURORA,
///     engine_version="5.6.mysql_aurora.1.22.4",
///     cluster_identifier="example",
///     snapshot_identifier=example.id)
/// example_global_cluster = aws.rds.GlobalCluster("example",
///     global_cluster_identifier="example",
///     source_db_cluster_identifier=example_cluster.arn,
///     force_destroy=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Rds.GetClusterSnapshot.Invoke(new()
///     {
///         DbClusterIdentifier = "example-original-cluster",
///         MostRecent = true,
///     });
///
///     var exampleCluster = new Aws.Rds.Cluster("example", new()
///     {
///         Engine = Aws.Rds.EngineType.Aurora,
///         EngineVersion = "5.6.mysql_aurora.1.22.4",
///         ClusterIdentifier = "example",
///         SnapshotIdentifier = example.Apply(getClusterSnapshotResult => getClusterSnapshotResult.Id),
///     });
///
///     var exampleGlobalCluster = new Aws.Rds.GlobalCluster("example", new()
///     {
///         GlobalClusterIdentifier = "example",
///         SourceDbClusterIdentifier = exampleCluster.Arn,
///         ForceDestroy = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := rds.LookupClusterSnapshot(ctx, &rds.LookupClusterSnapshotArgs{
/// 			DbClusterIdentifier: pulumi.StringRef("example-original-cluster"),
/// 			MostRecent:          pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCluster, err := rds.NewCluster(ctx, "example", &rds.ClusterArgs{
/// 			Engine:             pulumi.String(rds.EngineTypeAurora),
/// 			EngineVersion:      pulumi.String("5.6.mysql_aurora.1.22.4"),
/// 			ClusterIdentifier:  pulumi.String("example"),
/// 			SnapshotIdentifier: pulumi.String(example.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewGlobalCluster(ctx, "example", &rds.GlobalClusterArgs{
/// 			GlobalClusterIdentifier:   pulumi.String("example"),
/// 			SourceDbClusterIdentifier: exampleCluster.Arn,
/// 			ForceDestroy:              pulumi.Bool(true),
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
/// data "aws_rds_getclustersnapshot" "example" {
///   db_cluster_identifier = "example-original-cluster"
///   most_recent           = true
/// }
///
/// resource "aws_rds_cluster" "example" {
///   engine              = "aurora"
///   engine_version      = "5.6.mysql_aurora.1.22.4"
///   cluster_identifier  = "example"
///   snapshot_identifier = data.aws_rds_getclustersnapshot.example.id
/// }
/// resource "aws_rds_globalcluster" "example" {
///   global_cluster_identifier    = "example"
///   source_db_cluster_identifier = aws_rds_cluster.example.arn
///   force_destroy                = true
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
///         final var example = RdsFunctions.getClusterSnapshot(GetClusterSnapshotArgs.builder()
///             .dbClusterIdentifier("example-original-cluster")
///             .mostRecent(true)
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .engine("aurora")
///             .engineVersion("5.6.mysql_aurora.1.22.4")
///             .clusterIdentifier("example")
///             .snapshotIdentifier(example.id())
///             .build());
///
///         var exampleGlobalCluster = new GlobalCluster("exampleGlobalCluster", GlobalClusterArgs.builder()
///             .globalClusterIdentifier("example")
///             .sourceDbClusterIdentifier(exampleCluster.arn())
///             .forceDestroy(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCluster:
///     type: aws:rds:Cluster
///     name: example
///     properties:
///       engine: aurora
///       engineVersion: 5.6.mysql_aurora.1.22.4
///       clusterIdentifier: example
///       snapshotIdentifier: ${example.id}
///   exampleGlobalCluster:
///     type: aws:rds:GlobalCluster
///     name: example
///     properties:
///       globalClusterIdentifier: example
///       sourceDbClusterIdentifier: ${exampleCluster.arn}
///       forceDestroy: true
/// variables:
///   example:
///     fn::invoke:
///       function: aws:rds:getClusterSnapshot
///       arguments:
///         dbClusterIdentifier: example-original-cluster
///         mostRecent: true
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `clusterIdentifier` (String) Cluster identifier of the RDS Cluster.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import RDS Clusters using the `clusterIdentifier`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/cluster:Cluster aurora_cluster aurora-prod-cluster
/// ```
class Cluster extends pulumi.CustomResource {
  /// The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster.
  late final pulumi.Output<int> allocatedStorage;
  /// Enable to allow major engine version upgrades when changing engine versions. Defaults to `false`.
  late final pulumi.Output<bool?> allowMajorVersionUpgrade;
  /// Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`. See [Amazon RDS Documentation for more information.](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html)
  late final pulumi.Output<bool> applyImmediately;
  /// Amazon Resource Name (ARN) of cluster
  late final pulumi.Output<String> arn;
  /// Whether to apply minor engine upgrades automatically to the DB cluster during the maintenance window. Defaults to `true`.
  late final pulumi.Output<bool> autoMinorVersionUpgrade;
  /// List of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created.
  /// RDS automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next pulumi up.
  /// We recommend specifying 3 AZs or using the `lifecycle` configuration block `ignoreChanges` argument if necessary.
  /// A maximum of 3 AZs can be configured.
  /// **Note:** [Multi-AZ DB clusters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html) require exactly 3 Availability Zones in the DB subnet group. Aurora DB clusters can operate with fewer AZs, but RDS will still automatically assign 3 AZs as described above.
  late final pulumi.Output<List<String>> availabilityZones;
  /// Target backtrack window, in seconds. Only available for `aurora` and `aurora-mysql` engines currently. To disable backtracking, set this value to `0`. Defaults to `0`. Must be between `0` and `259200` (72 hours)
  late final pulumi.Output<int?> backtrackWindow;
  /// Days to retain backups for. Default `1`
  late final pulumi.Output<int> backupRetentionPeriod;
  /// The CA certificate identifier to use for the DB cluster's server certificate.
  late final pulumi.Output<String> caCertificateIdentifier;
  /// Expiration date of the DB instance’s server certificate
  late final pulumi.Output<String> caCertificateValidTill;
  /// The cluster identifier. If omitted, this provider will assign a random, unique identifier.
  late final pulumi.Output<String> clusterIdentifier;
  /// Creates a unique cluster identifier beginning with the specified prefix. Conflicts with `clusterIdentifier`.
  late final pulumi.Output<String> clusterIdentifierPrefix;
  /// List of RDS Instances that are a part of this cluster
  late final pulumi.Output<List<String>> clusterMembers;
  /// RDS Cluster Resource ID
  late final pulumi.Output<String> clusterResourceId;
  /// Specifies the scalability mode of the Aurora DB cluster. When set to `limitless`, the cluster operates as an Aurora Limitless Database. When set to `standard` (the default), the cluster uses normal DB instance creation. Valid values: `limitless`, `standard`.
  late final pulumi.Output<String> clusterScalabilityType;
  /// Copy all Cluster `tags` to snapshots. Default is `false`.
  late final pulumi.Output<bool?> copyTagsToSnapshot;
  /// The mode of Database Insights to enable for the DB cluster. Valid values: `standard`, `advanced`.
  late final pulumi.Output<String> databaseInsightsMode;
  /// Name for an automatically created database on cluster creation. There are different naming restrictions per database engine: [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints)
  late final pulumi.Output<String> databaseName;
  /// The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example `db.m6g.xlarge`. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes and availability for your engine, see [DB instance class](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) in the Amazon RDS User Guide.
  late final pulumi.Output<String?> dbClusterInstanceClass;
  /// A cluster parameter group to associate with the cluster.
  late final pulumi.Output<String> dbClusterParameterGroupName;
  /// Instance parameter group to associate with all instances of the DB cluster. The `dbInstanceParameterGroupName` parameter is only valid in combination with the `allowMajorVersionUpgrade` parameter.
  late final pulumi.Output<String?> dbInstanceParameterGroupName;
  /// DB subnet group to associate with this DB cluster.
  /// **NOTE:** This must match the `dbSubnetGroupName` specified on every `aws.rds.ClusterInstance` in the cluster.
  late final pulumi.Output<String> dbSubnetGroupName;
  /// For use with RDS Custom.
  late final pulumi.Output<String> dbSystemId;
  /// Specifies whether to remove automated backups immediately after the DB cluster is deleted. Default is `true`.
  late final pulumi.Output<bool?> deleteAutomatedBackups;
  /// If the DB cluster should have deletion protection enabled.
  /// The database can't be deleted when this value is set to `true`.
  /// The default is `false`.
  late final pulumi.Output<bool?> deletionProtection;
  /// The ID of the Directory Service Active Directory domain to create the cluster in.
  late final pulumi.Output<String?> domain;
  /// The name of the IAM role to be used when making API calls to the Directory Service.
  late final pulumi.Output<String?> domainIamRoleName;
  /// Whether cluster should forward writes to an associated global cluster. Applied to secondary clusters to enable them to forward writes to an `aws.rds.GlobalCluster`'s primary cluster. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-write-forwarding.html) for more information.
  late final pulumi.Output<bool?> enableGlobalWriteForwarding;
  /// Enable HTTP endpoint (data API). Only valid for some combinations of `engineMode`, `engine` and `engineVersion` and only available in some regions. See the [Region and version availability](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html#data-api.regions) section of the documentation. This option also does not work with any of these options specified: `snapshotIdentifier`, `replicationSourceIdentifier`, `s3Import`.
  late final pulumi.Output<bool?> enableHttpEndpoint;
  /// Whether read replicas can forward write operations to the writer DB instance in the DB cluster. By default, write operations aren't allowed on reader DB instances. See the [User Guide for Aurora](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-write-forwarding.html) for more information. **NOTE:** Local write forwarding requires Aurora MySQL version 3.04 or higher.
  late final pulumi.Output<bool?> enableLocalWriteForwarding;
  /// Set of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: `audit`, `error`, `general`, `iam-db-auth-error`, `instance`, `postgresql` (PostgreSQL), `slowquery`.
  late final pulumi.Output<List<String>?> enabledCloudwatchLogsExports;
  /// DNS address of the RDS instance
  late final pulumi.Output<String> endpoint;
  /// Name of the database engine to be used for this DB cluster. Valid Values: `aurora-mysql`, `aurora-postgresql`, `mysql`, `postgres`. (Note that `mysql` and `postgres` are Multi-AZ RDS clusters).
  late final pulumi.Output<String> engine;
  /// The life cycle type for this DB instance. This setting is valid for cluster types Aurora DB clusters and Multi-AZ DB clusters. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  late final pulumi.Output<String> engineLifecycleSupport;
  /// Database engine mode. Valid values: `global` (only valid for Aurora MySQL 1.21 and earlier), `parallelquery`, `provisioned`, `serverless`. Defaults to: `provisioned`. Specify an empty value (`""`) for no engine mode. See the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html) for limitations when using `serverless`.
  late final pulumi.Output<String?> engineMode;
  /// Database engine version. Updating this argument results in an outage. See the [Aurora MySQL](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html) and [Aurora Postgres](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.html) documentation for your configured engine to determine this value, or by running `aws rds describe-db-engine-versions`. For example with Aurora MySQL 2, a potential value for this argument is `5.7.mysql_aurora.2.03.2`. The value can contain a partial version where supported by the API. The actual engine version used is returned in the attribute `engineVersionActual`, see Attribute Reference below.
  late final pulumi.Output<String> engineVersion;
  /// Running version of the database.
  late final pulumi.Output<String> engineVersionActual;
  /// Name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made.
  late final pulumi.Output<String?> finalSnapshotIdentifier;
  /// Global cluster identifier specified on `aws.rds.GlobalCluster`.
  late final pulumi.Output<String?> globalClusterIdentifier;
  /// Route53 Hosted Zone ID of the endpoint
  late final pulumi.Output<String> hostedZoneId;
  /// Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html) for availability and limitations.
  late final pulumi.Output<bool?> iamDatabaseAuthenticationEnabled;
  /// List of ARNs for the IAM roles to associate to the RDS Cluster.
  late final pulumi.Output<List<String>> iamRoles;
  /// Amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster. For information about valid Iops values, see [Amazon RDS Provisioned IOPS storage to improve performance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS) in the Amazon RDS User Guide. (This setting is required to create a Multi-AZ DB cluster). Must be a multiple between .5 and 50 of the storage amount for the DB cluster.
  late final pulumi.Output<int?> iops;
  /// ARN for the KMS encryption key. When specifying `kmsKeyId`, `storageEncrypted` needs to be set to true.
  late final pulumi.Output<String> kmsKeyId;
  /// Set to true to allow RDS to manage the master user password in Secrets Manager. Cannot be set if `masterPassword` is provided.
  late final pulumi.Output<bool?> manageMasterUserPassword;
  /// Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if `manageMasterUserPassword` is set to `true`.
  late final pulumi.Output<String?> masterPassword;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Password for the master DB user. Note that this may show up in logs. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). Cannot be set if `manageMasterUserPassword` is set to `true`.
  late final pulumi.Output<String?> masterPasswordWo;
  /// Used together with `masterPasswordWo` to trigger an update. Increment this value when an update to the `masterPasswordWo` is required.
  late final pulumi.Output<int?> masterPasswordWoVersion;
  /// Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN. If not specified, the default KMS key for your Amazon Web Services account is used.
  late final pulumi.Output<String> masterUserSecretKmsKeyId;
  /// Block that specifies the master user secret. Only available when `manageMasterUserPassword` is set to true. Documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> masterUserSecrets;
  /// Username for the master DB user. Please refer to the [RDS Naming Constraints](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html#RDS_Limits.Constraints). This argument does not support in-place updates and cannot be changed during a restore from snapshot.
  late final pulumi.Output<String> masterUsername;
  /// Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB cluster. To turn off collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60.
  late final pulumi.Output<int> monitoringInterval;
  /// ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole.html) what IAM permissions are needed to allow Enhanced Monitoring for RDS Clusters.
  late final pulumi.Output<String> monitoringRoleArn;
  /// Network type of the cluster. Valid values: `IPV4`, `DUAL`.
  late final pulumi.Output<String> networkType;
  /// Enables Performance Insights.
  late final pulumi.Output<bool?> performanceInsightsEnabled;
  /// Specifies the KMS Key ID to encrypt Performance Insights data. If not specified, the default RDS KMS key will be used (`aws/rds`).
  late final pulumi.Output<String> performanceInsightsKmsKeyId;
  /// Specifies the amount of time to retain performance insights data for. Defaults to 7 days if Performance Insights are enabled. Valid values are `7`, `month * 31` (where month is a number of months from 1-23), and `731`. See [here](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.Overview.cost.html) for more information on retention periods.
  late final pulumi.Output<int> performanceInsightsRetentionPeriod;
  /// Port on which the DB accepts connections.
  late final pulumi.Output<int> port;
  /// Daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per region, e.g. `04:00-09:00`.
  late final pulumi.Output<String> preferredBackupWindow;
  /// Weekly time range during which system maintenance can occur, in (UTC) e.g., `wed:04:00-wed:04:30`
  late final pulumi.Output<String> preferredMaintenanceWindow;
  /// Read-only endpoint for the Aurora cluster, automatically
  /// load-balanced across replicas
  late final pulumi.Output<String> readerEndpoint;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of a source DB cluster or DB instance if this DB cluster is to be created as a Read Replica. **Note:** Removing this attribute after creation will promote the read replica to a standalone cluster. If DB Cluster is part of a Global Cluster, use the `ignoreChanges` resource option to prevent Pulumi from showing differences for this argument instead of configuring this value.
  late final pulumi.Output<String?> replicationSourceIdentifier;
  /// Nested attribute for [point in time restore](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-pitr.html). More details below.
  late final pulumi.Output<ClusterRestoreToPointInTime?> restoreToPointInTime;
  late final pulumi.Output<ClusterS3Import?> s3Import;
  /// Nested attribute with scaling properties. Only valid when `engineMode` is set to `serverless`. More details below.
  late final pulumi.Output<ClusterScalingConfiguration?> scalingConfiguration;
  /// Nested attribute with scaling properties for ServerlessV2. Only valid when `engineMode` is set to `provisioned`. More details below.
  late final pulumi.Output<ClusterServerlessv2ScalingConfiguration?> serverlessv2ScalingConfiguration;
  /// Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `finalSnapshotIdentifier`. Default is `false`.
  late final pulumi.Output<bool?> skipFinalSnapshot;
  /// Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot. Conflicts with `globalClusterIdentifier`. Clusters cannot be restored from snapshot **and** joined to an existing global cluster in a single operation. See the [AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-getting-started.html#aurora-global-database.use-snapshot) or the Global Cluster Restored From Snapshot example for instructions on building a global cluster starting with a snapshot.
  late final pulumi.Output<String?> snapshotIdentifier;
  /// The source region for an encrypted replica DB cluster.
  late final pulumi.Output<String?> sourceRegion;
  /// Specifies whether the DB cluster is encrypted. The default is `false` for `provisioned` `engineMode` and `true` for `serverless` `engineMode`. When restoring an unencrypted `snapshotIdentifier`, the `kmsKeyId` argument must be provided to encrypt the restored cluster. The provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<bool> storageEncrypted;
  /// (Forces new for Multi-AZ DB clusters) Specifies the storage type to be associated with the DB cluster. For Aurora DB clusters, `storageType` modifications can be done in-place. For Multi-AZ DB Clusters, the `iops` argument must also be set. Valid values are: `""`, `aurora-iopt1` (Aurora DB Clusters); `io1`, `io2`, `gp3` (Multi-AZ DB Clusters). Default: `""` (Aurora DB Clusters); `io1` (Multi-AZ DB Clusters).
  late final pulumi.Output<String> storageType;
  /// A map of tags to assign to the DB cluster. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Order in which the clusters are upgraded (`first`, `second`, `last`). See [the AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Maintenance.AMVU.UpgradeRollout.html) for details.
  late final pulumi.Output<String> upgradeRolloutOrder;
  /// List of VPC security groups to associate with the Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the AWS official documentation:
  ///
  /// * [create-db-cluster](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-cluster.html)
  /// * [modify-db-cluster](https://docs.aws.amazon.com/cli/latest/reference/rds/modify-db-cluster.html)
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_rds_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatedStorage = registerOutput<int>('allocatedStorage');
    allowMajorVersionUpgrade = registerOutput<bool?>('allowMajorVersionUpgrade');
    applyImmediately = registerOutput<bool>('applyImmediately');
    arn = registerOutput<String>('arn');
    autoMinorVersionUpgrade = registerOutput<bool>('autoMinorVersionUpgrade');
    availabilityZones = registerOutput<List<String>>('availabilityZones');
    backtrackWindow = registerOutput<int?>('backtrackWindow');
    backupRetentionPeriod = registerOutput<int>('backupRetentionPeriod');
    caCertificateIdentifier = registerOutput<String>('caCertificateIdentifier');
    caCertificateValidTill = registerOutput<String>('caCertificateValidTill');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    clusterIdentifierPrefix = registerOutput<String>('clusterIdentifierPrefix');
    clusterMembers = registerOutput<List<String>>('clusterMembers');
    clusterResourceId = registerOutput<String>('clusterResourceId');
    clusterScalabilityType = registerOutput<String>('clusterScalabilityType');
    copyTagsToSnapshot = registerOutput<bool?>('copyTagsToSnapshot');
    databaseInsightsMode = registerOutput<String>('databaseInsightsMode');
    databaseName = registerOutput<String>('databaseName');
    dbClusterInstanceClass = registerOutput<String?>('dbClusterInstanceClass');
    dbClusterParameterGroupName = registerOutput<String>('dbClusterParameterGroupName');
    dbInstanceParameterGroupName = registerOutput<String?>('dbInstanceParameterGroupName');
    dbSubnetGroupName = registerOutput<String>('dbSubnetGroupName');
    dbSystemId = registerOutput<String>('dbSystemId');
    deleteAutomatedBackups = registerOutput<bool?>('deleteAutomatedBackups');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    domain = registerOutput<String?>('domain');
    domainIamRoleName = registerOutput<String?>('domainIamRoleName');
    enableGlobalWriteForwarding = registerOutput<bool?>('enableGlobalWriteForwarding');
    enableHttpEndpoint = registerOutput<bool?>('enableHttpEndpoint');
    enableLocalWriteForwarding = registerOutput<bool?>('enableLocalWriteForwarding');
    enabledCloudwatchLogsExports = registerOutput<List<String>?>('enabledCloudwatchLogsExports');
    endpoint = registerOutput<String>('endpoint');
    engine = registerOutput<String>('engine');
    engineLifecycleSupport = registerOutput<String>('engineLifecycleSupport');
    engineMode = registerOutput<String?>('engineMode');
    engineVersion = registerOutput<String>('engineVersion');
    engineVersionActual = registerOutput<String>('engineVersionActual');
    finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    globalClusterIdentifier = registerOutput<String?>('globalClusterIdentifier');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    iamDatabaseAuthenticationEnabled = registerOutput<bool?>('iamDatabaseAuthenticationEnabled');
    iamRoles = registerOutput<List<String>>('iamRoles');
    iops = registerOutput<int?>('iops');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    manageMasterUserPassword = registerOutput<bool?>('manageMasterUserPassword');
    masterPassword = registerOutput<String?>('masterPassword');
    masterPasswordWo = registerOutput<String?>('masterPasswordWo');
    masterPasswordWoVersion = registerOutput<int?>('masterPasswordWoVersion');
    masterUserSecretKmsKeyId = registerOutput<String>('masterUserSecretKmsKeyId');
    masterUserSecrets = registerOutput<List<Map<String, dynamic>>>('masterUserSecrets');
    masterUsername = registerOutput<String>('masterUsername');
    monitoringInterval = registerOutput<int>('monitoringInterval');
    monitoringRoleArn = registerOutput<String>('monitoringRoleArn');
    networkType = registerOutput<String>('networkType');
    performanceInsightsEnabled = registerOutput<bool?>('performanceInsightsEnabled');
    performanceInsightsKmsKeyId = registerOutput<String>('performanceInsightsKmsKeyId');
    performanceInsightsRetentionPeriod = registerOutput<int>('performanceInsightsRetentionPeriod');
    port = registerOutput<int>('port');
    preferredBackupWindow = registerOutput<String>('preferredBackupWindow');
    preferredMaintenanceWindow = registerOutput<String>('preferredMaintenanceWindow');
    readerEndpoint = registerOutput<String>('readerEndpoint');
    region = registerOutput<String>('region');
    replicationSourceIdentifier = registerOutput<String?>('replicationSourceIdentifier');
    restoreToPointInTime = registerOutput<ClusterRestoreToPointInTime?>('restoreToPointInTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRestoreToPointInTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    s3Import = registerOutput<ClusterS3Import?>('s3Import', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterS3Import.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scalingConfiguration = registerOutput<ClusterScalingConfiguration?>('scalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serverlessv2ScalingConfiguration = registerOutput<ClusterServerlessv2ScalingConfiguration?>('serverlessv2ScalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterServerlessv2ScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    snapshotIdentifier = registerOutput<String?>('snapshotIdentifier');
    sourceRegion = registerOutput<String?>('sourceRegion');
    storageEncrypted = registerOutput<bool>('storageEncrypted');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    upgradeRolloutOrder = registerOutput<String>('upgradeRolloutOrder');
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
          'aws:rds/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatedStorage = registerOutput<int>('allocatedStorage');
    allowMajorVersionUpgrade = registerOutput<bool?>('allowMajorVersionUpgrade');
    applyImmediately = registerOutput<bool>('applyImmediately');
    arn = registerOutput<String>('arn');
    autoMinorVersionUpgrade = registerOutput<bool>('autoMinorVersionUpgrade');
    availabilityZones = registerOutput<List<String>>('availabilityZones');
    backtrackWindow = registerOutput<int?>('backtrackWindow');
    backupRetentionPeriod = registerOutput<int>('backupRetentionPeriod');
    caCertificateIdentifier = registerOutput<String>('caCertificateIdentifier');
    caCertificateValidTill = registerOutput<String>('caCertificateValidTill');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    clusterIdentifierPrefix = registerOutput<String>('clusterIdentifierPrefix');
    clusterMembers = registerOutput<List<String>>('clusterMembers');
    clusterResourceId = registerOutput<String>('clusterResourceId');
    clusterScalabilityType = registerOutput<String>('clusterScalabilityType');
    copyTagsToSnapshot = registerOutput<bool?>('copyTagsToSnapshot');
    databaseInsightsMode = registerOutput<String>('databaseInsightsMode');
    databaseName = registerOutput<String>('databaseName');
    dbClusterInstanceClass = registerOutput<String?>('dbClusterInstanceClass');
    dbClusterParameterGroupName = registerOutput<String>('dbClusterParameterGroupName');
    dbInstanceParameterGroupName = registerOutput<String?>('dbInstanceParameterGroupName');
    dbSubnetGroupName = registerOutput<String>('dbSubnetGroupName');
    dbSystemId = registerOutput<String>('dbSystemId');
    deleteAutomatedBackups = registerOutput<bool?>('deleteAutomatedBackups');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    domain = registerOutput<String?>('domain');
    domainIamRoleName = registerOutput<String?>('domainIamRoleName');
    enableGlobalWriteForwarding = registerOutput<bool?>('enableGlobalWriteForwarding');
    enableHttpEndpoint = registerOutput<bool?>('enableHttpEndpoint');
    enableLocalWriteForwarding = registerOutput<bool?>('enableLocalWriteForwarding');
    enabledCloudwatchLogsExports = registerOutput<List<String>?>('enabledCloudwatchLogsExports');
    endpoint = registerOutput<String>('endpoint');
    engine = registerOutput<String>('engine');
    engineLifecycleSupport = registerOutput<String>('engineLifecycleSupport');
    engineMode = registerOutput<String?>('engineMode');
    engineVersion = registerOutput<String>('engineVersion');
    engineVersionActual = registerOutput<String>('engineVersionActual');
    finalSnapshotIdentifier = registerOutput<String?>('finalSnapshotIdentifier');
    globalClusterIdentifier = registerOutput<String?>('globalClusterIdentifier');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    iamDatabaseAuthenticationEnabled = registerOutput<bool?>('iamDatabaseAuthenticationEnabled');
    iamRoles = registerOutput<List<String>>('iamRoles');
    iops = registerOutput<int?>('iops');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    manageMasterUserPassword = registerOutput<bool?>('manageMasterUserPassword');
    masterPassword = registerOutput<String?>('masterPassword');
    masterPasswordWo = registerOutput<String?>('masterPasswordWo');
    masterPasswordWoVersion = registerOutput<int?>('masterPasswordWoVersion');
    masterUserSecretKmsKeyId = registerOutput<String>('masterUserSecretKmsKeyId');
    masterUserSecrets = registerOutput<List<Map<String, dynamic>>>('masterUserSecrets');
    masterUsername = registerOutput<String>('masterUsername');
    monitoringInterval = registerOutput<int>('monitoringInterval');
    monitoringRoleArn = registerOutput<String>('monitoringRoleArn');
    networkType = registerOutput<String>('networkType');
    performanceInsightsEnabled = registerOutput<bool?>('performanceInsightsEnabled');
    performanceInsightsKmsKeyId = registerOutput<String>('performanceInsightsKmsKeyId');
    performanceInsightsRetentionPeriod = registerOutput<int>('performanceInsightsRetentionPeriod');
    port = registerOutput<int>('port');
    preferredBackupWindow = registerOutput<String>('preferredBackupWindow');
    preferredMaintenanceWindow = registerOutput<String>('preferredMaintenanceWindow');
    readerEndpoint = registerOutput<String>('readerEndpoint');
    region = registerOutput<String>('region');
    replicationSourceIdentifier = registerOutput<String?>('replicationSourceIdentifier');
    restoreToPointInTime = registerOutput<ClusterRestoreToPointInTime?>('restoreToPointInTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRestoreToPointInTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    s3Import = registerOutput<ClusterS3Import?>('s3Import', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterS3Import.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scalingConfiguration = registerOutput<ClusterScalingConfiguration?>('scalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serverlessv2ScalingConfiguration = registerOutput<ClusterServerlessv2ScalingConfiguration?>('serverlessv2ScalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterServerlessv2ScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    snapshotIdentifier = registerOutput<String?>('snapshotIdentifier');
    sourceRegion = registerOutput<String?>('sourceRegion');
    storageEncrypted = registerOutput<bool>('storageEncrypted');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    upgradeRolloutOrder = registerOutput<String>('upgradeRolloutOrder');
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
