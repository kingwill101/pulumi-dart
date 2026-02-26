import 'package:pulumi/pulumi.dart';
import '../global_cluster_global_cluster_member/global_cluster_global_cluster_member.dart';
import 'global_cluster_args.dart';

/// Manages an DocumentDB Global Cluster. A global cluster consists of one primary region and up to five read-only secondary regions. You issue write operations directly to the primary cluster in the primary region and Amazon DocumentDB automatically replicates the data to the secondary regions using dedicated infrastructure.
///
/// More information about DocumentDB Global Clusters can be found in the [DocumentDB Developer Guide](https://docs.aws.amazon.com/documentdb/latest/developerguide/global-clusters.html).
///
/// ## Example Usage
///
/// ### New DocumentDB Global Cluster
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.docdb.GlobalCluster("example", {
/// globalClusterIdentifier: "global-test",
/// engine: "docdb",
/// engineVersion: "4.0.0",
/// });
/// const primary = new aws.docdb.Cluster("primary", {
/// engine: example.engine,
/// engineVersion: example.engineVersion,
/// clusterIdentifier: "test-primary-cluster",
/// masterUsername: "username",
/// masterPassword: "somepass123",
/// globalClusterIdentifier: example.id,
/// dbSubnetGroupName: "default",
/// });
/// const primaryClusterInstance = new aws.docdb.ClusterInstance("primary", {
/// engine: example.engine,
/// identifier: "test-primary-cluster-instance",
/// clusterIdentifier: primary.id,
/// instanceClass: "db.r5.large",
/// });
/// const secondary = new aws.docdb.Cluster("secondary", {
/// engine: example.engine,
/// engineVersion: example.engineVersion,
/// clusterIdentifier: "test-secondary-cluster",
/// globalClusterIdentifier: example.id,
/// dbSubnetGroupName: "default",
/// }, {
/// dependsOn: [primary],
/// });
/// const secondaryClusterInstance = new aws.docdb.ClusterInstance("secondary", {
/// engine: example.engine,
/// identifier: "test-secondary-cluster-instance",
/// clusterIdentifier: secondary.id,
/// instanceClass: "db.r5.large",
/// }, {
/// dependsOn: [primaryClusterInstance],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.docdb.GlobalCluster("example",
/// global_cluster_identifier="global-test",
/// engine="docdb",
/// engine_version="4.0.0")
/// primary = aws.docdb.Cluster("primary",
/// engine=example.engine,
/// engine_version=example.engine_version,
/// cluster_identifier="test-primary-cluster",
/// master_username="username",
/// master_password="somepass123",
/// global_cluster_identifier=example.id,
/// db_subnet_group_name="default")
/// primary_cluster_instance = aws.docdb.ClusterInstance("primary",
/// engine=example.engine,
/// identifier="test-primary-cluster-instance",
/// cluster_identifier=primary.id,
/// instance_class="db.r5.large")
/// secondary = aws.docdb.Cluster("secondary",
/// engine=example.engine,
/// engine_version=example.engine_version,
/// cluster_identifier="test-secondary-cluster",
/// global_cluster_identifier=example.id,
/// db_subnet_group_name="default",
/// opts = pulumi.ResourceOptions(depends_on=[primary]))
/// secondary_cluster_instance = aws.docdb.ClusterInstance("secondary",
/// engine=example.engine,
/// identifier="test-secondary-cluster-instance",
/// cluster_identifier=secondary.id,
/// instance_class="db.r5.large",
/// opts = pulumi.ResourceOptions(depends_on=[primary_cluster_instance]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DocDB.GlobalCluster("example", new()
/// {
/// GlobalClusterIdentifier = "global-test",
/// Engine = "docdb",
/// EngineVersion = "4.0.0",
/// });
///
/// var primary = new Aws.DocDB.Cluster("primary", new()
/// {
/// Engine = example.Engine,
/// EngineVersion = example.EngineVersion,
/// ClusterIdentifier = "test-primary-cluster",
/// MasterUsername = "username",
/// MasterPassword = "somepass123",
/// GlobalClusterIdentifier = example.Id,
/// DbSubnetGroupName = "default",
/// });
///
/// var primaryClusterInstance = new Aws.DocDB.ClusterInstance("primary", new()
/// {
/// Engine = example.Engine,
/// Identifier = "test-primary-cluster-instance",
/// ClusterIdentifier = primary.Id,
/// InstanceClass = "db.r5.large",
/// });
///
/// var secondary = new Aws.DocDB.Cluster("secondary", new()
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
/// primary,
/// },
/// });
///
/// var secondaryClusterInstance = new Aws.DocDB.ClusterInstance("secondary", new()
/// {
/// Engine = example.Engine,
/// Identifier = "test-secondary-cluster-instance",
/// ClusterIdentifier = secondary.Id,
/// InstanceClass = "db.r5.large",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// primaryClusterInstance,
/// },
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
/// example, err := docdb.NewGlobalCluster(ctx, "example", &docdb.GlobalClusterArgs{
/// GlobalClusterIdentifier: pulumi.String("global-test"),
/// Engine:                  pulumi.String("docdb"),
/// EngineVersion:           pulumi.String("4.0.0"),
/// })
/// if err != nil {
/// return err
/// }
/// primary, err := docdb.NewCluster(ctx, "primary", &docdb.ClusterArgs{
/// Engine:                  example.Engine,
/// EngineVersion:           example.EngineVersion,
/// ClusterIdentifier:       pulumi.String("test-primary-cluster"),
/// MasterUsername:          pulumi.String("username"),
/// MasterPassword:          pulumi.String("somepass123"),
/// GlobalClusterIdentifier: example.ID(),
/// DbSubnetGroupName:       pulumi.String("default"),
/// })
/// if err != nil {
/// return err
/// }
/// primaryClusterInstance, err := docdb.NewClusterInstance(ctx, "primary", &docdb.ClusterInstanceArgs{
/// Engine:            example.Engine,
/// Identifier:        pulumi.String("test-primary-cluster-instance"),
/// ClusterIdentifier: primary.ID(),
/// InstanceClass:     pulumi.String("db.r5.large"),
/// })
/// if err != nil {
/// return err
/// }
/// secondary, err := docdb.NewCluster(ctx, "secondary", &docdb.ClusterArgs{
/// Engine:                  example.Engine,
/// EngineVersion:           example.EngineVersion,
/// ClusterIdentifier:       pulumi.String("test-secondary-cluster"),
/// GlobalClusterIdentifier: example.ID(),
/// DbSubnetGroupName:       pulumi.String("default"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// primary,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = docdb.NewClusterInstance(ctx, "secondary", &docdb.ClusterInstanceArgs{
/// Engine:            example.Engine,
/// Identifier:        pulumi.String("test-secondary-cluster-instance"),
/// ClusterIdentifier: secondary.ID(),
/// InstanceClass:     pulumi.String("db.r5.large"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// primaryClusterInstance,
/// }))
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
/// import com.pulumi.aws.docdb.GlobalCluster;
/// import com.pulumi.aws.docdb.GlobalClusterArgs;
/// import com.pulumi.aws.docdb.Cluster;
/// import com.pulumi.aws.docdb.ClusterArgs;
/// import com.pulumi.aws.docdb.ClusterInstance;
/// import com.pulumi.aws.docdb.ClusterInstanceArgs;
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
/// .engine("docdb")
/// .engineVersion("4.0.0")
/// .build());
///
/// var primary = new Cluster("primary", ClusterArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .clusterIdentifier("test-primary-cluster")
/// .masterUsername("username")
/// .masterPassword("somepass123")
/// .globalClusterIdentifier(example.id())
/// .dbSubnetGroupName("default")
/// .build());
///
/// var primaryClusterInstance = new ClusterInstance("primaryClusterInstance", ClusterInstanceArgs.builder()
/// .engine(example.engine())
/// .identifier("test-primary-cluster-instance")
/// .clusterIdentifier(primary.id())
/// .instanceClass("db.r5.large")
/// .build());
///
/// var secondary = new Cluster("secondary", ClusterArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .clusterIdentifier("test-secondary-cluster")
/// .globalClusterIdentifier(example.id())
/// .dbSubnetGroupName("default")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(primary)
/// .build());
///
/// var secondaryClusterInstance = new ClusterInstance("secondaryClusterInstance", ClusterInstanceArgs.builder()
/// .engine(example.engine())
/// .identifier("test-secondary-cluster-instance")
/// .clusterIdentifier(secondary.id())
/// .instanceClass("db.r5.large")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(primaryClusterInstance)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:docdb:GlobalCluster
/// properties:
/// globalClusterIdentifier: global-test
/// engine: docdb
/// engineVersion: 4.0.0
/// primary:
/// type: aws:docdb:Cluster
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// clusterIdentifier: test-primary-cluster
/// masterUsername: username
/// masterPassword: somepass123
/// globalClusterIdentifier: ${example.id}
/// dbSubnetGroupName: default
/// primaryClusterInstance:
/// type: aws:docdb:ClusterInstance
/// name: primary
/// properties:
/// engine: ${example.engine}
/// identifier: test-primary-cluster-instance
/// clusterIdentifier: ${primary.id}
/// instanceClass: db.r5.large
/// secondary:
/// type: aws:docdb:Cluster
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// clusterIdentifier: test-secondary-cluster
/// globalClusterIdentifier: ${example.id}
/// dbSubnetGroupName: default
/// options:
/// dependsOn:
/// - ${primary}
/// secondaryClusterInstance:
/// type: aws:docdb:ClusterInstance
/// name: secondary
/// properties:
/// engine: ${example.engine}
/// identifier: test-secondary-cluster-instance
/// clusterIdentifier: ${secondary.id}
/// instanceClass: db.r5.large
/// options:
/// dependsOn:
/// - ${primaryClusterInstance}
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
/// const example = new aws.docdb.Cluster("example", {});
/// const exampleGlobalCluster = new aws.docdb.GlobalCluster("example", {
/// globalClusterIdentifier: "example",
/// sourceDbClusterIdentifier: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.docdb.Cluster("example")
/// example_global_cluster = aws.docdb.GlobalCluster("example",
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
/// var example = new Aws.DocDB.Cluster("example");
///
/// var exampleGlobalCluster = new Aws.DocDB.GlobalCluster("example", new()
/// {
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/docdb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := docdb.NewCluster(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = docdb.NewGlobalCluster(ctx, "example", &docdb.GlobalClusterArgs{
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
/// import com.pulumi.aws.docdb.Cluster;
/// import com.pulumi.aws.docdb.GlobalCluster;
/// import com.pulumi.aws.docdb.GlobalClusterArgs;
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
/// type: aws:docdb:Cluster
/// exampleGlobalCluster:
/// type: aws:docdb:GlobalCluster
/// name: example
/// properties:
/// globalClusterIdentifier: example
/// sourceDbClusterIdentifier: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.docdb.GlobalCluster`" pulumi-lang-dotnet="`aws.docdb.GlobalCluster`" pulumi-lang-go="`docdb.GlobalCluster`" pulumi-lang-python="`docdb.GlobalCluster`" pulumi-lang-yaml="`aws.docdb.GlobalCluster`" pulumi-lang-java="`aws.docdb.GlobalCluster`">`aws.docdb.GlobalCluster`</span> using the Global Cluster identifier. For example:
///
/// ```sh
/// $ pulumi import aws:docdb/globalCluster:GlobalCluster example example
/// ```
///
/// Certain resource arguments, like <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span>, do not have an API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> to hide the difference. For example:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.docdb.GlobalCluster("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.docdb.GlobalCluster("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DocDB.GlobalCluster("example");
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
/// _, err := docdb.NewGlobalCluster(ctx, "example", nil)
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
/// import com.pulumi.aws.docdb.GlobalCluster;
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
/// type: aws:docdb:GlobalCluster
/// ```
/// <!--End PulumiCodeChooser -->
class GlobalCluster extends CustomResource {
  /// Global Cluster Amazon Resource Name (ARN)
  late final Output<String> arn;

  /// Name for an automatically created database on cluster creation.
  late final Output<String?> databaseName;

  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> deletionProtection;

  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>. Defaults to <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>. Conflicts with <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span>.
  late final Output<String> engine;

  /// Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  /// * **NOTE:** Upgrading major versions is not supported.
  late final Output<String> engineVersion;

  /// The global cluster identifier.
  late final Output<String> globalClusterIdentifier;

  /// Set of objects containing Global Cluster members.
  late final Output<List<GlobalClusterGlobalClusterMember>>
      globalClusterMembers;

  /// AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  late final Output<String> globalClusterResourceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value.
  late final Output<String> sourceDbClusterIdentifier;
  late final Output<String> status;

  /// Specifies whether the DB cluster is encrypted. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> unless <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span> is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  late final Output<bool> storageEncrypted;

  GlobalCluster(
    String name, {
    GlobalClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:docdb/globalCluster:GlobalCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.databaseName = registerOutput<String?>('databaseName');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.globalClusterIdentifier =
        registerOutput<String>('globalClusterIdentifier');
    this.globalClusterMembers =
        registerOutput<List<GlobalClusterGlobalClusterMember>>(
            'globalClusterMembers');
    this.globalClusterResourceId =
        registerOutput<String>('globalClusterResourceId');
    this.region = registerOutput<String>('region');
    this.sourceDbClusterIdentifier =
        registerOutput<String>('sourceDbClusterIdentifier');
    this.status = registerOutput<String>('status');
    this.storageEncrypted = registerOutput<bool>('storageEncrypted');
  }
}
