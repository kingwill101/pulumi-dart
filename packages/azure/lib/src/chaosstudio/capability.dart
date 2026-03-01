import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_args.dart';

/// Manages a Chaos Studio Capability.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = new azure.containerservice.KubernetesCluster("example", {
///     name: "example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     dnsPrefix: "acctestaksexample",
///     defaultNodePool: {
///         name: "example-value",
///         nodeCount: "example-value",
///         vmSize: "example-value",
///     },
///     identity: {
///         type: "example-value",
///     },
/// });
/// const exampleTarget = new azure.chaosstudio.Target("example", {
///     location: exampleResourceGroup.location,
///     targetResourceId: example.id,
///     targetType: "example-value",
/// });
/// const exampleCapability = new azure.chaosstudio.Capability("example", {
///     capabilityType: "example-value",
///     chaosStudioTargetId: exampleTarget.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.containerservice.KubernetesCluster("example",
///     name="example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     dns_prefix="acctestaksexample",
///     default_node_pool={
///         "name": "example-value",
///         "node_count": "example-value",
///         "vm_size": "example-value",
///     },
///     identity={
///         "type": "example-value",
///     })
/// example_target = azure.chaosstudio.Target("example",
///     location=example_resource_group.location,
///     target_resource_id=example.id,
///     target_type="example-value")
/// example_capability = azure.chaosstudio.Capability("example",
///     capability_type="example-value",
///     chaos_studio_target_id=example_target.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = new Azure.ContainerService.KubernetesCluster("example", new()
///     {
///         Name = "example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         DnsPrefix = "acctestaksexample",
///         DefaultNodePool = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolArgs
///         {
///             Name = "example-value",
///             NodeCount = "example-value",
///             VmSize = "example-value",
///         },
///         Identity = new Azure.ContainerService.Inputs.KubernetesClusterIdentityArgs
///         {
///             Type = "example-value",
///         },
///     });
///
///     var exampleTarget = new Azure.ChaosStudio.Target("example", new()
///     {
///         Location = exampleResourceGroup.Location,
///         TargetResourceId = example.Id,
///         TargetType = "example-value",
///     });
///
///     var exampleCapability = new Azure.ChaosStudio.Capability("example", new()
///     {
///         CapabilityType = "example-value",
///         ChaosStudioTargetId = exampleTarget.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/chaosstudio"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := containerservice.NewKubernetesCluster(ctx, "example", &containerservice.KubernetesClusterArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			DnsPrefix:         pulumi.String("acctestaksexample"),
/// 			DefaultNodePool: &containerservice.KubernetesClusterDefaultNodePoolArgs{
/// 				Name:      pulumi.String("example-value"),
/// 				NodeCount: pulumi.Int("example-value"),
/// 				VmSize:    pulumi.String("example-value"),
/// 			},
/// 			Identity: &containerservice.KubernetesClusterIdentityArgs{
/// 				Type: pulumi.String("example-value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTarget, err := chaosstudio.NewTarget(ctx, "example", &chaosstudio.TargetArgs{
/// 			Location:         exampleResourceGroup.Location,
/// 			TargetResourceId: example.ID(),
/// 			TargetType:       pulumi.String("example-value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chaosstudio.NewCapability(ctx, "example", &chaosstudio.CapabilityArgs{
/// 			CapabilityType:      pulumi.String("example-value"),
/// 			ChaosStudioTargetId: exampleTarget.ID(),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.containerservice.KubernetesCluster;
/// import com.pulumi.azure.containerservice.KubernetesClusterArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterDefaultNodePoolArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterIdentityArgs;
/// import com.pulumi.azure.chaosstudio.Target;
/// import com.pulumi.azure.chaosstudio.TargetArgs;
/// import com.pulumi.azure.chaosstudio.Capability;
/// import com.pulumi.azure.chaosstudio.CapabilityArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var example = new KubernetesCluster("example", KubernetesClusterArgs.builder()
///             .name("example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .dnsPrefix("acctestaksexample")
///             .defaultNodePool(KubernetesClusterDefaultNodePoolArgs.builder()
///                 .name("example-value")
///                 .nodeCount("example-value")
///                 .vmSize("example-value")
///                 .build())
///             .identity(KubernetesClusterIdentityArgs.builder()
///                 .type("example-value")
///                 .build())
///             .build());
///
///         var exampleTarget = new Target("exampleTarget", TargetArgs.builder()
///             .location(exampleResourceGroup.location())
///             .targetResourceId(example.id())
///             .targetType("example-value")
///             .build());
///
///         var exampleCapability = new Capability("exampleCapability", CapabilityArgs.builder()
///             .capabilityType("example-value")
///             .chaosStudioTargetId(exampleTarget.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:containerservice:KubernetesCluster
///     properties:
///       name: example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       dnsPrefix: acctestaksexample
///       defaultNodePool:
///         name: example-value
///         nodeCount: example-value
///         vmSize: example-value
///       identity:
///         type: example-value
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleTarget:
///     type: azure:chaosstudio:Target
///     name: example
///     properties:
///       location: ${exampleResourceGroup.location}
///       targetResourceId: ${example.id}
///       targetType: example-value
///   exampleCapability:
///     type: azure:chaosstudio:Capability
///     name: example
///     properties:
///       capabilityType: example-value
///       chaosStudioTargetId: ${exampleTarget.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Chaos` - 2023-11-01
///
/// ## Import
///
/// An existing Chaos Studio Target can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:chaosstudio/capability:Capability example /{scope}/providers/Microsoft.Chaos/targets/{targetName}/capabilities/{capabilityName}
/// ```
///
/// * Where `{scope}` is the ID of the Azure Resource under which the Chaos Studio Target exists. For example `/subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/some-resource-group`.
/// * Where `{targetName}` is the name of the Target. For example `targetValue`.
/// * Where `{capabilityName}` is the name of the Capability. For example `capabilityName`.
class Capability extends pulumi.CustomResource {
  /// The capability that should be applied to the Chaos Studio Target. For supported values please see this Chaos Studio [Fault Library](https://learn.microsoft.com/azure/chaos-studio/chaos-studio-fault-library). Changing this forces a new Chaos Studio Capability to be created.
  late final pulumi.Output<String> capabilityType;
  /// The Unique Resource Name of the Capability.
  late final pulumi.Output<String> capabilityUrn;
  /// The Chaos Studio Target that the capability should be applied to. Changing this forces a new Chaos Studio Capability to be created.
  late final pulumi.Output<String> chaosStudioTargetId;

  /// Creates a new [Capability].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Capability]. {@macro pulumi_chaosstudio_capability_capability_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Capability(
    String name, {
    CapabilityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:chaosstudio/capability:Capability',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.capabilityType = registerOutput<String>('capabilityType');
    this.capabilityUrn = registerOutput<String>('capabilityUrn');
    this.chaosStudioTargetId = registerOutput<String>('chaosStudioTargetId');
  }
}
