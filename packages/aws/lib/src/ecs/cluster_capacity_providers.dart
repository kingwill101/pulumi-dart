import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_capacity_providers_args.dart';
import 'cluster_capacity_providers_default_capacity_provider_strategy.dart';

/// Manages the capacity providers of an ECS Cluster.
///
/// More information about capacity providers can be found in the [ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-capacity-providers.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecs.Cluster("example", {name: "my-cluster"});
/// const exampleClusterCapacityProviders = new aws.ecs.ClusterCapacityProviders("example", {
///     clusterName: example.name,
///     capacityProviders: ["FARGATE"],
///     defaultCapacityProviderStrategies: [{
///         base: 1,
///         weight: 100,
///         capacityProvider: "FARGATE",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecs.Cluster("example", name="my-cluster")
/// example_cluster_capacity_providers = aws.ecs.ClusterCapacityProviders("example",
///     cluster_name=example.name,
///     capacity_providers=["FARGATE"],
///     default_capacity_provider_strategies=[{
///         "base": 1,
///         "weight": 100,
///         "capacity_provider": "FARGATE",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecs.Cluster("example", new()
///     {
///         Name = "my-cluster",
///     });
///
///     var exampleClusterCapacityProviders = new Aws.Ecs.ClusterCapacityProviders("example", new()
///     {
///         ClusterName = example.Name,
///         CapacityProviders = new[]
///         {
///             "FARGATE",
///         },
///         DefaultCapacityProviderStrategies = new[]
///         {
///             new Aws.Ecs.Inputs.ClusterCapacityProvidersDefaultCapacityProviderStrategyArgs
///             {
///                 Base = 1,
///                 Weight = 100,
///                 CapacityProvider = "FARGATE",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ecs.NewCluster(ctx, "example", &ecs.ClusterArgs{
/// 			Name: pulumi.String("my-cluster"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewClusterCapacityProviders(ctx, "example", &ecs.ClusterCapacityProvidersArgs{
/// 			ClusterName: example.Name,
/// 			CapacityProviders: pulumi.StringArray{
/// 				pulumi.String("FARGATE"),
/// 			},
/// 			DefaultCapacityProviderStrategies: ecs.ClusterCapacityProvidersDefaultCapacityProviderStrategyArray{
/// 				&ecs.ClusterCapacityProvidersDefaultCapacityProviderStrategyArgs{
/// 					Base:             pulumi.Int(1),
/// 					Weight:           pulumi.Int(100),
/// 					CapacityProvider: pulumi.String("FARGATE"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.ecs.Cluster;
/// import com.pulumi.aws.ecs.ClusterArgs;
/// import com.pulumi.aws.ecs.ClusterCapacityProviders;
/// import com.pulumi.aws.ecs.ClusterCapacityProvidersArgs;
/// import com.pulumi.aws.ecs.inputs.ClusterCapacityProvidersDefaultCapacityProviderStrategyArgs;
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
///             .name("my-cluster")
///             .build());
///
///         var exampleClusterCapacityProviders = new ClusterCapacityProviders("exampleClusterCapacityProviders", ClusterCapacityProvidersArgs.builder()
///             .clusterName(example.name())
///             .capacityProviders("FARGATE")
///             .defaultCapacityProviderStrategies(ClusterCapacityProvidersDefaultCapacityProviderStrategyArgs.builder()
///                 .base(1)
///                 .weight(100)
///                 .capacityProvider("FARGATE")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecs:Cluster
///     properties:
///       name: my-cluster
///   exampleClusterCapacityProviders:
///     type: aws:ecs:ClusterCapacityProviders
///     name: example
///     properties:
///       clusterName: ${example.name}
///       capacityProviders:
///         - FARGATE
///       defaultCapacityProviderStrategies:
///         - base: 1
///           weight: 100
///           capacityProvider: FARGATE
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ECS cluster capacity providers using the `cluster_name` attribute. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/clusterCapacityProviders:ClusterCapacityProviders example my-cluster
/// ```
class ClusterCapacityProviders extends pulumi.CustomResource {
  /// Set of names of one or more capacity providers to associate with the cluster. Valid values also include `FARGATE` and `FARGATE_SPOT`.
  late final pulumi.Output<List<String>?> capacityProviders;

  /// Name of the ECS cluster to manage capacity providers for.
  late final pulumi.Output<String> clusterName;

  /// Set of capacity provider strategies to use by default for the cluster. Detailed below.
  late final pulumi.Output<
    List<ClusterCapacityProvidersDefaultCapacityProviderStrategy>?
  >
  defaultCapacityProviderStrategies;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ClusterCapacityProviders].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterCapacityProviders]. {@macro pulumi_ecs_cluster_capacity_providers_cluster_capacity_providers_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterCapacityProviders(
    String name, {
    ClusterCapacityProvidersArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ecs/clusterCapacityProviders:ClusterCapacityProviders',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.capacityProviders = registerOutput<List<String>?>('capacityProviders');
    this.clusterName = registerOutput<String>('clusterName');
    this.defaultCapacityProviderStrategies =
        registerOutput<
          List<ClusterCapacityProvidersDefaultCapacityProviderStrategy>?
        >('defaultCapacityProviderStrategies');
    this.region = registerOutput<String>('region');
  }
}
