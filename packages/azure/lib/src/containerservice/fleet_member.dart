import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_member_args.dart';

/// <!-- Note: This documentation is generated. Any manual changes will be overwritten -->
///
/// Manages a Kubernetes Fleet Member.
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
///         upgradeSettings: {
///             maxSurge: "example-value",
///         },
///     },
///     identity: {
///         type: "example-value",
///     },
/// });
/// const exampleKubernetesFleetManager = new azure.containerservice.KubernetesFleetManager("example", {
///     name: "example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleFleetMember = new azure.containerservice.FleetMember("example", {
///     kubernetesClusterId: example.id,
///     kubernetesFleetId: exampleKubernetesFleetManager.id,
///     name: "example",
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
///         "upgrade_settings": {
///             "max_surge": "example-value",
///         },
///     },
///     identity={
///         "type": "example-value",
///     })
/// example_kubernetes_fleet_manager = azure.containerservice.KubernetesFleetManager("example",
///     name="example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_fleet_member = azure.containerservice.FleetMember("example",
///     kubernetes_cluster_id=example.id,
///     kubernetes_fleet_id=example_kubernetes_fleet_manager.id,
///     name="example")
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
///             UpgradeSettings = new Azure.ContainerService.Inputs.KubernetesClusterDefaultNodePoolUpgradeSettingsArgs
///             {
///                 MaxSurge = "example-value",
///             },
///         },
///         Identity = new Azure.ContainerService.Inputs.KubernetesClusterIdentityArgs
///         {
///             Type = "example-value",
///         },
///     });
///
///     var exampleKubernetesFleetManager = new Azure.ContainerService.KubernetesFleetManager("example", new()
///     {
///         Name = "example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleFleetMember = new Azure.ContainerService.FleetMember("example", new()
///     {
///         KubernetesClusterId = example.Id,
///         KubernetesFleetId = exampleKubernetesFleetManager.Id,
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 				UpgradeSettings: &containerservice.KubernetesClusterDefaultNodePoolUpgradeSettingsArgs{
/// 					MaxSurge: pulumi.String("example-value"),
/// 				},
/// 			},
/// 			Identity: &containerservice.KubernetesClusterIdentityArgs{
/// 				Type: pulumi.String("example-value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKubernetesFleetManager, err := containerservice.NewKubernetesFleetManager(ctx, "example", &containerservice.KubernetesFleetManagerArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewFleetMember(ctx, "example", &containerservice.FleetMemberArgs{
/// 			KubernetesClusterId: example.ID(),
/// 			KubernetesFleetId:   exampleKubernetesFleetManager.ID(),
/// 			Name:                pulumi.String("example"),
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
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterDefaultNodePoolUpgradeSettingsArgs;
/// import com.pulumi.azure.containerservice.inputs.KubernetesClusterIdentityArgs;
/// import com.pulumi.azure.containerservice.KubernetesFleetManager;
/// import com.pulumi.azure.containerservice.KubernetesFleetManagerArgs;
/// import com.pulumi.azure.containerservice.FleetMember;
/// import com.pulumi.azure.containerservice.FleetMemberArgs;
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
///                 .upgradeSettings(KubernetesClusterDefaultNodePoolUpgradeSettingsArgs.builder()
///                     .maxSurge("example-value")
///                     .build())
///                 .build())
///             .identity(KubernetesClusterIdentityArgs.builder()
///                 .type("example-value")
///                 .build())
///             .build());
///
///         var exampleKubernetesFleetManager = new KubernetesFleetManager("exampleKubernetesFleetManager", KubernetesFleetManagerArgs.builder()
///             .name("example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleFleetMember = new FleetMember("exampleFleetMember", FleetMemberArgs.builder()
///             .kubernetesClusterId(example.id())
///             .kubernetesFleetId(exampleKubernetesFleetManager.id())
///             .name("example")
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
///         upgradeSettings:
///           maxSurge: example-value
///       identity:
///         type: example-value
///   exampleKubernetesFleetManager:
///     type: azure:containerservice:KubernetesFleetManager
///     name: example
///     properties:
///       name: example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleFleetMember:
///     type: azure:containerservice:FleetMember
///     name: example
///     properties:
///       kubernetesClusterId: ${example.id}
///       kubernetesFleetId: ${exampleKubernetesFleetManager.id}
///       name: example
/// ```
///
///
/// ## Import
///
/// An existing Kubernetes Fleet Member can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/fleetMember:FleetMember example /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/fleets/{fleetName}/members/{memberName}
/// ```
///
/// * Where `{subscriptionId}` is the ID of the Azure Subscription where the Kubernetes Fleet Member exists. For example `12345678-1234-9876-4563-123456789012`.
/// * Where `{resourceGroupName}` is the name of Resource Group where this Kubernetes Fleet Member exists. For example `example-resource-group`.
/// * Where `{fleetName}` is the name of the Fleet. For example `fleetValue`.
/// * Where `{memberName}` is the name of the Member. For example `memberValue`.
class FleetMember extends pulumi.CustomResource {
  /// The group this member belongs to for multi-cluster update management.
  late final pulumi.Output<String?> group;
  /// The ARM resource ID of the cluster that joins the Fleet. Changing this forces a new Kubernetes Fleet Member to be created.
  late final pulumi.Output<String> kubernetesClusterId;
  /// Specifies the Kubernetes Fleet Id within which this Kubernetes Fleet Member should exist. Changing this forces a new Kubernetes Fleet Member to be created.
  late final pulumi.Output<String> kubernetesFleetId;
  /// Specifies the name of this Kubernetes Fleet Member. Changing this forces a new Kubernetes Fleet Member to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [FleetMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FleetMember]. {@macro pulumi_containerservice_fleet_member_fleet_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FleetMember(
    String name, {
    FleetMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/fleetMember:FleetMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.group = registerOutput<String?>('group');
    this.kubernetesClusterId = registerOutput<String>('kubernetesClusterId');
    this.kubernetesFleetId = registerOutput<String>('kubernetesFleetId');
    this.name = registerOutput<String>('name');
  }
}
