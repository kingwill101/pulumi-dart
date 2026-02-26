import 'package:pulumi/pulumi.dart';
import '../global_cluster_global_cluster_member/global_cluster_global_cluster_member3.dart';
import 'global_cluster_args3.dart';

/// Manages an RDS Global Cluster, which is an Aurora global database spread across multiple regions. The global database contains a single primary cluster with read-write capability, and a read-only secondary cluster that receives data from the primary cluster through high-speed replication performed by the Aurora storage subsystem.
///
/// More information about Aurora global databases can be found in the [Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html#aurora-global-database-creating).
///
/// ## Example Usage
///
/// ### New MySQL Global Cluster
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.GlobalCluster("example", {
/// globalClusterIdentifier: "global-test",
/// engine: "aurora",
/// engineVersion: "5.6.mysql_aurora.1.22.2",
/// databaseName: "example_db",
/// });
/// const primary = new aws.rds.Cluster("primary", {
/// engine: example.engine,
/// engineVersion: example.engineVersion,
/// clusterIdentifier: "test-primary-cluster",
/// masterUsername: "username",
/// masterPassword: "somepass123",
/// databaseName: "example_db",
/// globalClusterIdentifier: example.id,
/// dbSubnetGroupName: "default",
/// });
/// const primaryClusterInstance = new aws.rds.ClusterInstance("primary", {
/// engine: example.engine.apply((x) => aws.rds.EngineType[x]),
/// engineVersion: example.engineVersion,
/// identifier: "test-primary-cluster-instance",
/// clusterIdentifier: primary.id,
/// instanceClass: aws.rds.InstanceType.R4_Large,
/// dbSubnetGroupName: "default",
/// });
/// const secondary = new aws.rds.Cluster("secondary", {
/// engine: example.engine,
/// engineVersion: example.engineVersion,
/// clusterIdentifier: "test-secondary-cluster",
/// globalClusterIdentifier: example.id,
/// dbSubnetGroupName: "default",
/// }, {
/// dependsOn: [primaryClusterInstance],
/// });
/// const secondaryClusterInstance = new aws.rds.ClusterInstance("secondary", {
/// engine: example.engine.apply((x) => aws.rds.EngineType[x]),
/// engineVersion: example.engineVersion,
/// identifier: "test-secondary-cluster-instance",
/// clusterIdentifier: secondary.id,
/// instanceClass: aws.rds.InstanceType.R4_Large,
/// dbSubnetGroupName: "default",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.GlobalCluster("example",
/// global_cluster_identifier="global-test",
/// engine="aurora",
/// engine_version="5.6.mysql_aurora.1.22.2",
/// database_name="example_db")
/// primary = aws.rds.Cluster("primary",
/// engine=example.engine,
/// engine_version=example.engine_version,
/// cluster_identifier="test-primary-cluster",
/// master_username="username",
/// master_password="somepass123",
/// database_name="example_db",
/// global_cluster_identifier=example.id,
/// db_subnet_group_name="default")
/// primary_cluster_instance = aws.rds.ClusterInstance("primary",
/// engine=example.engine.apply(lambda x: aws.rds.EngineType(x)),
/// engine_version=example.engine_version,
/// identifier="test-primary-cluster-instance",
/// cluster_identifier=primary.id,
/// instance_class=aws.rds.InstanceType.R4_LARGE,
/// db_subnet_group_name="default")
/// secondary = aws.rds.Cluster("secondary",
/// engine=example.engine,
/// engine_version=example.engine_version,
/// cluster_identifier="test-secondary-cluster",
/// global_cluster_identifier=example.id,
/// db_subnet_group_name="default",
/// opts = pulumi.ResourceOptions(depends_on=[primary_cluster_instance]))
/// secondary_cluster_instance = aws.rds.ClusterInstance("secondary",
/// engine=example.engine.apply(lambda x: aws.rds.EngineType(x)),
/// engine_version=example.engine_version,
/// identifier="test-secondary-cluster-instance",
/// cluster_identifier=secondary.id,
/// instance_class=aws.rds.InstanceType.R4_LARGE,
/// db_subnet_group_name="default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Rds.GlobalCluster("example", new()
/// {
/// GlobalClusterIdentifier = "global-test",
/// Engine = "aurora",
/// EngineVersion = "5.6.mysql_aurora.1.22.2",
/// DatabaseName = "example_db",
/// });
///
/// var primary = new Aws.Rds.Cluster("primary", new()
/// {
/// Engine = example.Engine,
/// EngineVersion = example.EngineVersion,
/// ClusterIdentifier = "test-primary-cluster",
/// MasterUsername = "username",
/// MasterPassword = "somepass123",
/// DatabaseName = "example_db",
/// GlobalClusterIdentifier = example.Id,
/// DbSubnetGroupName = "default",
/// });
///
/// var primaryClusterInstance = new Aws.Rds.ClusterInstance("primary", new()
/// {
/// Engine = example.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
/// EngineVersion = example.EngineVersion,
/// Identifier = "test-primary-cluster-instance",
/// ClusterIdentifier = primary.Id,
/// InstanceClass = Aws.Rds.InstanceType.R4_Large,
/// DbSubnetGroupName = "default",
/// });
///
/// var secondary = new Aws.Rds.Cluster("secondary", new()
/// {
/// Engine = example.Engine,
/// EngineVersion = example.EngineVersion,
/// ClusterIdentifier = "test-secondary-cluster",
/// GlobalClusterIdentifier = example.Id,
/// DbSubnetGroupName = "default",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// primaryClusterInstance,
/// },
/// });
///
/// var secondaryClusterInstance = new Aws.Rds.ClusterInstance("secondary", new()
/// {
/// Engine = example.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
/// EngineVersion = example.EngineVersion,
/// Identifier = "test-secondary-cluster-instance",
/// ClusterIdentifier = secondary.Id,
/// InstanceClass = Aws.Rds.InstanceType.R4_Large,
/// DbSubnetGroupName = "default",
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
/// example, err := rds.NewGlobalCluster(ctx, "example", &rds.GlobalClusterArgs{
/// GlobalClusterIdentifier: pulumi.String("global-test"),
/// Engine:                  pulumi.String("aurora"),
/// EngineVersion:           pulumi.String("5.6.mysql_aurora.1.22.2"),
/// DatabaseName:            pulumi.String("example_db"),
/// })
/// if err != nil {
/// return err
/// }
/// primary, err := rds.NewCluster(ctx, "primary", &rds.ClusterArgs{
/// Engine:                  example.Engine,
/// EngineVersion:           example.EngineVersion,
/// ClusterIdentifier:       pulumi.String("test-primary-cluster"),
/// MasterUsername:          pulumi.String("username"),
/// MasterPassword:          pulumi.String("somepass123"),
/// DatabaseName:            pulumi.String("example_db"),
/// GlobalClusterIdentifier: example.ID(),
/// DbSubnetGroupName:       pulumi.String("default"),
/// })
/// if err != nil {
/// return err
/// }
/// primaryClusterInstance, err := rds.NewClusterInstance(ctx, "primary", &rds.ClusterInstanceArgs{
/// Engine:            example.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// EngineVersion:     example.EngineVersion,
/// Identifier:        pulumi.String("test-primary-cluster-instance"),
/// ClusterIdentifier: primary.ID(),
/// InstanceClass:     pulumi.String(rds.InstanceType_R4_Large),
/// DbSubnetGroupName: pulumi.String("default"),
/// })
/// if err != nil {
/// return err
/// }
/// secondary, err := rds.NewCluster(ctx, "secondary", &rds.ClusterArgs{
/// Engine:                  example.Engine,
/// EngineVersion:           example.EngineVersion,
/// ClusterIdentifier:       pulumi.String("test-secondary-cluster"),
/// GlobalClusterIdentifier: example.ID(),
/// DbSubnetGroupName:       pulumi.String("default"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// primaryClusterInstance,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = rds.NewClusterInstance(ctx, "secondary", &rds.ClusterInstanceArgs{
/// Engine:            example.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// EngineVersion:     example.EngineVersion,
/// Identifier:        pulumi.String("test-secondary-cluster-instance"),
/// ClusterIdentifier: secondary.ID(),
/// InstanceClass:     pulumi.String(rds.InstanceType_R4_Large),
/// DbSubnetGroupName: pulumi.String("default"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new GlobalCluster("example", GlobalClusterArgs.builder()
/// .globalClusterIdentifier("global-test")
/// .engine("aurora")
/// .engineVersion("5.6.mysql_aurora.1.22.2")
/// .databaseName("example_db")
/// .build());
///
/// var primary = new Cluster("primary", ClusterArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .clusterIdentifier("test-primary-cluster")
/// .masterUsername("username")
/// .masterPassword("somepass123")
/// .databaseName("example_db")
/// .globalClusterIdentifier(example.id())
/// .dbSubnetGroupName("default")
/// .build());
///
/// var primaryClusterInstance = new ClusterInstance("primaryClusterInstance", ClusterInstanceArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .identifier("test-primary-cluster-instance")
/// .clusterIdentifier(primary.id())
/// .instanceClass("db.r4.large")
/// .dbSubnetGroupName("default")
/// .build());
///
/// var secondary = new Cluster("secondary", ClusterArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .clusterIdentifier("test-secondary-cluster")
/// .globalClusterIdentifier(example.id())
/// .dbSubnetGroupName("default")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(primaryClusterInstance)
/// .build());
///
/// var secondaryClusterInstance = new ClusterInstance("secondaryClusterInstance", ClusterInstanceArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .identifier("test-secondary-cluster-instance")
/// .clusterIdentifier(secondary.id())
/// .instanceClass("db.r4.large")
/// .dbSubnetGroupName("default")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rds:GlobalCluster
/// properties:
/// globalClusterIdentifier: global-test
/// engine: aurora
/// engineVersion: 5.6.mysql_aurora.1.22.2
/// databaseName: example_db
/// primary:
/// type: aws:rds:Cluster
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// clusterIdentifier: test-primary-cluster
/// masterUsername: username
/// masterPassword: somepass123
/// databaseName: example_db
/// globalClusterIdentifier: ${example.id}
/// dbSubnetGroupName: default
/// primaryClusterInstance:
/// type: aws:rds:ClusterInstance
/// name: primary
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// identifier: test-primary-cluster-instance
/// clusterIdentifier: ${primary.id}
/// instanceClass: db.r4.large
/// dbSubnetGroupName: default
/// secondary:
/// type: aws:rds:Cluster
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// clusterIdentifier: test-secondary-cluster
/// globalClusterIdentifier: ${example.id}
/// dbSubnetGroupName: default
/// options:
/// dependsOn:
/// - ${primaryClusterInstance}
/// secondaryClusterInstance:
/// type: aws:rds:ClusterInstance
/// name: secondary
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// identifier: test-secondary-cluster-instance
/// clusterIdentifier: ${secondary.id}
/// instanceClass: db.r4.large
/// dbSubnetGroupName: default
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### New PostgreSQL Global Cluster
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.GlobalCluster("example", {
/// globalClusterIdentifier: "global-test",
/// engine: "aurora-postgresql",
/// engineVersion: "11.9",
/// databaseName: "example_db",
/// });
/// const primary = new aws.rds.Cluster("primary", {
/// engine: example.engine,
/// engineVersion: example.engineVersion,
/// clusterIdentifier: "test-primary-cluster",
/// masterUsername: "username",
/// masterPassword: "somepass123",
/// databaseName: "example_db",
/// globalClusterIdentifier: example.id,
/// dbSubnetGroupName: "default",
/// });
/// const primaryClusterInstance = new aws.rds.ClusterInstance("primary", {
/// engine: example.engine.apply((x) => aws.rds.EngineType[x]),
/// engineVersion: example.engineVersion,
/// identifier: "test-primary-cluster-instance",
/// clusterIdentifier: primary.id,
/// instanceClass: aws.rds.InstanceType.R4_Large,
/// dbSubnetGroupName: "default",
/// });
/// const secondary = new aws.rds.Cluster("secondary", {
/// engine: example.engine,
/// engineVersion: example.engineVersion,
/// clusterIdentifier: "test-secondary-cluster",
/// globalClusterIdentifier: example.id,
/// skipFinalSnapshot: true,
/// dbSubnetGroupName: "default",
/// }, {
/// dependsOn: [primaryClusterInstance],
/// });
/// const secondaryClusterInstance = new aws.rds.ClusterInstance("secondary", {
/// engine: example.engine.apply((x) => aws.rds.EngineType[x]),
/// engineVersion: example.engineVersion,
/// identifier: "test-secondary-cluster-instance",
/// clusterIdentifier: secondary.id,
/// instanceClass: aws.rds.InstanceType.R4_Large,
/// dbSubnetGroupName: "default",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.GlobalCluster("example",
/// global_cluster_identifier="global-test",
/// engine="aurora-postgresql",
/// engine_version="11.9",
/// database_name="example_db")
/// primary = aws.rds.Cluster("primary",
/// engine=example.engine,
/// engine_version=example.engine_version,
/// cluster_identifier="test-primary-cluster",
/// master_username="username",
/// master_password="somepass123",
/// database_name="example_db",
/// global_cluster_identifier=example.id,
/// db_subnet_group_name="default")
/// primary_cluster_instance = aws.rds.ClusterInstance("primary",
/// engine=example.engine.apply(lambda x: aws.rds.EngineType(x)),
/// engine_version=example.engine_version,
/// identifier="test-primary-cluster-instance",
/// cluster_identifier=primary.id,
/// instance_class=aws.rds.InstanceType.R4_LARGE,
/// db_subnet_group_name="default")
/// secondary = aws.rds.Cluster("secondary",
/// engine=example.engine,
/// engine_version=example.engine_version,
/// cluster_identifier="test-secondary-cluster",
/// global_cluster_identifier=example.id,
/// skip_final_snapshot=True,
/// db_subnet_group_name="default",
/// opts = pulumi.ResourceOptions(depends_on=[primary_cluster_instance]))
/// secondary_cluster_instance = aws.rds.ClusterInstance("secondary",
/// engine=example.engine.apply(lambda x: aws.rds.EngineType(x)),
/// engine_version=example.engine_version,
/// identifier="test-secondary-cluster-instance",
/// cluster_identifier=secondary.id,
/// instance_class=aws.rds.InstanceType.R4_LARGE,
/// db_subnet_group_name="default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Rds.GlobalCluster("example", new()
/// {
/// GlobalClusterIdentifier = "global-test",
/// Engine = "aurora-postgresql",
/// EngineVersion = "11.9",
/// DatabaseName = "example_db",
/// });
///
/// var primary = new Aws.Rds.Cluster("primary", new()
/// {
/// Engine = example.Engine,
/// EngineVersion = example.EngineVersion,
/// ClusterIdentifier = "test-primary-cluster",
/// MasterUsername = "username",
/// MasterPassword = "somepass123",
/// DatabaseName = "example_db",
/// GlobalClusterIdentifier = example.Id,
/// DbSubnetGroupName = "default",
/// });
///
/// var primaryClusterInstance = new Aws.Rds.ClusterInstance("primary", new()
/// {
/// Engine = example.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
/// EngineVersion = example.EngineVersion,
/// Identifier = "test-primary-cluster-instance",
/// ClusterIdentifier = primary.Id,
/// InstanceClass = Aws.Rds.InstanceType.R4_Large,
/// DbSubnetGroupName = "default",
/// });
///
/// var secondary = new Aws.Rds.Cluster("secondary", new()
/// {
/// Engine = example.Engine,
/// EngineVersion = example.EngineVersion,
/// ClusterIdentifier = "test-secondary-cluster",
/// GlobalClusterIdentifier = example.Id,
/// SkipFinalSnapshot = true,
/// DbSubnetGroupName = "default",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// primaryClusterInstance,
/// },
/// });
///
/// var secondaryClusterInstance = new Aws.Rds.ClusterInstance("secondary", new()
/// {
/// Engine = example.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
/// EngineVersion = example.EngineVersion,
/// Identifier = "test-secondary-cluster-instance",
/// ClusterIdentifier = secondary.Id,
/// InstanceClass = Aws.Rds.InstanceType.R4_Large,
/// DbSubnetGroupName = "default",
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
/// example, err := rds.NewGlobalCluster(ctx, "example", &rds.GlobalClusterArgs{
/// GlobalClusterIdentifier: pulumi.String("global-test"),
/// Engine:                  pulumi.String("aurora-postgresql"),
/// EngineVersion:           pulumi.String("11.9"),
/// DatabaseName:            pulumi.String("example_db"),
/// })
/// if err != nil {
/// return err
/// }
/// primary, err := rds.NewCluster(ctx, "primary", &rds.ClusterArgs{
/// Engine:                  example.Engine,
/// EngineVersion:           example.EngineVersion,
/// ClusterIdentifier:       pulumi.String("test-primary-cluster"),
/// MasterUsername:          pulumi.String("username"),
/// MasterPassword:          pulumi.String("somepass123"),
/// DatabaseName:            pulumi.String("example_db"),
/// GlobalClusterIdentifier: example.ID(),
/// DbSubnetGroupName:       pulumi.String("default"),
/// })
/// if err != nil {
/// return err
/// }
/// primaryClusterInstance, err := rds.NewClusterInstance(ctx, "primary", &rds.ClusterInstanceArgs{
/// Engine:            example.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// EngineVersion:     example.EngineVersion,
/// Identifier:        pulumi.String("test-primary-cluster-instance"),
/// ClusterIdentifier: primary.ID(),
/// InstanceClass:     pulumi.String(rds.InstanceType_R4_Large),
/// DbSubnetGroupName: pulumi.String("default"),
/// })
/// if err != nil {
/// return err
/// }
/// secondary, err := rds.NewCluster(ctx, "secondary", &rds.ClusterArgs{
/// Engine:                  example.Engine,
/// EngineVersion:           example.EngineVersion,
/// ClusterIdentifier:       pulumi.String("test-secondary-cluster"),
/// GlobalClusterIdentifier: example.ID(),
/// SkipFinalSnapshot:       pulumi.Bool(true),
/// DbSubnetGroupName:       pulumi.String("default"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// primaryClusterInstance,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = rds.NewClusterInstance(ctx, "secondary", &rds.ClusterInstanceArgs{
/// Engine:            example.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// EngineVersion:     example.EngineVersion,
/// Identifier:        pulumi.String("test-secondary-cluster-instance"),
/// ClusterIdentifier: secondary.ID(),
/// InstanceClass:     pulumi.String(rds.InstanceType_R4_Large),
/// DbSubnetGroupName: pulumi.String("default"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new GlobalCluster("example", GlobalClusterArgs.builder()
/// .globalClusterIdentifier("global-test")
/// .engine("aurora-postgresql")
/// .engineVersion("11.9")
/// .databaseName("example_db")
/// .build());
///
/// var primary = new Cluster("primary", ClusterArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .clusterIdentifier("test-primary-cluster")
/// .masterUsername("username")
/// .masterPassword("somepass123")
/// .databaseName("example_db")
/// .globalClusterIdentifier(example.id())
/// .dbSubnetGroupName("default")
/// .build());
///
/// var primaryClusterInstance = new ClusterInstance("primaryClusterInstance", ClusterInstanceArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .identifier("test-primary-cluster-instance")
/// .clusterIdentifier(primary.id())
/// .instanceClass("db.r4.large")
/// .dbSubnetGroupName("default")
/// .build());
///
/// var secondary = new Cluster("secondary", ClusterArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .clusterIdentifier("test-secondary-cluster")
/// .globalClusterIdentifier(example.id())
/// .skipFinalSnapshot(true)
/// .dbSubnetGroupName("default")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(primaryClusterInstance)
/// .build());
///
/// var secondaryClusterInstance = new ClusterInstance("secondaryClusterInstance", ClusterInstanceArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .identifier("test-secondary-cluster-instance")
/// .clusterIdentifier(secondary.id())
/// .instanceClass("db.r4.large")
/// .dbSubnetGroupName("default")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rds:GlobalCluster
/// properties:
/// globalClusterIdentifier: global-test
/// engine: aurora-postgresql
/// engineVersion: '11.9'
/// databaseName: example_db
/// primary:
/// type: aws:rds:Cluster
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// clusterIdentifier: test-primary-cluster
/// masterUsername: username
/// masterPassword: somepass123
/// databaseName: example_db
/// globalClusterIdentifier: ${example.id}
/// dbSubnetGroupName: default
/// primaryClusterInstance:
/// type: aws:rds:ClusterInstance
/// name: primary
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// identifier: test-primary-cluster-instance
/// clusterIdentifier: ${primary.id}
/// instanceClass: db.r4.large
/// dbSubnetGroupName: default
/// secondary:
/// type: aws:rds:Cluster
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// clusterIdentifier: test-secondary-cluster
/// globalClusterIdentifier: ${example.id}
/// skipFinalSnapshot: true
/// dbSubnetGroupName: default
/// options:
/// dependsOn:
/// - ${primaryClusterInstance}
/// secondaryClusterInstance:
/// type: aws:rds:ClusterInstance
/// name: secondary
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// identifier: test-secondary-cluster-instance
/// clusterIdentifier: ${secondary.id}
/// instanceClass: db.r4.large
/// dbSubnetGroupName: default
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### New Global Cluster From Existing DB Cluster
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Cluster("example", {});
/// const exampleGlobalCluster = new aws.rds.GlobalCluster("example", {
/// forceDestroy: true,
/// globalClusterIdentifier: "example",
/// sourceDbClusterIdentifier: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Cluster("example")
/// example_global_cluster = aws.rds.GlobalCluster("example",
/// force_destroy=True,
/// global_cluster_identifier="example",
/// source_db_cluster_identifier=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Rds.Cluster("example");
///
/// var exampleGlobalCluster = new Aws.Rds.GlobalCluster("example", new()
/// {
/// ForceDestroy = true,
/// GlobalClusterIdentifier = "example",
/// SourceDbClusterIdentifier = example.Arn,
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
/// example, err := rds.NewCluster(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = rds.NewGlobalCluster(ctx, "example", &rds.GlobalClusterArgs{
/// ForceDestroy:              pulumi.Bool(true),
/// GlobalClusterIdentifier:   pulumi.String("example"),
/// SourceDbClusterIdentifier: example.Arn,
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
/// var example = new Cluster("example");
///
/// var exampleGlobalCluster = new GlobalCluster("exampleGlobalCluster", GlobalClusterArgs.builder()
/// .forceDestroy(true)
/// .globalClusterIdentifier("example")
/// .sourceDbClusterIdentifier(example.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rds:Cluster
/// exampleGlobalCluster:
/// type: aws:rds:GlobalCluster
/// name: example
/// properties:
/// forceDestroy: true
/// globalClusterIdentifier: example
/// sourceDbClusterIdentifier: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Upgrading Engine Versions
///
/// When you upgrade the version of an <span pulumi-lang-nodejs="`aws.rds.GlobalCluster`" pulumi-lang-dotnet="`aws.rds.GlobalCluster`" pulumi-lang-go="`rds.GlobalCluster`" pulumi-lang-python="`rds.GlobalCluster`" pulumi-lang-yaml="`aws.rds.GlobalCluster`" pulumi-lang-java="`aws.rds.GlobalCluster`">`aws.rds.GlobalCluster`</span>, the provider will attempt to in-place upgrade the engine versions of all associated clusters. Since the <span pulumi-lang-nodejs="`aws.rds.Cluster`" pulumi-lang-dotnet="`aws.rds.Cluster`" pulumi-lang-go="`rds.Cluster`" pulumi-lang-python="`rds.Cluster`" pulumi-lang-yaml="`aws.rds.Cluster`" pulumi-lang-java="`aws.rds.Cluster`">`aws.rds.Cluster`</span> resource is being updated through the <span pulumi-lang-nodejs="`aws.rds.GlobalCluster`" pulumi-lang-dotnet="`aws.rds.GlobalCluster`" pulumi-lang-go="`rds.GlobalCluster`" pulumi-lang-python="`rds.GlobalCluster`" pulumi-lang-yaml="`aws.rds.GlobalCluster`" pulumi-lang-java="`aws.rds.GlobalCluster`">`aws.rds.GlobalCluster`</span>, you are likely to get an error (`Provider produced inconsistent final plan`). To avoid this, use the <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> meta argument as shown below on the <span pulumi-lang-nodejs="`aws.rds.Cluster`" pulumi-lang-dotnet="`aws.rds.Cluster`" pulumi-lang-go="`rds.Cluster`" pulumi-lang-python="`rds.Cluster`" pulumi-lang-yaml="`aws.rds.Cluster`" pulumi-lang-java="`aws.rds.Cluster`">`aws.rds.Cluster`</span>.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.GlobalCluster("example", {
/// globalClusterIdentifier: "kyivkharkiv",
/// engine: "aurora-mysql",
/// engineVersion: "5.7.mysql_aurora.2.07.5",
/// });
/// const primary = new aws.rds.Cluster("primary", {
/// allowMajorVersionUpgrade: true,
/// applyImmediately: true,
/// clusterIdentifier: "odessadnipro",
/// databaseName: "totoro",
/// engine: example.engine,
/// engineVersion: example.engineVersion,
/// globalClusterIdentifier: example.id,
/// masterPassword: "satsukimae",
/// masterUsername: "maesatsuki",
/// skipFinalSnapshot: true,
/// });
/// const primaryClusterInstance = new aws.rds.ClusterInstance("primary", {
/// applyImmediately: true,
/// clusterIdentifier: primary.id,
/// engine: primary.engine.apply((x) => aws.rds.EngineType[x]),
/// engineVersion: primary.engineVersion,
/// identifier: "donetsklviv",
/// instanceClass: aws.rds.InstanceType.R4_Large,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.GlobalCluster("example",
/// global_cluster_identifier="kyivkharkiv",
/// engine="aurora-mysql",
/// engine_version="5.7.mysql_aurora.2.07.5")
/// primary = aws.rds.Cluster("primary",
/// allow_major_version_upgrade=True,
/// apply_immediately=True,
/// cluster_identifier="odessadnipro",
/// database_name="totoro",
/// engine=example.engine,
/// engine_version=example.engine_version,
/// global_cluster_identifier=example.id,
/// master_password="satsukimae",
/// master_username="maesatsuki",
/// skip_final_snapshot=True)
/// primary_cluster_instance = aws.rds.ClusterInstance("primary",
/// apply_immediately=True,
/// cluster_identifier=primary.id,
/// engine=primary.engine.apply(lambda x: aws.rds.EngineType(x)),
/// engine_version=primary.engine_version,
/// identifier="donetsklviv",
/// instance_class=aws.rds.InstanceType.R4_LARGE)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Rds.GlobalCluster("example", new()
/// {
/// GlobalClusterIdentifier = "kyivkharkiv",
/// Engine = "aurora-mysql",
/// EngineVersion = "5.7.mysql_aurora.2.07.5",
/// });
///
/// var primary = new Aws.Rds.Cluster("primary", new()
/// {
/// AllowMajorVersionUpgrade = true,
/// ApplyImmediately = true,
/// ClusterIdentifier = "odessadnipro",
/// DatabaseName = "totoro",
/// Engine = example.Engine,
/// EngineVersion = example.EngineVersion,
/// GlobalClusterIdentifier = example.Id,
/// MasterPassword = "satsukimae",
/// MasterUsername = "maesatsuki",
/// SkipFinalSnapshot = true,
/// });
///
/// var primaryClusterInstance = new Aws.Rds.ClusterInstance("primary", new()
/// {
/// ApplyImmediately = true,
/// ClusterIdentifier = primary.Id,
/// Engine = primary.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
/// EngineVersion = primary.EngineVersion,
/// Identifier = "donetsklviv",
/// InstanceClass = Aws.Rds.InstanceType.R4_Large,
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
/// example, err := rds.NewGlobalCluster(ctx, "example", &rds.GlobalClusterArgs{
/// GlobalClusterIdentifier: pulumi.String("kyivkharkiv"),
/// Engine:                  pulumi.String("aurora-mysql"),
/// EngineVersion:           pulumi.String("5.7.mysql_aurora.2.07.5"),
/// })
/// if err != nil {
/// return err
/// }
/// primary, err := rds.NewCluster(ctx, "primary", &rds.ClusterArgs{
/// AllowMajorVersionUpgrade: pulumi.Bool(true),
/// ApplyImmediately:         pulumi.Bool(true),
/// ClusterIdentifier:        pulumi.String("odessadnipro"),
/// DatabaseName:             pulumi.String("totoro"),
/// Engine:                   example.Engine,
/// EngineVersion:            example.EngineVersion,
/// GlobalClusterIdentifier:  example.ID(),
/// MasterPassword:           pulumi.String("satsukimae"),
/// MasterUsername:           pulumi.String("maesatsuki"),
/// SkipFinalSnapshot:        pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = rds.NewClusterInstance(ctx, "primary", &rds.ClusterInstanceArgs{
/// ApplyImmediately:  pulumi.Bool(true),
/// ClusterIdentifier: primary.ID(),
/// Engine:            primary.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// EngineVersion:     primary.EngineVersion,
/// Identifier:        pulumi.String("donetsklviv"),
/// InstanceClass:     pulumi.String(rds.InstanceType_R4_Large),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new GlobalCluster("example", GlobalClusterArgs.builder()
/// .globalClusterIdentifier("kyivkharkiv")
/// .engine("aurora-mysql")
/// .engineVersion("5.7.mysql_aurora.2.07.5")
/// .build());
///
/// var primary = new Cluster("primary", ClusterArgs.builder()
/// .allowMajorVersionUpgrade(true)
/// .applyImmediately(true)
/// .clusterIdentifier("odessadnipro")
/// .databaseName("totoro")
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .globalClusterIdentifier(example.id())
/// .masterPassword("satsukimae")
/// .masterUsername("maesatsuki")
/// .skipFinalSnapshot(true)
/// .build());
///
/// var primaryClusterInstance = new ClusterInstance("primaryClusterInstance", ClusterInstanceArgs.builder()
/// .applyImmediately(true)
/// .clusterIdentifier(primary.id())
/// .engine(primary.engine())
/// .engineVersion(primary.engineVersion())
/// .identifier("donetsklviv")
/// .instanceClass("db.r4.large")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rds:GlobalCluster
/// properties:
/// globalClusterIdentifier: kyivkharkiv
/// engine: aurora-mysql
/// engineVersion: 5.7.mysql_aurora.2.07.5
/// primary:
/// type: aws:rds:Cluster
/// properties:
/// allowMajorVersionUpgrade: true
/// applyImmediately: true
/// clusterIdentifier: odessadnipro
/// databaseName: totoro
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// globalClusterIdentifier: ${example.id}
/// masterPassword: satsukimae
/// masterUsername: maesatsuki
/// skipFinalSnapshot: true
/// primaryClusterInstance:
/// type: aws:rds:ClusterInstance
/// name: primary
/// properties:
/// applyImmediately: true
/// clusterIdentifier: ${primary.id}
/// engine: ${primary.engine}
/// engineVersion: ${primary.engineVersion}
/// identifier: donetsklviv
/// instanceClass: db.r4.large
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.rds.GlobalCluster`" pulumi-lang-dotnet="`aws.rds.GlobalCluster`" pulumi-lang-go="`rds.GlobalCluster`" pulumi-lang-python="`rds.GlobalCluster`" pulumi-lang-yaml="`aws.rds.GlobalCluster`" pulumi-lang-java="`aws.rds.GlobalCluster`">`aws.rds.GlobalCluster`</span> using the RDS Global Cluster identifier. For example:
///
/// ```sh
/// $ pulumi import aws:rds/globalCluster:GlobalCluster example example
/// ```
///
/// Certain resource arguments, like <span pulumi-lang-nodejs="`forceDestroy`" pulumi-lang-dotnet="`ForceDestroy`" pulumi-lang-go="`forceDestroy`" pulumi-lang-python="`force_destroy`" pulumi-lang-yaml="`forceDestroy`" pulumi-lang-java="`forceDestroy`">`force_destroy`</span>, only exist within this provider. If the argument is set in the the provider configuration on an imported resource, This provider will show a difference on the first plan after import to update the state value. This change is safe to apply immediately so the state matches the desired configuration.
///
/// Certain resource arguments, like <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span>, do not have an API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> to hide the difference. For example:
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.Rds.GlobalCluster("example");
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
/// _, err := rds.NewGlobalCluster(ctx, "example", nil)
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
/// import com.pulumi.aws.rds.GlobalCluster;
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
/// var example = new GlobalCluster("example");
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rds:GlobalCluster
/// ```
/// <!--End PulumiCodeChooser -->
class GlobalCluster3 extends CustomResource {
  /// RDS Global Cluster Amazon Resource Name (ARN).
  late final Output<String> arn;

  /// Name for an automatically created database on cluster creation. Pulumi will only perform drift detection if a configuration value is provided.
  late final Output<String> databaseName;

  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> deletionProtection;

  /// Writer endpoint for the new global database cluster. This endpoint always points to the writer DB instance in the current primary cluster.
  late final Output<String> endpoint;

  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Valid values: <span pulumi-lang-nodejs="`aurora`" pulumi-lang-dotnet="`Aurora`" pulumi-lang-go="`aurora`" pulumi-lang-python="`aurora`" pulumi-lang-yaml="`aurora`" pulumi-lang-java="`aurora`">`aurora`</span>, `aurora-mysql`, `aurora-postgresql`. Defaults to <span pulumi-lang-nodejs="`aurora`" pulumi-lang-dotnet="`Aurora`" pulumi-lang-go="`aurora`" pulumi-lang-python="`aurora`" pulumi-lang-yaml="`aurora`" pulumi-lang-java="`aurora`">`aurora`</span>. Conflicts with <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span>.
  late final Output<String> engine;

  /// The life cycle type for this DB instance. This setting applies only to Aurora PostgreSQL-based global databases. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  late final Output<String> engineLifecycleSupport;

  /// Engine version of the Aurora global database. The <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span>, <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span>, and <span pulumi-lang-nodejs="`instanceClass`" pulumi-lang-dotnet="`InstanceClass`" pulumi-lang-go="`instanceClass`" pulumi-lang-python="`instance_class`" pulumi-lang-yaml="`instanceClass`" pulumi-lang-java="`instanceClass`">`instance_class`</span> (on the <span pulumi-lang-nodejs="`aws.rds.ClusterInstance`" pulumi-lang-dotnet="`aws.rds.ClusterInstance`" pulumi-lang-go="`rds.ClusterInstance`" pulumi-lang-python="`rds.ClusterInstance`" pulumi-lang-yaml="`aws.rds.ClusterInstance`" pulumi-lang-java="`aws.rds.ClusterInstance`">`aws.rds.ClusterInstance`</span>) must together support global databases. See [Using Amazon Aurora global databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html) for more information. By upgrading the engine version, the provider will upgrade cluster members. **NOTE:** To avoid an `inconsistent final plan` error while upgrading, use the <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> for <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> meta argument on the associated <span pulumi-lang-nodejs="`aws.rds.Cluster`" pulumi-lang-dotnet="`aws.rds.Cluster`" pulumi-lang-go="`rds.Cluster`" pulumi-lang-python="`rds.Cluster`" pulumi-lang-yaml="`aws.rds.Cluster`" pulumi-lang-java="`aws.rds.Cluster`">`aws.rds.Cluster`</span> resource as shown above in Upgrading Engine Versions example.
  late final Output<String> engineVersion;
  late final Output<String> engineVersionActual;

  /// Enable to remove DB Cluster members from Global Cluster on destroy. Required with <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span>.
  late final Output<bool?> forceDestroy;

  /// Global cluster identifier.
  ///
  /// The following arguments are optional:
  late final Output<String> globalClusterIdentifier;

  /// Set of objects containing Global Cluster members.
  late final Output<List<GlobalClusterGlobalClusterMember3>>
      globalClusterMembers;

  /// AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  late final Output<String> globalClusterResourceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value. **NOTE:** After initial creation, this argument can be removed and replaced with <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span> and <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span>. This allows upgrading the engine version of the Global Cluster.
  late final Output<String> sourceDbClusterIdentifier;

  /// Specifies whether the DB cluster is encrypted. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> unless <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span> is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  late final Output<bool> storageEncrypted;

  /// A map of tags to assign to the DB cluster. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > When both <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span> and <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span>/<span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> are set, all engine related values will be ignored during creation. The global cluster will inherit the <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span> and <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> values from the source cluster. After the first apply, any differences between the inherited and configured values will trigger an in-place update.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  GlobalCluster3(
    String name, {
    GlobalClusterArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/globalCluster:GlobalCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.databaseName = registerOutput<String>('databaseName');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.endpoint = registerOutput<String>('endpoint');
    this.engine = registerOutput<String>('engine');
    this.engineLifecycleSupport =
        registerOutput<String>('engineLifecycleSupport');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.engineVersionActual = registerOutput<String>('engineVersionActual');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.globalClusterIdentifier =
        registerOutput<String>('globalClusterIdentifier');
    this.globalClusterMembers =
        registerOutput<List<GlobalClusterGlobalClusterMember3>>(
            'globalClusterMembers');
    this.globalClusterResourceId =
        registerOutput<String>('globalClusterResourceId');
    this.region = registerOutput<String>('region');
    this.sourceDbClusterIdentifier =
        registerOutput<String>('sourceDbClusterIdentifier');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
