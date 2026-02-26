import 'package:pulumi/pulumi.dart';
import '../global_cluster_global_cluster_member/global_cluster_global_cluster_member2.dart';
import 'global_cluster_args2.dart';

/// Manages a Neptune Global Cluster. A global cluster consists of one primary region and up to five read-only secondary regions. You issue write operations directly to the primary cluster in the primary region and Amazon Neptune automatically replicates the data to the secondary regions using dedicated infrastructure.
///
/// More information about Neptune Global Clusters can be found in the [Neptune User Guide](https://docs.aws.amazon.com/neptune/latest/userguide/neptune-global-database.html).
///
/// ## Example Usage
///
/// ### New Neptune Global Cluster
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.neptune.GlobalCluster("example", {
/// globalClusterIdentifier: "global-test",
/// engine: "neptune",
/// engineVersion: "1.2.0.0",
/// });
/// const primary = new aws.neptune.Cluster("primary", {
/// engine: example.engine,
/// engineVersion: example.engineVersion,
/// clusterIdentifier: "test-primary-cluster",
/// globalClusterIdentifier: example.id,
/// neptuneSubnetGroupName: "default",
/// });
/// const primaryClusterInstance = new aws.neptune.ClusterInstance("primary", {
/// engine: example.engine,
/// engineVersion: example.engineVersion,
/// identifier: "test-primary-cluster-instance",
/// clusterIdentifier: primary.id,
/// instanceClass: "db.r5.large",
/// neptuneSubnetGroupName: "default",
/// });
/// const secondary = new aws.neptune.Cluster("secondary", {
/// engine: example.engine,
/// engineVersion: example.engineVersion,
/// clusterIdentifier: "test-secondary-cluster",
/// globalClusterIdentifier: example.id,
/// neptuneSubnetGroupName: "default",
/// });
/// const secondaryClusterInstance = new aws.neptune.ClusterInstance("secondary", {
/// engine: example.engine,
/// engineVersion: example.engineVersion,
/// identifier: "test-secondary-cluster-instance",
/// clusterIdentifier: secondary.id,
/// instanceClass: "db.r5.large",
/// neptuneSubnetGroupName: "default",
/// }, {
/// dependsOn: [primaryClusterInstance],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.neptune.GlobalCluster("example",
/// global_cluster_identifier="global-test",
/// engine="neptune",
/// engine_version="1.2.0.0")
/// primary = aws.neptune.Cluster("primary",
/// engine=example.engine,
/// engine_version=example.engine_version,
/// cluster_identifier="test-primary-cluster",
/// global_cluster_identifier=example.id,
/// neptune_subnet_group_name="default")
/// primary_cluster_instance = aws.neptune.ClusterInstance("primary",
/// engine=example.engine,
/// engine_version=example.engine_version,
/// identifier="test-primary-cluster-instance",
/// cluster_identifier=primary.id,
/// instance_class="db.r5.large",
/// neptune_subnet_group_name="default")
/// secondary = aws.neptune.Cluster("secondary",
/// engine=example.engine,
/// engine_version=example.engine_version,
/// cluster_identifier="test-secondary-cluster",
/// global_cluster_identifier=example.id,
/// neptune_subnet_group_name="default")
/// secondary_cluster_instance = aws.neptune.ClusterInstance("secondary",
/// engine=example.engine,
/// engine_version=example.engine_version,
/// identifier="test-secondary-cluster-instance",
/// cluster_identifier=secondary.id,
/// instance_class="db.r5.large",
/// neptune_subnet_group_name="default",
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
/// var example = new Aws.Neptune.GlobalCluster("example", new()
/// {
/// GlobalClusterIdentifier = "global-test",
/// Engine = "neptune",
/// EngineVersion = "1.2.0.0",
/// });
///
/// var primary = new Aws.Neptune.Cluster("primary", new()
/// {
/// Engine = example.Engine,
/// EngineVersion = example.EngineVersion,
/// ClusterIdentifier = "test-primary-cluster",
/// GlobalClusterIdentifier = example.Id,
/// NeptuneSubnetGroupName = "default",
/// });
///
/// var primaryClusterInstance = new Aws.Neptune.ClusterInstance("primary", new()
/// {
/// Engine = example.Engine,
/// EngineVersion = example.EngineVersion,
/// Identifier = "test-primary-cluster-instance",
/// ClusterIdentifier = primary.Id,
/// InstanceClass = "db.r5.large",
/// NeptuneSubnetGroupName = "default",
/// });
///
/// var secondary = new Aws.Neptune.Cluster("secondary", new()
/// {
/// Engine = example.Engine,
/// EngineVersion = example.EngineVersion,
/// ClusterIdentifier = "test-secondary-cluster",
/// GlobalClusterIdentifier = example.Id,
/// NeptuneSubnetGroupName = "default",
/// });
///
/// var secondaryClusterInstance = new Aws.Neptune.ClusterInstance("secondary", new()
/// {
/// Engine = example.Engine,
/// EngineVersion = example.EngineVersion,
/// Identifier = "test-secondary-cluster-instance",
/// ClusterIdentifier = secondary.Id,
/// InstanceClass = "db.r5.large",
/// NeptuneSubnetGroupName = "default",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := neptune.NewGlobalCluster(ctx, "example", &neptune.GlobalClusterArgs{
/// GlobalClusterIdentifier: pulumi.String("global-test"),
/// Engine:                  pulumi.String("neptune"),
/// EngineVersion:           pulumi.String("1.2.0.0"),
/// })
/// if err != nil {
/// return err
/// }
/// primary, err := neptune.NewCluster(ctx, "primary", &neptune.ClusterArgs{
/// Engine:                  example.Engine,
/// EngineVersion:           example.EngineVersion,
/// ClusterIdentifier:       pulumi.String("test-primary-cluster"),
/// GlobalClusterIdentifier: example.ID(),
/// NeptuneSubnetGroupName:  pulumi.String("default"),
/// })
/// if err != nil {
/// return err
/// }
/// primaryClusterInstance, err := neptune.NewClusterInstance(ctx, "primary", &neptune.ClusterInstanceArgs{
/// Engine:                 example.Engine,
/// EngineVersion:          example.EngineVersion,
/// Identifier:             pulumi.String("test-primary-cluster-instance"),
/// ClusterIdentifier:      primary.ID(),
/// InstanceClass:          pulumi.String("db.r5.large"),
/// NeptuneSubnetGroupName: pulumi.String("default"),
/// })
/// if err != nil {
/// return err
/// }
/// secondary, err := neptune.NewCluster(ctx, "secondary", &neptune.ClusterArgs{
/// Engine:                  example.Engine,
/// EngineVersion:           example.EngineVersion,
/// ClusterIdentifier:       pulumi.String("test-secondary-cluster"),
/// GlobalClusterIdentifier: example.ID(),
/// NeptuneSubnetGroupName:  pulumi.String("default"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = neptune.NewClusterInstance(ctx, "secondary", &neptune.ClusterInstanceArgs{
/// Engine:                 example.Engine,
/// EngineVersion:          example.EngineVersion,
/// Identifier:             pulumi.String("test-secondary-cluster-instance"),
/// ClusterIdentifier:      secondary.ID(),
/// InstanceClass:          pulumi.String("db.r5.large"),
/// NeptuneSubnetGroupName: pulumi.String("default"),
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
/// import com.pulumi.aws.neptune.GlobalCluster;
/// import com.pulumi.aws.neptune.GlobalClusterArgs;
/// import com.pulumi.aws.neptune.Cluster;
/// import com.pulumi.aws.neptune.ClusterArgs;
/// import com.pulumi.aws.neptune.ClusterInstance;
/// import com.pulumi.aws.neptune.ClusterInstanceArgs;
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
/// .engine("neptune")
/// .engineVersion("1.2.0.0")
/// .build());
///
/// var primary = new Cluster("primary", ClusterArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .clusterIdentifier("test-primary-cluster")
/// .globalClusterIdentifier(example.id())
/// .neptuneSubnetGroupName("default")
/// .build());
///
/// var primaryClusterInstance = new ClusterInstance("primaryClusterInstance", ClusterInstanceArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .identifier("test-primary-cluster-instance")
/// .clusterIdentifier(primary.id())
/// .instanceClass("db.r5.large")
/// .neptuneSubnetGroupName("default")
/// .build());
///
/// var secondary = new Cluster("secondary", ClusterArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .clusterIdentifier("test-secondary-cluster")
/// .globalClusterIdentifier(example.id())
/// .neptuneSubnetGroupName("default")
/// .build());
///
/// var secondaryClusterInstance = new ClusterInstance("secondaryClusterInstance", ClusterInstanceArgs.builder()
/// .engine(example.engine())
/// .engineVersion(example.engineVersion())
/// .identifier("test-secondary-cluster-instance")
/// .clusterIdentifier(secondary.id())
/// .instanceClass("db.r5.large")
/// .neptuneSubnetGroupName("default")
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
/// type: aws:neptune:GlobalCluster
/// properties:
/// globalClusterIdentifier: global-test
/// engine: neptune
/// engineVersion: 1.2.0.0
/// primary:
/// type: aws:neptune:Cluster
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// clusterIdentifier: test-primary-cluster
/// globalClusterIdentifier: ${example.id}
/// neptuneSubnetGroupName: default
/// primaryClusterInstance:
/// type: aws:neptune:ClusterInstance
/// name: primary
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// identifier: test-primary-cluster-instance
/// clusterIdentifier: ${primary.id}
/// instanceClass: db.r5.large
/// neptuneSubnetGroupName: default
/// secondary:
/// type: aws:neptune:Cluster
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// clusterIdentifier: test-secondary-cluster
/// globalClusterIdentifier: ${example.id}
/// neptuneSubnetGroupName: default
/// secondaryClusterInstance:
/// type: aws:neptune:ClusterInstance
/// name: secondary
/// properties:
/// engine: ${example.engine}
/// engineVersion: ${example.engineVersion}
/// identifier: test-secondary-cluster-instance
/// clusterIdentifier: ${secondary.id}
/// instanceClass: db.r5.large
/// neptuneSubnetGroupName: default
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
/// const example = new aws.neptune.Cluster("example", {});
/// const exampleGlobalCluster = new aws.neptune.GlobalCluster("example", {
/// globalClusterIdentifier: "example",
/// sourceDbClusterIdentifier: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.neptune.Cluster("example")
/// example_global_cluster = aws.neptune.GlobalCluster("example",
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
/// var example = new Aws.Neptune.Cluster("example");
///
/// var exampleGlobalCluster = new Aws.Neptune.GlobalCluster("example", new()
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := neptune.NewCluster(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = neptune.NewGlobalCluster(ctx, "example", &neptune.GlobalClusterArgs{
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
/// import com.pulumi.aws.neptune.Cluster;
/// import com.pulumi.aws.neptune.GlobalCluster;
/// import com.pulumi.aws.neptune.GlobalClusterArgs;
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
/// type: aws:neptune:Cluster
/// exampleGlobalCluster:
/// type: aws:neptune:GlobalCluster
/// name: example
/// properties:
/// globalClusterIdentifier: example
/// sourceDbClusterIdentifier: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.neptune.GlobalCluster`" pulumi-lang-dotnet="`aws.neptune.GlobalCluster`" pulumi-lang-go="`neptune.GlobalCluster`" pulumi-lang-python="`neptune.GlobalCluster`" pulumi-lang-yaml="`aws.neptune.GlobalCluster`" pulumi-lang-java="`aws.neptune.GlobalCluster`">`aws.neptune.GlobalCluster`</span> using the Global Cluster identifier. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/globalCluster:GlobalCluster example example
/// ```
///
/// Certain resource arguments, like <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span>, do not have an API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> to hide the difference. For example:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.neptune.GlobalCluster("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.neptune.GlobalCluster("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Neptune.GlobalCluster("example");
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
/// _, err := neptune.NewGlobalCluster(ctx, "example", nil)
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
/// import com.pulumi.aws.neptune.GlobalCluster;
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
/// type: aws:neptune:GlobalCluster
/// ```
/// <!--End PulumiCodeChooser -->
class GlobalCluster2 extends CustomResource {
  /// Global Cluster ARN
  late final Output<String> arn;

  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> deletionProtection;

  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: <span pulumi-lang-nodejs="`neptune`" pulumi-lang-dotnet="`Neptune`" pulumi-lang-go="`neptune`" pulumi-lang-python="`neptune`" pulumi-lang-yaml="`neptune`" pulumi-lang-java="`neptune`">`neptune`</span>. Conflicts with <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span>.
  late final Output<String> engine;

  /// Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  late final Output<String> engineVersion;

  /// Global cluster identifier.
  late final Output<String> globalClusterIdentifier;

  /// Set of objects containing Global Cluster members.
  late final Output<List<GlobalClusterGlobalClusterMember2>>
      globalClusterMembers;

  /// AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  late final Output<String> globalClusterResourceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN to use as the primary DB Cluster of the Global Cluster on creation. Pulumi cannot perform drift detection of this value.
  late final Output<String> sourceDbClusterIdentifier;
  late final Output<String> status;

  /// Whether the DB cluster is encrypted. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> unless <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span> is specified and encrypted. Pulumi will only perform drift detection if a configuration value is provided.
  late final Output<bool> storageEncrypted;

  GlobalCluster2(
    String name, {
    GlobalClusterArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:neptune/globalCluster:GlobalCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.globalClusterIdentifier =
        registerOutput<String>('globalClusterIdentifier');
    this.globalClusterMembers =
        registerOutput<List<GlobalClusterGlobalClusterMember2>>(
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
