import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_association_args.dart';
import 'container_association_container_monitoring_configuration.dart';
import 'container_association_state.dart';
import 'container_association_timeouts.dart';

/// Manages an AWS Network Firewall Container Association. A container association links Amazon ECS or Amazon EKS clusters to Network Firewall, resolving container IP addresses into a dynamic IP set you can reference from stateful rule groups.
///
/// ## Example Usage
///
/// ### EKS Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.ContainerAssociation("example", {
///     containerMonitoringConfigurations: [{
///         attributeFilters: [{
///             key: "app",
///             value: "backend",
///         }],
///         clusterArn: exampleAwsEksCluster.arn,
///     }],
///     containerAssociationName: "example-eks-association",
///     type: "EKS",
///     description: "Association for production EKS cluster",
///     tags: {
///         Name: "example",
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.ContainerAssociation("example",
///     container_monitoring_configurations=[{
///         "attribute_filters": [{
///             "key": "app",
///             "value": "backend",
///         }],
///         "cluster_arn": example_aws_eks_cluster["arn"],
///     }],
///     container_association_name="example-eks-association",
///     type="EKS",
///     description="Association for production EKS cluster",
///     tags={
///         "Name": "example",
///         "Environment": "production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.ContainerAssociation("example", new()
///     {
///         ContainerMonitoringConfigurations = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.ContainerAssociationContainerMonitoringConfigurationArgs
///             {
///                 AttributeFilters = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.ContainerAssociationContainerMonitoringConfigurationAttributeFilterArgs
///                     {
///                         Key = "app",
///                         Value = "backend",
///                     },
///                 },
///                 ClusterArn = exampleAwsEksCluster.Arn,
///             },
///         },
///         ContainerAssociationName = "example-eks-association",
///         Type = "EKS",
///         Description = "Association for production EKS cluster",
///         Tags =
///         {
///             { "Name", "example" },
///             { "Environment", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.NewContainerAssociation(ctx, "example", &networkfirewall.ContainerAssociationArgs{
/// 			ContainerMonitoringConfigurations: networkfirewall.ContainerAssociationContainerMonitoringConfigurationArray{
/// 				&networkfirewall.ContainerAssociationContainerMonitoringConfigurationArgs{
/// 					AttributeFilters: networkfirewall.ContainerAssociationContainerMonitoringConfigurationAttributeFilterArray{
/// 						&networkfirewall.ContainerAssociationContainerMonitoringConfigurationAttributeFilterArgs{
/// 							Key:   pulumi.String("app"),
/// 							Value: pulumi.String("backend"),
/// 						},
/// 					},
/// 					ClusterArn: pulumi.Any(exampleAwsEksCluster.Arn),
/// 				},
/// 			},
/// 			ContainerAssociationName: pulumi.String("example-eks-association"),
/// 			Type:                     pulumi.String("EKS"),
/// 			Description:              pulumi.String("Association for production EKS cluster"),
/// 			Tags: pulumi.StringMap{
/// 				"Name":        pulumi.String("example"),
/// 				"Environment": pulumi.String("production"),
/// 			},
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
/// resource "aws_networkfirewall_containerassociation" "example" {
///   container_monitoring_configurations {
///     attribute_filters {
///       key   = "app"
///       value = "backend"
///     }
///     cluster_arn = exampleAwsEksCluster.arn
///   }
///   container_association_name = "example-eks-association"
///   type                       = "EKS"
///   description                = "Association for production EKS cluster"
///   tags = {
///     "Name"        = "example"
///     "Environment" = "production"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.ContainerAssociation;
/// import com.pulumi.aws.networkfirewall.ContainerAssociationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.ContainerAssociationContainerMonitoringConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.ContainerAssociationContainerMonitoringConfigurationAttributeFilterArgs;
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
///         var example = new ContainerAssociation("example", ContainerAssociationArgs.builder()
///             .containerMonitoringConfigurations(ContainerAssociationContainerMonitoringConfigurationArgs.builder()
///                 .attributeFilters(ContainerAssociationContainerMonitoringConfigurationAttributeFilterArgs.builder()
///                     .key("app")
///                     .value("backend")
///                     .build())
///                 .clusterArn(exampleAwsEksCluster.arn())
///                 .build())
///             .containerAssociationName("example-eks-association")
///             .type("EKS")
///             .description("Association for production EKS cluster")
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "example"),
///                 Map.entry("Environment", "production")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:ContainerAssociation
///     properties:
///       containerMonitoringConfigurations:
///         - attributeFilters:
///             - key: app
///               value: backend
///           clusterArn: ${exampleAwsEksCluster.arn}
///       containerAssociationName: example-eks-association
///       type: EKS
///       description: Association for production EKS cluster
///       tags:
///         Name: example
///         Environment: production
/// ```
///
///
/// ### ECS Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.ContainerAssociation("example", {
///     containerMonitoringConfigurations: [{
///         clusterArn: exampleAwsEcsCluster.arn,
///     }],
///     containerAssociationName: "example-ecs-association",
///     type: "ECS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.ContainerAssociation("example",
///     container_monitoring_configurations=[{
///         "cluster_arn": example_aws_ecs_cluster["arn"],
///     }],
///     container_association_name="example-ecs-association",
///     type="ECS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.ContainerAssociation("example", new()
///     {
///         ContainerMonitoringConfigurations = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.ContainerAssociationContainerMonitoringConfigurationArgs
///             {
///                 ClusterArn = exampleAwsEcsCluster.Arn,
///             },
///         },
///         ContainerAssociationName = "example-ecs-association",
///         Type = "ECS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.NewContainerAssociation(ctx, "example", &networkfirewall.ContainerAssociationArgs{
/// 			ContainerMonitoringConfigurations: networkfirewall.ContainerAssociationContainerMonitoringConfigurationArray{
/// 				&networkfirewall.ContainerAssociationContainerMonitoringConfigurationArgs{
/// 					ClusterArn: pulumi.Any(exampleAwsEcsCluster.Arn),
/// 				},
/// 			},
/// 			ContainerAssociationName: pulumi.String("example-ecs-association"),
/// 			Type:                     pulumi.String("ECS"),
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
/// resource "aws_networkfirewall_containerassociation" "example" {
///   container_monitoring_configurations {
///     cluster_arn = exampleAwsEcsCluster.arn
///   }
///   container_association_name = "example-ecs-association"
///   type                       = "ECS"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.ContainerAssociation;
/// import com.pulumi.aws.networkfirewall.ContainerAssociationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.ContainerAssociationContainerMonitoringConfigurationArgs;
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
///         var example = new ContainerAssociation("example", ContainerAssociationArgs.builder()
///             .containerMonitoringConfigurations(ContainerAssociationContainerMonitoringConfigurationArgs.builder()
///                 .clusterArn(exampleAwsEcsCluster.arn())
///                 .build())
///             .containerAssociationName("example-ecs-association")
///             .type("ECS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:ContainerAssociation
///     properties:
///       containerMonitoringConfigurations:
///         - clusterArn: ${exampleAwsEcsCluster.arn}
///       containerAssociationName: example-ecs-association
///       type: ECS
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `containerAssociationArn` (String) ARN of the container association.
///
///
/// Using `pulumi import`, import Network Firewall Container Association using the `containerAssociationArn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/containerAssociation:ContainerAssociation example arn:aws:network-firewall:us-west-2:123456789012:container-association/example
/// ```
class ContainerAssociation extends pulumi.CustomResource {
  /// ARN of the container association.
  late final pulumi.Output<String> containerAssociationArn;
  /// Name of the container association. You can't change the name after creation. Must be between 1 and 128 characters and contain only alphanumeric characters and hyphens.
  late final pulumi.Output<String> containerAssociationName;
  /// One or more monitoring configurations, up to 5. See `containerMonitoringConfiguration` Block below.
  late final pulumi.Output<List<ContainerAssociationContainerMonitoringConfiguration>> containerMonitoringConfigurations;
  /// Description of the container association.
  late final pulumi.Output<String?> description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Number of CIDR blocks resolved from the monitored containers for this container association.
  late final pulumi.Output<int> resolvedCidrCount;
  /// Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ContainerAssociationTimeouts?> timeouts;
  /// Container orchestration platform for the clusters in this association. Valid values: `ECS`, `EKS`. You can't change the type after creation.
  late final pulumi.Output<String> type;
  /// Token used for optimistic locking.
  late final pulumi.Output<String> updateToken;

