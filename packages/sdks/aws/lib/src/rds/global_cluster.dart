import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_cluster_args.dart';
import 'global_cluster_global_cluster_member.dart';
import 'global_cluster_state.dart';

/// Manages an RDS Global Cluster, which is an Aurora global database spread across multiple regions. The global database contains a single primary cluster with read-write capability, and a read-only secondary cluster that receives data from the primary cluster through high-speed replication performed by the Aurora storage subsystem.
///
/// More information about Aurora global databases can be found in the [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html#aurora-global-database-creating).
///
/// ## Example Usage
///
/// ### New MySQL Global Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.GlobalCluster("example", {
///     globalClusterIdentifier: "global-test",
///     engine: "aurora",
///     engineVersion: "5.6.mysql_aurora.1.22.2",
///     databaseName: "example_db",
/// });
/// const primary = new aws.rds.Cluster("primary", {
///     engine: example.engine,
///     engineVersion: example.engineVersion,
///     clusterIdentifier: "test-primary-cluster",
///     masterUsername: "username",
///     masterPassword: "somepass123",
///     databaseName: "example_db",
///     globalClusterIdentifier: example.id,
///     dbSubnetGroupName: "default",
/// });
/// const primaryClusterInstance = new aws.rds.ClusterInstance("primary", {
///     engine: example.engine.apply((x) => aws.rds.EngineType[x]),
///     engineVersion: example.engineVersion,
///     identifier: "test-primary-cluster-instance",
///     clusterIdentifier: primary.id,
///     instanceClass: aws.rds.InstanceType.R4_Large,
///     dbSubnetGroupName: "default",
/// });
/// const secondary = new aws.rds.Cluster("secondary", {
///     engine: example.engine,
///     engineVersion: example.engineVersion,
///     clusterIdentifier: "test-secondary-cluster",
///     globalClusterIdentifier: example.id,
///     dbSubnetGroupName: "default",
/// }, {
///     dependsOn: [primaryClusterInstance],
/// });
/// const secondaryClusterInstance = new aws.rds.ClusterInstance("secondary", {
///     engine: example.engine.apply((x) => aws.rds.EngineType[x]),
///     engineVersion: example.engineVersion,
///     identifier: "test-secondary-cluster-instance",
///     clusterIdentifier: secondary.id,
///     instanceClass: aws.rds.InstanceType.R4_Large,
///     dbSubnetGroupName: "default",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.GlobalCluster("example",
///     global_cluster_identifier="global-test",
///     engine="aurora",
///     engine_version="5.6.mysql_aurora.1.22.2",
///     database_name="example_db")
/// primary = aws.rds.Cluster("primary",
///     engine=example.engine,
///     engine_version=example.engine_version,
///     cluster_identifier="test-primary-cluster",
///     master_username="username",
///     master_password="somepass123",
///     database_name="example_db",
///     global_cluster_identifier=example.id,
///     db_subnet_group_name="default")
/// primary_cluster_instance = aws.rds.ClusterInstance("primary",
///     engine=example.engine.apply(lambda x: aws.rds.EngineType(x)),
///     engine_version=example.engine_version,
///     identifier="test-primary-cluster-instance",
///     cluster_identifier=primary.id,
///     instance_class=aws.rds.InstanceType.R4_LARGE,
///     db_subnet_group_name="default")
/// secondary = aws.rds.Cluster("secondary",
///     engine=example.engine,
///     engine_version=example.engine_version,
///     cluster_identifier="test-secondary-cluster",
///     global_cluster_identifier=example.id,
///     db_subnet_group_name="default",
///     opts = pulumi.ResourceOptions(depends_on=[primary_cluster_instance]))
/// secondary_cluster_instance = aws.rds.ClusterInstance("secondary",
///     engine=example.engine.apply(lambda x: aws.rds.EngineType(x)),
///     engine_version=example.engine_version,
///     identifier="test-secondary-cluster-instance",
///     cluster_identifier=secondary.id,
///     instance_class=aws.rds.InstanceType.R4_LARGE,
///     db_subnet_group_name="default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.GlobalCluster("example", new()
///     {
///         GlobalClusterIdentifier = "global-test",
///         Engine = "aurora",
///         EngineVersion = "5.6.mysql_aurora.1.22.2",
///         DatabaseName = "example_db",
///     });
///
///     var primary = new Aws.Rds.Cluster("primary", new()
///     {
///         Engine = example.Engine,
///         EngineVersion = example.EngineVersion,
///         ClusterIdentifier = "test-primary-cluster",
///         MasterUsername = "username",
///         MasterPassword = "somepass123",
///         DatabaseName = "example_db",
///         GlobalClusterIdentifier = example.Id,
///         DbSubnetGroupName = "default",
///     });
///
///     var primaryClusterInstance = new Aws.Rds.ClusterInstance("primary", new()
///     {
///         Engine = example.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
///         EngineVersion = example.EngineVersion,
///         Identifier = "test-primary-cluster-instance",
///         ClusterIdentifier = primary.Id,
///         InstanceClass = Aws.Rds.InstanceType.R4_Large,
///         DbSubnetGroupName = "default",
///     });
///
///     var secondary = new Aws.Rds.Cluster("secondary", new()
///     {
///         Engine = example.Engine,
///         EngineVersion = example.EngineVersion,
///         ClusterIdentifier = "test-secondary-cluster",
///         GlobalClusterIdentifier = example.Id,
///         DbSubnetGroupName = "default",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primaryClusterInstance,
///         },
///     });
///
///     var secondaryClusterInstance = new Aws.Rds.ClusterInstance("secondary", new()
///     {
///         Engine = example.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
///         EngineVersion = example.EngineVersion,
///         Identifier = "test-secondary-cluster-instance",
///         ClusterIdentifier = secondary.Id,
///         InstanceClass = Aws.Rds.InstanceType.R4_Large,
///         DbSubnetGroupName = "default",
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
/// 		example, err := rds.NewGlobalCluster(ctx, "example", &rds.GlobalClusterArgs{
/// 			GlobalClusterIdentifier: pulumi.String("global-test"),
/// 			Engine:                  pulumi.String("aurora"),
/// 			EngineVersion:           pulumi.String("5.6.mysql_aurora.1.22.2"),
/// 			DatabaseName:            pulumi.String("example_db"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := rds.NewCluster(ctx, "primary", &rds.ClusterArgs{
/// 			Engine:                  example.Engine,
/// 			EngineVersion:           example.EngineVersion,
/// 			ClusterIdentifier:       pulumi.String("test-primary-cluster"),
/// 			MasterUsername:          pulumi.String("username"),
/// 			MasterPassword:          pulumi.String("somepass123"),
/// 			DatabaseName:            pulumi.String("example_db"),
/// 			GlobalClusterIdentifier: example.ID(),
/// 			DbSubnetGroupName:       pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryClusterInstance, err := rds.NewClusterInstance(ctx, "primary", &rds.ClusterInstanceArgs{
/// 			Engine:            example.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// 			EngineVersion:     example.EngineVersion,
/// 			Identifier:        pulumi.String("test-primary-cluster-instance"),
/// 			ClusterIdentifier: primary.ID(),
/// 			InstanceClass:     pulumi.String(rds.InstanceType_R4_Large),
/// 			DbSubnetGroupName: pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := rds.NewCluster(ctx, "secondary", &rds.ClusterArgs{
/// 			Engine:                  example.Engine,
/// 			EngineVersion:           example.EngineVersion,
/// 			ClusterIdentifier:       pulumi.String("test-secondary-cluster"),
/// 			GlobalClusterIdentifier: example.ID(),
/// 			DbSubnetGroupName:       pulumi.String("default"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primaryClusterInstance,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewClusterInstance(ctx, "secondary", &rds.ClusterInstanceArgs{
/// 			Engine:            example.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// 			EngineVersion:     example.EngineVersion,
/// 			Identifier:        pulumi.String("test-secondary-cluster-instance"),
/// 			ClusterIdentifier: secondary.ID(),
/// 			InstanceClass:     pulumi.String(rds.InstanceType_R4_Large),
/// 			DbSubnetGroupName: pulumi.String("default"),
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
/// import com.pulumi.aws.rds.GlobalCluster;
/// import com.pulumi.aws.rds.GlobalClusterArgs;
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
/// import com.pulumi.aws.rds.ClusterInstance;
/// import com.pulumi.aws.rds.ClusterInstanceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new GlobalCluster("example", GlobalClusterArgs.builder()
///             .globalClusterIdentifier("global-test")
///             .engine("aurora")
///             .engineVersion("5.6.mysql_aurora.1.22.2")
///             .databaseName("example_db")
///             .build());
///
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .clusterIdentifier("test-primary-cluster")
///             .masterUsername("username")
///             .masterPassword("somepass123")
///             .databaseName("example_db")
///             .globalClusterIdentifier(example.id())
///             .dbSubnetGroupName("default")
///             .build());
///
///         var primaryClusterInstance = new ClusterInstance("primaryClusterInstance", ClusterInstanceArgs.builder()
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .identifier("test-primary-cluster-instance")
///             .clusterIdentifier(primary.id())
///             .instanceClass("db.r4.large")
///             .dbSubnetGroupName("default")
///             .build());
///
///         var secondary = new Cluster("secondary", ClusterArgs.builder()
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .clusterIdentifier("test-secondary-cluster")
///             .globalClusterIdentifier(example.id())
///             .dbSubnetGroupName("default")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primaryClusterInstance)
///                 .build());
///
///         var secondaryClusterInstance = new ClusterInstance("secondaryClusterInstance", ClusterInstanceArgs.builder()
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .identifier("test-secondary-cluster-instance")
///             .clusterIdentifier(secondary.id())
///             .instanceClass("db.r4.large")
///             .dbSubnetGroupName("default")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:GlobalCluster
///     properties:
///       globalClusterIdentifier: global-test
///       engine: aurora
///       engineVersion: 5.6.mysql_aurora.1.22.2
///       databaseName: example_db
///   primary:
///     type: aws:rds:Cluster
///     properties:
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       clusterIdentifier: test-primary-cluster
///       masterUsername: username
///       masterPassword: somepass123
///       databaseName: example_db
///       globalClusterIdentifier: ${example.id}
///       dbSubnetGroupName: default
///   primaryClusterInstance:
///     type: aws:rds:ClusterInstance
///     name: primary
///     properties:
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       identifier: test-primary-cluster-instance
///       clusterIdentifier: ${primary.id}
///       instanceClass: db.r4.large
///       dbSubnetGroupName: default
///   secondary:
///     type: aws:rds:Cluster
///     properties:
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       clusterIdentifier: test-secondary-cluster
///       globalClusterIdentifier: ${example.id}
///       dbSubnetGroupName: default
///     options:
///       dependsOn:
///         - ${primaryClusterInstance}
///   secondaryClusterInstance:
///     type: aws:rds:ClusterInstance
///     name: secondary
///     properties:
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       identifier: test-secondary-cluster-instance
///       clusterIdentifier: ${secondary.id}
///       instanceClass: db.r4.large
///       dbSubnetGroupName: default
/// ```
///
///
/// ### New PostgreSQL Global Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.GlobalCluster("example", {
///     globalClusterIdentifier: "global-test",
///     engine: "aurora-postgresql",
///     engineVersion: "11.9",
///     databaseName: "example_db",
/// });
/// const primary = new aws.rds.Cluster("primary", {
///     engine: example.engine,
///     engineVersion: example.engineVersion,
///     clusterIdentifier: "test-primary-cluster",
///     masterUsername: "username",
///     masterPassword: "somepass123",
///     databaseName: "example_db",
///     globalClusterIdentifier: example.id,
///     dbSubnetGroupName: "default",
/// });
/// const primaryClusterInstance = new aws.rds.ClusterInstance("primary", {
///     engine: example.engine.apply((x) => aws.rds.EngineType[x]),
///     engineVersion: example.engineVersion,
///     identifier: "test-primary-cluster-instance",
///     clusterIdentifier: primary.id,
///     instanceClass: aws.rds.InstanceType.R4_Large,
///     dbSubnetGroupName: "default",
/// });
/// const secondary = new aws.rds.Cluster("secondary", {
///     engine: example.engine,
///     engineVersion: example.engineVersion,
///     clusterIdentifier: "test-secondary-cluster",
///     globalClusterIdentifier: example.id,
///     skipFinalSnapshot: true,
///     dbSubnetGroupName: "default",
/// }, {
///     dependsOn: [primaryClusterInstance],
/// });
/// const secondaryClusterInstance = new aws.rds.ClusterInstance("secondary", {
///     engine: example.engine.apply((x) => aws.rds.EngineType[x]),
///     engineVersion: example.engineVersion,
///     identifier: "test-secondary-cluster-instance",
///     clusterIdentifier: secondary.id,
///     instanceClass: aws.rds.InstanceType.R4_Large,
///     dbSubnetGroupName: "default",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.GlobalCluster("example",
///     global_cluster_identifier="global-test",
///     engine="aurora-postgresql",
///     engine_version="11.9",
///     database_name="example_db")
/// primary = aws.rds.Cluster("primary",
///     engine=example.engine,
///     engine_version=example.engine_version,
///     cluster_identifier="test-primary-cluster",
///     master_username="username",
///     master_password="somepass123",
///     database_name="example_db",
///     global_cluster_identifier=example.id,
///     db_subnet_group_name="default")
/// primary_cluster_instance = aws.rds.ClusterInstance("primary",
///     engine=example.engine.apply(lambda x: aws.rds.EngineType(x)),
///     engine_version=example.engine_version,
///     identifier="test-primary-cluster-instance",
///     cluster_identifier=primary.id,
///     instance_class=aws.rds.InstanceType.R4_LARGE,
///     db_subnet_group_name="default")
/// secondary = aws.rds.Cluster("secondary",
///     engine=example.engine,
///     engine_version=example.engine_version,
///     cluster_identifier="test-secondary-cluster",
///     global_cluster_identifier=example.id,
///     skip_final_snapshot=True,
///     db_subnet_group_name="default",
///     opts = pulumi.ResourceOptions(depends_on=[primary_cluster_instance]))
/// secondary_cluster_instance = aws.rds.ClusterInstance("secondary",
///     engine=example.engine.apply(lambda x: aws.rds.EngineType(x)),
///     engine_version=example.engine_version,
///     identifier="test-secondary-cluster-instance",
///     cluster_identifier=secondary.id,
///     instance_class=aws.rds.InstanceType.R4_LARGE,
///     db_subnet_group_name="default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.GlobalCluster("example", new()
///     {
///         GlobalClusterIdentifier = "global-test",
///         Engine = "aurora-postgresql",
///         EngineVersion = "11.9",
///         DatabaseName = "example_db",
///     });
///
///     var primary = new Aws.Rds.Cluster("primary", new()
///     {
///         Engine = example.Engine,
///         EngineVersion = example.EngineVersion,
///         ClusterIdentifier = "test-primary-cluster",
///         MasterUsername = "username",
///         MasterPassword = "somepass123",
///         DatabaseName = "example_db",
///         GlobalClusterIdentifier = example.Id,
///         DbSubnetGroupName = "default",
///     });
///
///     var primaryClusterInstance = new Aws.Rds.ClusterInstance("primary", new()
///     {
///         Engine = example.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
///         EngineVersion = example.EngineVersion,
///         Identifier = "test-primary-cluster-instance",
///         ClusterIdentifier = primary.Id,
///         InstanceClass = Aws.Rds.InstanceType.R4_Large,
///         DbSubnetGroupName = "default",
///     });
///
///     var secondary = new Aws.Rds.Cluster("secondary", new()
///     {
///         Engine = example.Engine,
///         EngineVersion = example.EngineVersion,
///         ClusterIdentifier = "test-secondary-cluster",
///         GlobalClusterIdentifier = example.Id,
///         SkipFinalSnapshot = true,
///         DbSubnetGroupName = "default",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primaryClusterInstance,
///         },
///     });
///
///     var secondaryClusterInstance = new Aws.Rds.ClusterInstance("secondary", new()
///     {
///         Engine = example.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
///         EngineVersion = example.EngineVersion,
///         Identifier = "test-secondary-cluster-instance",
///         ClusterIdentifier = secondary.Id,
///         InstanceClass = Aws.Rds.InstanceType.R4_Large,
///         DbSubnetGroupName = "default",
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
/// 		example, err := rds.NewGlobalCluster(ctx, "example", &rds.GlobalClusterArgs{
/// 			GlobalClusterIdentifier: pulumi.String("global-test"),
/// 			Engine:                  pulumi.String("aurora-postgresql"),
/// 			EngineVersion:           pulumi.String("11.9"),
/// 			DatabaseName:            pulumi.String("example_db"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := rds.NewCluster(ctx, "primary", &rds.ClusterArgs{
/// 			Engine:                  example.Engine,
/// 			EngineVersion:           example.EngineVersion,
/// 			ClusterIdentifier:       pulumi.String("test-primary-cluster"),
/// 			MasterUsername:          pulumi.String("username"),
/// 			MasterPassword:          pulumi.String("somepass123"),
/// 			DatabaseName:            pulumi.String("example_db"),
/// 			GlobalClusterIdentifier: example.ID(),
/// 			DbSubnetGroupName:       pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryClusterInstance, err := rds.NewClusterInstance(ctx, "primary", &rds.ClusterInstanceArgs{
/// 			Engine:            example.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// 			EngineVersion:     example.EngineVersion,
/// 			Identifier:        pulumi.String("test-primary-cluster-instance"),
/// 			ClusterIdentifier: primary.ID(),
/// 			InstanceClass:     pulumi.String(rds.InstanceType_R4_Large),
/// 			DbSubnetGroupName: pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := rds.NewCluster(ctx, "secondary", &rds.ClusterArgs{
/// 			Engine:                  example.Engine,
/// 			EngineVersion:           example.EngineVersion,
/// 			ClusterIdentifier:       pulumi.String("test-secondary-cluster"),
/// 			GlobalClusterIdentifier: example.ID(),
/// 			SkipFinalSnapshot:       pulumi.Bool(true),
/// 			DbSubnetGroupName:       pulumi.String("default"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primaryClusterInstance,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewClusterInstance(ctx, "secondary", &rds.ClusterInstanceArgs{
/// 			Engine:            example.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// 			EngineVersion:     example.EngineVersion,
/// 			Identifier:        pulumi.String("test-secondary-cluster-instance"),
/// 			ClusterIdentifier: secondary.ID(),
/// 			InstanceClass:     pulumi.String(rds.InstanceType_R4_Large),
/// 			DbSubnetGroupName: pulumi.String("default"),
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
/// import com.pulumi.aws.rds.GlobalCluster;
/// import com.pulumi.aws.rds.GlobalClusterArgs;
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
/// import com.pulumi.aws.rds.ClusterInstance;
/// import com.pulumi.aws.rds.ClusterInstanceArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new GlobalCluster("example", GlobalClusterArgs.builder()
///             .globalClusterIdentifier("global-test")
///             .engine("aurora-postgresql")
///             .engineVersion("11.9")
///             .databaseName("example_db")
///             .build());
///
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .clusterIdentifier("test-primary-cluster")
///             .masterUsername("username")
///             .masterPassword("somepass123")
///             .databaseName("example_db")
///             .globalClusterIdentifier(example.id())
///             .dbSubnetGroupName("default")
///             .build());
///
///         var primaryClusterInstance = new ClusterInstance("primaryClusterInstance", ClusterInstanceArgs.builder()
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .identifier("test-primary-cluster-instance")
///             .clusterIdentifier(primary.id())
///             .instanceClass("db.r4.large")
///             .dbSubnetGroupName("default")
///             .build());
///
///         var secondary = new Cluster("secondary", ClusterArgs.builder()
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .clusterIdentifier("test-secondary-cluster")
///             .globalClusterIdentifier(example.id())
///             .skipFinalSnapshot(true)
///             .dbSubnetGroupName("default")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primaryClusterInstance)
///                 .build());
///
///         var secondaryClusterInstance = new ClusterInstance("secondaryClusterInstance", ClusterInstanceArgs.builder()
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .identifier("test-secondary-cluster-instance")
///             .clusterIdentifier(secondary.id())
///             .instanceClass("db.r4.large")
///             .dbSubnetGroupName("default")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:GlobalCluster
///     properties:
///       globalClusterIdentifier: global-test
///       engine: aurora-postgresql
///       engineVersion: '11.9'
///       databaseName: example_db
///   primary:
///     type: aws:rds:Cluster
///     properties:
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       clusterIdentifier: test-primary-cluster
///       masterUsername: username
///       masterPassword: somepass123
///       databaseName: example_db
///       globalClusterIdentifier: ${example.id}
///       dbSubnetGroupName: default
///   primaryClusterInstance:
///     type: aws:rds:ClusterInstance
///     name: primary
///     properties:
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       identifier: test-primary-cluster-instance
///       clusterIdentifier: ${primary.id}
///       instanceClass: db.r4.large
///       dbSubnetGroupName: default
///   secondary:
///     type: aws:rds:Cluster
///     properties:
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       clusterIdentifier: test-secondary-cluster
///       globalClusterIdentifier: ${example.id}
///       skipFinalSnapshot: true
///       dbSubnetGroupName: default
///     options:
///       dependsOn:
///         - ${primaryClusterInstance}
///   secondaryClusterInstance:
///     type: aws:rds:ClusterInstance
///     name: secondary
///     properties:
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       identifier: test-secondary-cluster-instance
///       clusterIdentifier: ${secondary.id}
///       instanceClass: db.r4.large
///       dbSubnetGroupName: default
/// ```
///
///
/// ### New Global Cluster From Existing DB Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Cluster("example", {});
/// const exampleGlobalCluster = new aws.rds.GlobalCluster("example", {
///     forceDestroy: true,
///     globalClusterIdentifier: "example",
///     sourceDbClusterIdentifier: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Cluster("example")
/// example_global_cluster = aws.rds.GlobalCluster("example",
///     force_destroy=True,
///     global_cluster_identifier="example",
///     source_db_cluster_identifier=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.Cluster("example");
///
///     var exampleGlobalCluster = new Aws.Rds.GlobalCluster("example", new()
///     {
///         ForceDestroy = true,
///         GlobalClusterIdentifier = "example",
///         SourceDbClusterIdentifier = example.Arn,
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
/// 		example, err := rds.NewCluster(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewGlobalCluster(ctx, "example", &rds.GlobalClusterArgs{
/// 			ForceDestroy:              pulumi.Bool(true),
/// 			GlobalClusterIdentifier:   pulumi.String("example"),
/// 			SourceDbClusterIdentifier: example.Arn,
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
/// import com.pulumi.aws.rds.Cluster;
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Cluster("example");
///
///         var exampleGlobalCluster = new GlobalCluster("exampleGlobalCluster", GlobalClusterArgs.builder()
///             .forceDestroy(true)
///             .globalClusterIdentifier("example")
///             .sourceDbClusterIdentifier(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:Cluster
///   exampleGlobalCluster:
///     type: aws:rds:GlobalCluster
///     name: example
///     properties:
///       forceDestroy: true
///       globalClusterIdentifier: example
///       sourceDbClusterIdentifier: ${example.arn}
/// ```
///
///
/// ### Upgrading Engine Versions
///
/// When you upgrade the version of an `aws.rds.GlobalCluster`, the provider will attempt to in-place upgrade the engine versions of all associated clusters. Since the `aws.rds.Cluster` resource is being updated through the `aws.rds.GlobalCluster`, you are likely to get an error (`Provider produced inconsistent final plan`). To avoid this, use the `lifecycle` `ignore_changes` meta argument as shown below on the `aws.rds.Cluster`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.GlobalCluster("example", {
///     globalClusterIdentifier: "kyivkharkiv",
///     engine: "aurora-mysql",
///     engineVersion: "5.7.mysql_aurora.2.07.5",
/// });
/// const primary = new aws.rds.Cluster("primary", {
///     allowMajorVersionUpgrade: true,
///     applyImmediately: true,
///     clusterIdentifier: "odessadnipro",
///     databaseName: "totoro",
///     engine: example.engine,
///     engineVersion: example.engineVersion,
///     globalClusterIdentifier: example.id,
///     masterPassword: "satsukimae",
///     masterUsername: "maesatsuki",
///     skipFinalSnapshot: true,
/// });
/// const primaryClusterInstance = new aws.rds.ClusterInstance("primary", {
///     applyImmediately: true,
///     clusterIdentifier: primary.id,
///     engine: primary.engine.apply((x) => aws.rds.EngineType[x]),
///     engineVersion: primary.engineVersion,
///     identifier: "donetsklviv",
///     instanceClass: aws.rds.InstanceType.R4_Large,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.GlobalCluster("example",
///     global_cluster_identifier="kyivkharkiv",
///     engine="aurora-mysql",
///     engine_version="5.7.mysql_aurora.2.07.5")
/// primary = aws.rds.Cluster("primary",
///     allow_major_version_upgrade=True,
///     apply_immediately=True,
///     cluster_identifier="odessadnipro",
///     database_name="totoro",
///     engine=example.engine,
///     engine_version=example.engine_version,
///     global_cluster_identifier=example.id,
///     master_password="satsukimae",
///     master_username="maesatsuki",
///     skip_final_snapshot=True)
/// primary_cluster_instance = aws.rds.ClusterInstance("primary",
///     apply_immediately=True,
///     cluster_identifier=primary.id,
///     engine=primary.engine.apply(lambda x: aws.rds.EngineType(x)),
///     engine_version=primary.engine_version,
///     identifier="donetsklviv",
///     instance_class=aws.rds.InstanceType.R4_LARGE)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.GlobalCluster("example", new()
///     {
///         GlobalClusterIdentifier = "kyivkharkiv",
///         Engine = "aurora-mysql",
///         EngineVersion = "5.7.mysql_aurora.2.07.5",
///     });
///
///     var primary = new Aws.Rds.Cluster("primary", new()
///     {
///         AllowMajorVersionUpgrade = true,
///         ApplyImmediately = true,
///         ClusterIdentifier = "odessadnipro",
///         DatabaseName = "totoro",
///         Engine = example.Engine,
///         EngineVersion = example.EngineVersion,
///         GlobalClusterIdentifier = example.Id,
///         MasterPassword = "satsukimae",
///         MasterUsername = "maesatsuki",
///         SkipFinalSnapshot = true,
///     });
///
///     var primaryClusterInstance = new Aws.Rds.ClusterInstance("primary", new()
///     {
///         ApplyImmediately = true,
///         ClusterIdentifier = primary.Id,
///         Engine = primary.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
///         EngineVersion = primary.EngineVersion,
///         Identifier = "donetsklviv",
///         InstanceClass = Aws.Rds.InstanceType.R4_Large,
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
/// 		example, err := rds.NewGlobalCluster(ctx, "example", &rds.GlobalClusterArgs{
/// 			GlobalClusterIdentifier: pulumi.String("kyivkharkiv"),
/// 			Engine:                  pulumi.String("aurora-mysql"),
/// 			EngineVersion:           pulumi.String("5.7.mysql_aurora.2.07.5"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := rds.NewCluster(ctx, "primary", &rds.ClusterArgs{
/// 			AllowMajorVersionUpgrade: pulumi.Bool(true),
/// 			ApplyImmediately:         pulumi.Bool(true),
/// 			ClusterIdentifier:        pulumi.String("odessadnipro"),
/// 			DatabaseName:             pulumi.String("totoro"),
/// 			Engine:                   example.Engine,
/// 			EngineVersion:            example.EngineVersion,
/// 			GlobalClusterIdentifier:  example.ID(),
/// 			MasterPassword:           pulumi.String("satsukimae"),
/// 			MasterUsername:           pulumi.String("maesatsuki"),
/// 			SkipFinalSnapshot:        pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewClusterInstance(ctx, "primary", &rds.ClusterInstanceArgs{
/// 			ApplyImmediately:  pulumi.Bool(true),
/// 			ClusterIdentifier: primary.ID(),
/// 			Engine:            primary.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// 			EngineVersion:     primary.EngineVersion,
/// 			Identifier:        pulumi.String("donetsklviv"),
/// 			InstanceClass:     pulumi.String(rds.InstanceType_R4_Large),
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
/// import com.pulumi.aws.rds.GlobalCluster;
/// import com.pulumi.aws.rds.GlobalClusterArgs;
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new GlobalCluster("example", GlobalClusterArgs.builder()
///             .globalClusterIdentifier("kyivkharkiv")
///             .engine("aurora-mysql")
///             .engineVersion("5.7.mysql_aurora.2.07.5")
///             .build());
///
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .allowMajorVersionUpgrade(true)
///             .applyImmediately(true)
///             .clusterIdentifier("odessadnipro")
///             .databaseName("totoro")
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .globalClusterIdentifier(example.id())
///             .masterPassword("satsukimae")
///             .masterUsername("maesatsuki")
///             .skipFinalSnapshot(true)
///             .build());
///
///         var primaryClusterInstance = new ClusterInstance("primaryClusterInstance", ClusterInstanceArgs.builder()
///             .applyImmediately(true)
///             .clusterIdentifier(primary.id())
///             .engine(primary.engine())
///             .engineVersion(primary.engineVersion())
///             .identifier("donetsklviv")
///             .instanceClass("db.r4.large")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:GlobalCluster
///     properties:
///       globalClusterIdentifier: kyivkharkiv
///       engine: aurora-mysql
///       engineVersion: 5.7.mysql_aurora.2.07.5
///   primary:
///     type: aws:rds:Cluster
///     properties:
///       allowMajorVersionUpgrade: true
///       applyImmediately: true
///       clusterIdentifier: odessadnipro
///       databaseName: totoro
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       globalClusterIdentifier: ${example.id}
///       masterPassword: satsukimae
///       masterUsername: maesatsuki
///       skipFinalSnapshot: true
///   primaryClusterInstance:
///     type: aws:rds:ClusterInstance
///     name: primary
///     properties:
///       applyImmediately: true
///       clusterIdentifier: ${primary.id}
///       engine: ${primary.engine}
///       engineVersion: ${primary.engineVersion}
///       identifier: donetsklviv
///       instanceClass: db.r4.large
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.rds.GlobalCluster` using the RDS Global Cluster identifier. For example:
///
/// ```sh
/// $ pulumi import aws:rds/globalCluster:GlobalCluster example example
/// ```
///
/// Certain resource arguments, like `force_destroy`, only exist within this provider. If the argument is set in the the provider configuration on an imported resource, This provider will show a difference on the first plan after import to update the state value. This change is safe to apply immediately so the state matches the desired configuration.
///
/// Certain resource arguments, like `source_db_cluster_identifier`, do not have an API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.GlobalCluster("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.GlobalCluster("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.GlobalCluster("example");
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
/// 		_, err := rds.NewGlobalCluster(ctx, "example", nil)
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
/// import com.pulumi.aws.rds.GlobalCluster;
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
///         var example = new GlobalCluster("example");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:GlobalCluster
/// ```
class GlobalCluster extends pulumi.CustomResource {
  /// RDS Global Cluster Amazon Resource Name (ARN).
  late final pulumi.Output<String> arn;
  /// Name for an automatically created database on cluster creation. Pulumi will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<String> databaseName;
  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  late final pulumi.Output<bool?> deletionProtection;
  /// Writer endpoint for the new global database cluster. This endpoint always points to the writer DB instance in the current primary cluster.
  late final pulumi.Output<String> endpoint;
  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Valid values: `aurora`, `aurora-mysql`, `aurora-postgresql`. Defaults to `aurora`. Conflicts with `source_db_cluster_identifier`.
  late final pulumi.Output<String> engine;
  /// The life cycle type for this DB instance. This setting applies only to Aurora PostgreSQL-based global databases. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  late final pulumi.Output<String> engineLifecycleSupport;
  /// Engine version of the Aurora global database. The `engine`, `engine_version`, and `instance_class` (on the `aws.rds.ClusterInstance`) must together support global databases. See [Using Amazon Aurora global databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html) for more information. By upgrading the engine version, the provider will upgrade cluster members. **NOTE:** To avoid an `inconsistent final plan` error while upgrading, use the `lifecycle` `ignore_changes` for `engine_version` meta argument on the associated `aws.rds.Cluster` resource as shown above in Upgrading Engine Versions example.
  late final pulumi.Output<String> engineVersion;
  late final pulumi.Output<String> engineVersionActual;
  /// Enable to remove DB Cluster members from Global Cluster on destroy. Required with `source_db_cluster_identifier`.
  late final pulumi.Output<bool?> forceDestroy;
  /// Global cluster identifier.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> globalClusterIdentifier;
  /// Set of objects containing Global Cluster members.
  late final pulumi.Output<List<GlobalClusterGlobalClusterMember>> globalClusterMembers;
  /// AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  late final pulumi.Output<String> globalClusterResourceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value. **NOTE:** After initial creation, this argument can be removed and replaced with `engine` and `engine_version`. This allows upgrading the engine version of the Global Cluster.
  late final pulumi.Output<String> sourceDbClusterIdentifier;
  /// Specifies whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<bool> storageEncrypted;
  /// A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > When both `source_db_cluster_identifier` and `engine`/`engine_version` are set, all engine related values will be ignored during creation. The global cluster will inherit the `engine` and `engine_version` values from the source cluster. After the first apply, any differences between the inherited and configured values will trigger an in-place update.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [GlobalCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalCluster]. {@macro pulumi_rds_global_cluster_global_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalCluster(
    String name, {
    GlobalClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/globalCluster:GlobalCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.databaseName = registerOutput<String>('databaseName');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.endpoint = registerOutput<String>('endpoint');
    this.engine = registerOutput<String>('engine');
    this.engineLifecycleSupport = registerOutput<String>('engineLifecycleSupport');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.engineVersionActual = registerOutput<String>('engineVersionActual');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.globalClusterIdentifier = registerOutput<String>('globalClusterIdentifier');
    this.globalClusterMembers = registerOutput<List<GlobalClusterGlobalClusterMember>>('globalClusterMembers');
    this.globalClusterResourceId = registerOutput<String>('globalClusterResourceId');
    this.region = registerOutput<String>('region');
    this.sourceDbClusterIdentifier = registerOutput<String>('sourceDbClusterIdentifier');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [GlobalCluster] resource's state with the given [name] and [id].
  static GlobalCluster get(
    String name,
    pulumi.Input<String> id, {
    GlobalClusterState? state,
  }) {
    return GlobalCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GlobalCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/globalCluster:GlobalCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.databaseName = registerOutput<String>('databaseName');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.endpoint = registerOutput<String>('endpoint');
    this.engine = registerOutput<String>('engine');
    this.engineLifecycleSupport = registerOutput<String>('engineLifecycleSupport');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.engineVersionActual = registerOutput<String>('engineVersionActual');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.globalClusterIdentifier = registerOutput<String>('globalClusterIdentifier');
    this.globalClusterMembers = registerOutput<List<GlobalClusterGlobalClusterMember>>('globalClusterMembers');
    this.globalClusterResourceId = registerOutput<String>('globalClusterResourceId');
    this.region = registerOutput<String>('region');
    this.sourceDbClusterIdentifier = registerOutput<String>('sourceDbClusterIdentifier');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
