import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_pool_args.dart';
import 'system_data_response.dart';

/// The agentpool that has the ARM resource and properties.
/// The agentpool will have all information to create an agent pool.
///
/// Uses Azure REST API version 2019-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2019-06-01-preview.
///
/// Other available API versions: 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AgentPools_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.ContainerRegistry.AgentPool("agentPool", new()
///     {
///         AgentPoolName = "myAgentPool",
///         Count = 1,
///         Location = "WESTUS",
///         Os = AzureNative.ContainerRegistry.OS.Linux,
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "key", "value" },
///         },
///         Tier = "S1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewAgentPool(ctx, "agentPool", &containerregistry.AgentPoolArgs{
/// 			AgentPoolName:     pulumi.String("myAgentPool"),
/// 			Count:             pulumi.Int(1),
/// 			Location:          pulumi.String("WESTUS"),
/// 			Os:                pulumi.String(containerregistry.OSLinux),
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			Tier: pulumi.String("S1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.containerregistry.AgentPool;
/// import com.pulumi.azurenative.containerregistry.AgentPoolArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .agentPoolName("myAgentPool")
///             .count(1)
///             .location("WESTUS")
///             .os("Linux")
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.of("key", "value"))
///             .tier("S1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const agentPool = new azure_native.containerregistry.AgentPool("agentPool", {
///     agentPoolName: "myAgentPool",
///     count: 1,
///     location: "WESTUS",
///     os: azure_native.containerregistry.OS.Linux,
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         key: "value",
///     },
///     tier: "S1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.containerregistry.AgentPool("agentPool",
///     agent_pool_name="myAgentPool",
///     count=1,
///     location="WESTUS",
///     os=azure_native.containerregistry.OS.LINUX,
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     tags={
///         "key": "value",
///     },
///     tier="S1")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:containerregistry:AgentPool
///     properties:
///       agentPoolName: myAgentPool
///       count: 1
///       location: WESTUS
///       os: Linux
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       tags:
///         key: value
///       tier: S1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:containerregistry:AgentPool myAgentPool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/agentPools/{agentPoolName}
/// ```
class AgentPool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The count of agent machine
  late final pulumi.Output<int?> count;
  /// The location of the resource. This cannot be changed after the resource is created.
  late final pulumi.Output<String> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The OS of agent machine
  late final pulumi.Output<String?> os;
  /// The provisioning state of this agent pool
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Tier of agent machine
  late final pulumi.Output<String?> tier;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// The Virtual Network Subnet Resource Id of the agent machine
  late final pulumi.Output<String?> virtualNetworkSubnetResourceId;

  /// Creates a new [AgentPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPool]. {@macro pulumi_containerregistry_agent_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPool(
    String name, {
    AgentPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerregistry:AgentPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.count = registerOutput<int?>('count');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.os = registerOutput<String?>('os');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tier = registerOutput<String?>('tier');
    this.type = registerOutput<String>('type');
    this.virtualNetworkSubnetResourceId = registerOutput<String?>('virtualNetworkSubnetResourceId');
  }
}