  /// Creates a new [ContainerAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerAssociation]. {@macro pulumi_networkfirewall_container_association_container_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerAssociation(
    String name, {
    ContainerAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/containerAssociation:ContainerAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    containerAssociationArn = registerOutput<String>('containerAssociationArn');
    containerAssociationName = registerOutput<String>('containerAssociationName');
    containerMonitoringConfigurations = registerOutput<List<ContainerAssociationContainerMonitoringConfiguration>>('containerMonitoringConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerAssociationContainerMonitoringConfiguration>(guardedValue, (value) => ContainerAssociationContainerMonitoringConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    resolvedCidrCount = registerOutput<int>('resolvedCidrCount');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ContainerAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updateToken = registerOutput<String>('updateToken');
  }

  /// Gets an existing [ContainerAssociation] resource's state with the given [name] and [id].
  static ContainerAssociation get(
    String name,
    pulumi.Input<String> id, {
    ContainerAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ContainerAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ContainerAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/containerAssociation:ContainerAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerAssociationArn = registerOutput<String>('containerAssociationArn');
    containerAssociationName = registerOutput<String>('containerAssociationName');
    containerMonitoringConfigurations = registerOutput<List<ContainerAssociationContainerMonitoringConfiguration>>('containerMonitoringConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerAssociationContainerMonitoringConfiguration>(guardedValue, (value) => ContainerAssociationContainerMonitoringConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    resolvedCidrCount = registerOutput<int>('resolvedCidrCount');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ContainerAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updateToken = registerOutput<String>('updateToken');
  }

  /// Creates a typed reference to an existing [ContainerAssociation] resource.
  ContainerAssociation.reference(String urn)
    : super(
        'aws:networkfirewall/containerAssociation:ContainerAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    containerAssociationArn = registerOutput<String>('containerAssociationArn');
    containerAssociationName = registerOutput<String>('containerAssociationName');
    containerMonitoringConfigurations = registerOutput<List<ContainerAssociationContainerMonitoringConfiguration>>('containerMonitoringConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerAssociationContainerMonitoringConfiguration>(guardedValue, (value) => ContainerAssociationContainerMonitoringConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    resolvedCidrCount = registerOutput<int>('resolvedCidrCount');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ContainerAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updateToken = registerOutput<String>('updateToken');
  }
}
