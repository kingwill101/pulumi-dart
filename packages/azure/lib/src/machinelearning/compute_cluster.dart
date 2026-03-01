import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_cluster_args.dart';
import 'compute_cluster_identity.dart';
import 'compute_cluster_scale_settings.dart';
import 'compute_cluster_ssh.dart';

/// Manages a Machine Learning Compute Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "west europe",
///     tags: {
///         stage: "example",
///     },
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "example-ai",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example-kv",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleWorkspace = new azure.machinelearning.Workspace("example", {
///     name: "example-mlw",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationInsightsId: exampleInsights.id,
///     keyVaultId: exampleKeyVault.id,
///     storageAccountId: exampleAccount.id,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.1.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.1.0.0/24"],
/// });
/// const test = new azure.machinelearning.ComputeCluster("test", {
///     name: "example",
///     location: example.location,
///     vmPriority: "LowPriority",
///     vmSize: "Standard_DS2_v2",
///     machineLearningWorkspaceId: exampleWorkspace.id,
///     subnetResourceId: exampleSubnet.id,
///     scaleSettings: {
///         minNodeCount: 0,
///         maxNodeCount: 1,
///         scaleDownNodesAfterIdleDuration: "PT30S",
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="west europe",
///     tags={
///         "stage": "example",
///     })
/// example_insights = azure.appinsights.Insights("example",
///     name="example-ai",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example-kv",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True)
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     location=example.location,
///     resource_group_name=example.name,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_workspace = azure.machinelearning.Workspace("example",
///     name="example-mlw",
///     location=example.location,
///     resource_group_name=example.name,
///     application_insights_id=example_insights.id,
///     key_vault_id=example_key_vault.id,
///     storage_account_id=example_account.id,
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.1.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.1.0.0/24"])
/// test = azure.machinelearning.ComputeCluster("test",
///     name="example",
///     location=example.location,
///     vm_priority="LowPriority",
///     vm_size="Standard_DS2_v2",
///     machine_learning_workspace_id=example_workspace.id,
///     subnet_resource_id=example_subnet.id,
///     scale_settings={
///         "min_node_count": 0,
///         "max_node_count": 1,
///         "scale_down_nodes_after_idle_duration": "PT30S",
///     },
///     identity={
///         "type": "SystemAssigned",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-rg",
///         Location = "west europe",
///         Tags =
///         {
///             { "stage", "example" },
///         },
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "example-ai",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example-kv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         PurgeProtectionEnabled = true,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleWorkspace = new Azure.MachineLearning.Workspace("example", new()
///     {
///         Name = "example-mlw",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationInsightsId = exampleInsights.Id,
///         KeyVaultId = exampleKeyVault.Id,
///         StorageAccountId = exampleAccount.Id,
///         Identity = new Azure.MachineLearning.Inputs.WorkspaceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.1.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.1.0.0/24",
///         },
///     });
///
///     var test = new Azure.MachineLearning.ComputeCluster("test", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         VmPriority = "LowPriority",
///         VmSize = "Standard_DS2_v2",
///         MachineLearningWorkspaceId = exampleWorkspace.Id,
///         SubnetResourceId = exampleSubnet.Id,
///         ScaleSettings = new Azure.MachineLearning.Inputs.ComputeClusterScaleSettingsArgs
///         {
///             MinNodeCount = 0,
///             MaxNodeCount = 1,
///             ScaleDownNodesAfterIdleDuration = "PT30S",
///         },
///         Identity = new Azure.MachineLearning.Inputs.ComputeClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/machinelearning"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("west europe"),
/// 			Tags: pulumi.StringMap{
/// 				"stage": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("example-ai"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                   pulumi.String("example-kv"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			TenantId:               pulumi.String(current.TenantId),
/// 			SkuName:                pulumi.String("standard"),
/// 			PurgeProtectionEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := machinelearning.NewWorkspace(ctx, "example", &machinelearning.WorkspaceArgs{
/// 			Name:                  pulumi.String("example-mlw"),
/// 			Location:              example.Location,
/// 			ResourceGroupName:     example.Name,
/// 			ApplicationInsightsId: exampleInsights.ID(),
/// 			KeyVaultId:            exampleKeyVault.ID(),
/// 			StorageAccountId:      exampleAccount.ID(),
/// 			Identity: &machinelearning.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.1.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.1.0.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = machinelearning.NewComputeCluster(ctx, "test", &machinelearning.ComputeClusterArgs{
/// 			Name:                       pulumi.String("example"),
/// 			Location:                   example.Location,
/// 			VmPriority:                 pulumi.String("LowPriority"),
/// 			VmSize:                     pulumi.String("Standard_DS2_v2"),
/// 			MachineLearningWorkspaceId: exampleWorkspace.ID(),
/// 			SubnetResourceId:           exampleSubnet.ID(),
/// 			ScaleSettings: &machinelearning.ComputeClusterScaleSettingsArgs{
/// 				MinNodeCount:                    pulumi.Int(0),
/// 				MaxNodeCount:                    pulumi.Int(1),
/// 				ScaleDownNodesAfterIdleDuration: pulumi.String("PT30S"),
/// 			},
/// 			Identity: &machinelearning.ComputeClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.machinelearning.Workspace;
/// import com.pulumi.azure.machinelearning.WorkspaceArgs;
/// import com.pulumi.azure.machinelearning.inputs.WorkspaceIdentityArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.machinelearning.ComputeCluster;
/// import com.pulumi.azure.machinelearning.ComputeClusterArgs;
/// import com.pulumi.azure.machinelearning.inputs.ComputeClusterScaleSettingsArgs;
/// import com.pulumi.azure.machinelearning.inputs.ComputeClusterIdentityArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-rg")
///             .location("west europe")
///             .tags(Map.of("stage", "example"))
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("example-ai")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example-kv")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-mlw")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationInsightsId(exampleInsights.id())
///             .keyVaultId(exampleKeyVault.id())
///             .storageAccountId(exampleAccount.id())
///             .identity(WorkspaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.1.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.1.0.0/24")
///             .build());
///
///         var test = new ComputeCluster("test", ComputeClusterArgs.builder()
///             .name("example")
///             .location(example.location())
///             .vmPriority("LowPriority")
///             .vmSize("Standard_DS2_v2")
///             .machineLearningWorkspaceId(exampleWorkspace.id())
///             .subnetResourceId(exampleSubnet.id())
///             .scaleSettings(ComputeClusterScaleSettingsArgs.builder()
///                 .minNodeCount(0)
///                 .maxNodeCount(1)
///                 .scaleDownNodesAfterIdleDuration("PT30S")
///                 .build())
///             .identity(ComputeClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-rg
///       location: west europe
///       tags:
///         stage: example
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: example-ai
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example-kv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       purgeProtectionEnabled: true
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleWorkspace:
///     type: azure:machinelearning:Workspace
///     name: example
///     properties:
///       name: example-mlw
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationInsightsId: ${exampleInsights.id}
///       keyVaultId: ${exampleKeyVault.id}
///       storageAccountId: ${exampleAccount.id}
///       identity:
///         type: SystemAssigned
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.1.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.1.0.0/24
///   test:
///     type: azure:machinelearning:ComputeCluster
///     properties:
///       name: example
///       location: ${example.location}
///       vmPriority: LowPriority
///       vmSize: Standard_DS2_v2
///       machineLearningWorkspaceId: ${exampleWorkspace.id}
///       subnetResourceId: ${exampleSubnet.id}
///       scaleSettings:
///         minNodeCount: 0
///         maxNodeCount: 1
///         scaleDownNodesAfterIdleDuration: PT30S
///       identity:
///         type: SystemAssigned
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.MachineLearningServices` - 2025-06-01
///
/// ## Import
///
/// Machine Learning Compute Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:machinelearning/computeCluster:ComputeCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.MachineLearningServices/workspaces/workspace1/computes/cluster1
/// ```
class ComputeCluster extends pulumi.CustomResource {
  /// The description of the Machine Learning compute. Changing this forces a new Machine Learning Compute Cluster to be created.
  late final pulumi.Output<String?> description;
  /// An `identity` block as defined below.
  late final pulumi.Output<ComputeClusterIdentity?> identity;
  /// Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created.
  late final pulumi.Output<bool?> localAuthEnabled;
  /// The Azure Region where the Machine Learning Compute Cluster should exist. Changing this forces a new Machine Learning Compute Cluster to be created.
  late final pulumi.Output<String> location;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Cluster to be created.
  late final pulumi.Output<String> machineLearningWorkspaceId;
  /// The name which should be used for this Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created.
  late final pulumi.Output<String> name;
  /// Whether the compute cluster will have a public ip. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created.
  late final pulumi.Output<bool?> nodePublicIpEnabled;
  /// A `scale_settings` block as defined below.
  late final pulumi.Output<ComputeClusterScaleSettings> scaleSettings;
  /// Credentials for an administrator user account that will be created on each compute node. A `ssh` block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
  late final pulumi.Output<ComputeClusterSsh?> ssh;
  /// A boolean value indicating whether enable the public SSH port. Defaults to `false`. Changing this forces a new Machine Learning Compute Cluster to be created.
  late final pulumi.Output<bool?> sshPublicAccessEnabled;
  /// The ID of the Subnet that the Compute Cluster should reside in. Changing this forces a new Machine Learning Compute Cluster to be created.
  late final pulumi.Output<String> subnetResourceId;
  /// A mapping of tags which should be assigned to the Machine Learning Compute Cluster.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The priority of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. Accepted values are `Dedicated` and `LowPriority`.
  late final pulumi.Output<String> vmPriority;
  /// The size of the VM. Changing this forces a new Machine Learning Compute Cluster to be created.
  late final pulumi.Output<String> vmSize;

  /// Creates a new [ComputeCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ComputeCluster]. {@macro pulumi_machinelearning_compute_cluster_compute_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ComputeCluster(
    String name, {
    ComputeClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:machinelearning/computeCluster:ComputeCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.identity = registerOutput<ComputeClusterIdentity?>('identity');
    this.localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    this.location = registerOutput<String>('location');
    this.machineLearningWorkspaceId = registerOutput<String>('machineLearningWorkspaceId');
    this.name = registerOutput<String>('name');
    this.nodePublicIpEnabled = registerOutput<bool?>('nodePublicIpEnabled');
    this.scaleSettings = registerOutput<ComputeClusterScaleSettings>('scaleSettings');
    this.ssh = registerOutput<ComputeClusterSsh?>('ssh');
    this.sshPublicAccessEnabled = registerOutput<bool?>('sshPublicAccessEnabled');
    this.subnetResourceId = registerOutput<String>('subnetResourceId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vmPriority = registerOutput<String>('vmPriority');
    this.vmSize = registerOutput<String>('vmSize');
  }
}
