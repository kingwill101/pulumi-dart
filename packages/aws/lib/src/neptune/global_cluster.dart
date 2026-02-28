import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_cluster_args.dart';
import 'global_cluster_global_cluster_member.dart';

/// Manages a Neptune Global Cluster. A global cluster consists of one primary region and up to five read-only secondary regions. You issue write operations directly to the primary cluster in the primary region and Amazon Neptune automatically replicates the data to the secondary regions using dedicated infrastructure.
///
/// More information about Neptune Global Clusters can be found in the [Neptune User Guide](https://docs.aws.amazon.com/neptune/latest/userguide/neptune-global-database.html).
///
/// ## Example Usage
///
/// ### New Neptune Global Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.neptune.GlobalCluster("example", {
///     globalClusterIdentifier: "global-test",
///     engine: "neptune",
///     engineVersion: "1.2.0.0",
/// });
/// const primary = new aws.neptune.Cluster("primary", {
///     engine: example.engine,
///     engineVersion: example.engineVersion,
///     clusterIdentifier: "test-primary-cluster",
///     globalClusterIdentifier: example.id,
///     neptuneSubnetGroupName: "default",
/// });
/// const primaryClusterInstance = new aws.neptune.ClusterInstance("primary", {
///     engine: example.engine,
///     engineVersion: example.engineVersion,
///     identifier: "test-primary-cluster-instance",
///     clusterIdentifier: primary.id,
///     instanceClass: "db.r5.large",
///     neptuneSubnetGroupName: "default",
/// });
/// const secondary = new aws.neptune.Cluster("secondary", {
///     engine: example.engine,
///     engineVersion: example.engineVersion,
///     clusterIdentifier: "test-secondary-cluster",
///     globalClusterIdentifier: example.id,
///     neptuneSubnetGroupName: "default",
/// });
/// const secondaryClusterInstance = new aws.neptune.ClusterInstance("secondary", {
///     engine: example.engine,
///     engineVersion: example.engineVersion,
///     identifier: "test-secondary-cluster-instance",
///     clusterIdentifier: secondary.id,
///     instanceClass: "db.r5.large",
///     neptuneSubnetGroupName: "default",
/// }, {
///     dependsOn: [primaryClusterInstance],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.neptune.GlobalCluster("example",
///     global_cluster_identifier="global-test",
///     engine="neptune",
///     engine_version="1.2.0.0")
/// primary = aws.neptune.Cluster("primary",
///     engine=example.engine,
///     engine_version=example.engine_version,
///     cluster_identifier="test-primary-cluster",
///     global_cluster_identifier=example.id,
///     neptune_subnet_group_name="default")
/// primary_cluster_instance = aws.neptune.ClusterInstance("primary",
///     engine=example.engine,
///     engine_version=example.engine_version,
///     identifier="test-primary-cluster-instance",
///     cluster_identifier=primary.id,
///     instance_class="db.r5.large",
///     neptune_subnet_group_name="default")
/// secondary = aws.neptune.Cluster("secondary",
///     engine=example.engine,
///     engine_version=example.engine_version,
///     cluster_identifier="test-secondary-cluster",
///     global_cluster_identifier=example.id,
///     neptune_subnet_group_name="default")
/// secondary_cluster_instance = aws.neptune.ClusterInstance("secondary",
///     engine=example.engine,
///     engine_version=example.engine_version,
///     identifier="test-secondary-cluster-instance",
///     cluster_identifier=secondary.id,
///     instance_class="db.r5.large",
///     neptune_subnet_group_name="default",
///     opts = pulumi.ResourceOptions(depends_on=[primary_cluster_instance]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Neptune.GlobalCluster("example", new()
///     {
///         GlobalClusterIdentifier = "global-test",
///         Engine = "neptune",
///         EngineVersion = "1.2.0.0",
///     });
///
///     var primary = new Aws.Neptune.Cluster("primary", new()
///     {
///         Engine = example.Engine,
///         EngineVersion = example.EngineVersion,
///         ClusterIdentifier = "test-primary-cluster",
///         GlobalClusterIdentifier = example.Id,
///         NeptuneSubnetGroupName = "default",
///     });
///
///     var primaryClusterInstance = new Aws.Neptune.ClusterInstance("primary", new()
///     {
///         Engine = example.Engine,
///         EngineVersion = example.EngineVersion,
///         Identifier = "test-primary-cluster-instance",
///         ClusterIdentifier = primary.Id,
///         InstanceClass = "db.r5.large",
///         NeptuneSubnetGroupName = "default",
///     });
///
///     var secondary = new Aws.Neptune.Cluster("secondary", new()
///     {
///         Engine = example.Engine,
///         EngineVersion = example.EngineVersion,
///         ClusterIdentifier = "test-secondary-cluster",
///         GlobalClusterIdentifier = example.Id,
///         NeptuneSubnetGroupName = "default",
///     });
///
///     var secondaryClusterInstance = new Aws.Neptune.ClusterInstance("secondary", new()
///     {
///         Engine = example.Engine,
///         EngineVersion = example.EngineVersion,
///         Identifier = "test-secondary-cluster-instance",
///         ClusterIdentifier = secondary.Id,
///         InstanceClass = "db.r5.large",
///         NeptuneSubnetGroupName = "default",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primaryClusterInstance,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := neptune.NewGlobalCluster(ctx, "example", &neptune.GlobalClusterArgs{
/// 			GlobalClusterIdentifier: pulumi.String("global-test"),
/// 			Engine:                  pulumi.String("neptune"),
/// 			EngineVersion:           pulumi.String("1.2.0.0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := neptune.NewCluster(ctx, "primary", &neptune.ClusterArgs{
/// 			Engine:                  example.Engine,
/// 			EngineVersion:           example.EngineVersion,
/// 			ClusterIdentifier:       pulumi.String("test-primary-cluster"),
/// 			GlobalClusterIdentifier: example.ID(),
/// 			NeptuneSubnetGroupName:  pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryClusterInstance, err := neptune.NewClusterInstance(ctx, "primary", &neptune.ClusterInstanceArgs{
/// 			Engine:                 example.Engine,
/// 			EngineVersion:          example.EngineVersion,
/// 			Identifier:             pulumi.String("test-primary-cluster-instance"),
/// 			ClusterIdentifier:      primary.ID(),
/// 			InstanceClass:          pulumi.String("db.r5.large"),
/// 			NeptuneSubnetGroupName: pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := neptune.NewCluster(ctx, "secondary", &neptune.ClusterArgs{
/// 			Engine:                  example.Engine,
/// 			EngineVersion:           example.EngineVersion,
/// 			ClusterIdentifier:       pulumi.String("test-secondary-cluster"),
/// 			GlobalClusterIdentifier: example.ID(),
/// 			NeptuneSubnetGroupName:  pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = neptune.NewClusterInstance(ctx, "secondary", &neptune.ClusterInstanceArgs{
/// 			Engine:                 example.Engine,
/// 			EngineVersion:          example.EngineVersion,
/// 			Identifier:             pulumi.String("test-secondary-cluster-instance"),
/// 			ClusterIdentifier:      secondary.ID(),
/// 			InstanceClass:          pulumi.String("db.r5.large"),
/// 			NeptuneSubnetGroupName: pulumi.String("default"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primaryClusterInstance,
/// 		}))
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new GlobalCluster("example", GlobalClusterArgs.builder()
///             .globalClusterIdentifier("global-test")
///             .engine("neptune")
///             .engineVersion("1.2.0.0")
///             .build());
///
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .clusterIdentifier("test-primary-cluster")
///             .globalClusterIdentifier(example.id())
///             .neptuneSubnetGroupName("default")
///             .build());
///
///         var primaryClusterInstance = new ClusterInstance("primaryClusterInstance", ClusterInstanceArgs.builder()
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .identifier("test-primary-cluster-instance")
///             .clusterIdentifier(primary.id())
///             .instanceClass("db.r5.large")
///             .neptuneSubnetGroupName("default")
///             .build());
///
///         var secondary = new Cluster("secondary", ClusterArgs.builder()
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .clusterIdentifier("test-secondary-cluster")
///             .globalClusterIdentifier(example.id())
///             .neptuneSubnetGroupName("default")
///             .build());
///
///         var secondaryClusterInstance = new ClusterInstance("secondaryClusterInstance", ClusterInstanceArgs.builder()
///             .engine(example.engine())
///             .engineVersion(example.engineVersion())
///             .identifier("test-secondary-cluster-instance")
///             .clusterIdentifier(secondary.id())
///             .instanceClass("db.r5.large")
///             .neptuneSubnetGroupName("default")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primaryClusterInstance)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:neptune:GlobalCluster
///     properties:
///       globalClusterIdentifier: global-test
///       engine: neptune
///       engineVersion: 1.2.0.0
///   primary:
///     type: aws:neptune:Cluster
///     properties:
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       clusterIdentifier: test-primary-cluster
///       globalClusterIdentifier: ${example.id}
///       neptuneSubnetGroupName: default
///   primaryClusterInstance:
///     type: aws:neptune:ClusterInstance
///     name: primary
///     properties:
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       identifier: test-primary-cluster-instance
///       clusterIdentifier: ${primary.id}
///       instanceClass: db.r5.large
///       neptuneSubnetGroupName: default
///   secondary:
///     type: aws:neptune:Cluster
///     properties:
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       clusterIdentifier: test-secondary-cluster
///       globalClusterIdentifier: ${example.id}
///       neptuneSubnetGroupName: default
///   secondaryClusterInstance:
///     type: aws:neptune:ClusterInstance
///     name: secondary
///     properties:
///       engine: ${example.engine}
///       engineVersion: ${example.engineVersion}
///       identifier: test-secondary-cluster-instance
///       clusterIdentifier: ${secondary.id}
///       instanceClass: db.r5.large
///       neptuneSubnetGroupName: default
///     options:
///       dependsOn:
///         - ${primaryClusterInstance}
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
/// const example = new aws.neptune.Cluster("example", {});
/// const exampleGlobalCluster = new aws.neptune.GlobalCluster("example", {
///     globalClusterIdentifier: "example",
///     sourceDbClusterIdentifier: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.neptune.Cluster("example")
/// example_global_cluster = aws.neptune.GlobalCluster("example",
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
///     var example = new Aws.Neptune.Cluster("example");
///
///     var exampleGlobalCluster = new Aws.Neptune.GlobalCluster("example", new()
///     {
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := neptune.NewCluster(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = neptune.NewGlobalCluster(ctx, "example", &neptune.GlobalClusterArgs{
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Cluster("example");
///
///         var exampleGlobalCluster = new GlobalCluster("exampleGlobalCluster", GlobalClusterArgs.builder()
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
///     type: aws:neptune:Cluster
///   exampleGlobalCluster:
///     type: aws:neptune:GlobalCluster
///     name: example
///     properties:
///       globalClusterIdentifier: example
///       sourceDbClusterIdentifier: ${example.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.neptune.GlobalCluster` using the Global Cluster identifier. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/globalCluster:GlobalCluster example example
/// ```
///
/// Certain resource arguments, like `source_db_cluster_identifier`, do not have an API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
///
///
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
///     var example = new Aws.Neptune.GlobalCluster("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := neptune.NewGlobalCluster(ctx, "example", nil)
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
/// import com.pulumi.aws.neptune.GlobalCluster;
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
///     type: aws:neptune:GlobalCluster
/// ```
class GlobalCluster extends pulumi.CustomResource {
  /// Global Cluster ARN
  late final pulumi.Output<String> arn;

  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  late final pulumi.Output<bool?> deletionProtection;

  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: `neptune`. Conflicts with `source_db_cluster_identifier`.
  late final pulumi.Output<String> engine;

  /// Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  late final pulumi.Output<String> engineVersion;

  /// Global cluster identifier.
  late final pulumi.Output<String> globalClusterIdentifier;

  /// Set of objects containing Global Cluster members.
  late final pulumi.Output<List<GlobalClusterGlobalClusterMember>>
      globalClusterMembers;

  /// AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  late final pulumi.Output<String> globalClusterResourceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN to use as the primary DB Cluster of the Global Cluster on creation. Pulumi cannot perform drift detection of this value.
  late final pulumi.Output<String> sourceDbClusterIdentifier;
  late final pulumi.Output<String> status;

  /// Whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. Pulumi will only perform drift detection if a configuration value is provided.
  late final pulumi.Output<bool> storageEncrypted;

  /// Creates a new [GlobalCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalCluster]. {@macro pulumi_neptune_global_cluster_global_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalCluster(
    String name, {
    GlobalClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:neptune/globalCluster:GlobalCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
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
