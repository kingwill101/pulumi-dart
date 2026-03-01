import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_mapping_args.dart';

/// Manages a site recovery network mapping on Azure. A network mapping decides how to translate connected networks when a VM is migrated from one region to another.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const primary = new azure.core.ResourceGroup("primary", {
///     name: "tfex-network-mapping-primary",
///     location: "West US",
/// });
/// const secondary = new azure.core.ResourceGroup("secondary", {
///     name: "tfex-network-mapping-secondary",
///     location: "East US",
/// });
/// const vault = new azure.recoveryservices.Vault("vault", {
///     name: "example-recovery-vault",
///     location: secondary.location,
///     resourceGroupName: secondary.name,
///     sku: "Standard",
/// });
/// const primaryFabric = new azure.siterecovery.Fabric("primary", {
///     name: "primary-fabric",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     location: primary.location,
/// });
/// const secondaryFabric = new azure.siterecovery.Fabric("secondary", {
///     name: "secondary-fabric",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     location: secondary.location,
/// }, {
///     dependsOn: [primaryFabric],
/// });
/// const primaryVirtualNetwork = new azure.network.VirtualNetwork("primary", {
///     name: "network1",
///     resourceGroupName: primary.name,
///     addressSpaces: ["192.168.1.0/24"],
///     location: primary.location,
/// });
/// const secondaryVirtualNetwork = new azure.network.VirtualNetwork("secondary", {
///     name: "network2",
///     resourceGroupName: secondary.name,
///     addressSpaces: ["192.168.2.0/24"],
///     location: secondary.location,
/// });
/// const recovery_mapping = new azure.siterecovery.NetworkMapping("recovery-mapping", {
///     name: "recovery-network-mapping-1",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     sourceRecoveryFabricName: "primary-fabric",
///     targetRecoveryFabricName: "secondary-fabric",
///     sourceNetworkId: primaryVirtualNetwork.id,
///     targetNetworkId: secondaryVirtualNetwork.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// primary = azure.core.ResourceGroup("primary",
///     name="tfex-network-mapping-primary",
///     location="West US")
/// secondary = azure.core.ResourceGroup("secondary",
///     name="tfex-network-mapping-secondary",
///     location="East US")
/// vault = azure.recoveryservices.Vault("vault",
///     name="example-recovery-vault",
///     location=secondary.location,
///     resource_group_name=secondary.name,
///     sku="Standard")
/// primary_fabric = azure.siterecovery.Fabric("primary",
///     name="primary-fabric",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     location=primary.location)
/// secondary_fabric = azure.siterecovery.Fabric("secondary",
///     name="secondary-fabric",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     location=secondary.location,
///     opts = pulumi.ResourceOptions(depends_on=[primary_fabric]))
/// primary_virtual_network = azure.network.VirtualNetwork("primary",
///     name="network1",
///     resource_group_name=primary.name,
///     address_spaces=["192.168.1.0/24"],
///     location=primary.location)
/// secondary_virtual_network = azure.network.VirtualNetwork("secondary",
///     name="network2",
///     resource_group_name=secondary.name,
///     address_spaces=["192.168.2.0/24"],
///     location=secondary.location)
/// recovery_mapping = azure.siterecovery.NetworkMapping("recovery-mapping",
///     name="recovery-network-mapping-1",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     source_recovery_fabric_name="primary-fabric",
///     target_recovery_fabric_name="secondary-fabric",
///     source_network_id=primary_virtual_network.id,
///     target_network_id=secondary_virtual_network.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Azure.Core.ResourceGroup("primary", new()
///     {
///         Name = "tfex-network-mapping-primary",
///         Location = "West US",
///     });
///
///     var secondary = new Azure.Core.ResourceGroup("secondary", new()
///     {
///         Name = "tfex-network-mapping-secondary",
///         Location = "East US",
///     });
///
///     var vault = new Azure.RecoveryServices.Vault("vault", new()
///     {
///         Name = "example-recovery-vault",
///         Location = secondary.Location,
///         ResourceGroupName = secondary.Name,
///         Sku = "Standard",
///     });
///
///     var primaryFabric = new Azure.SiteRecovery.Fabric("primary", new()
///     {
///         Name = "primary-fabric",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         Location = primary.Location,
///     });
///
///     var secondaryFabric = new Azure.SiteRecovery.Fabric("secondary", new()
///     {
///         Name = "secondary-fabric",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         Location = secondary.Location,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primaryFabric,
///         },
///     });
///
///     var primaryVirtualNetwork = new Azure.Network.VirtualNetwork("primary", new()
///     {
///         Name = "network1",
///         ResourceGroupName = primary.Name,
///         AddressSpaces = new[]
///         {
///             "192.168.1.0/24",
///         },
///         Location = primary.Location,
///     });
///
///     var secondaryVirtualNetwork = new Azure.Network.VirtualNetwork("secondary", new()
///     {
///         Name = "network2",
///         ResourceGroupName = secondary.Name,
///         AddressSpaces = new[]
///         {
///             "192.168.2.0/24",
///         },
///         Location = secondary.Location,
///     });
///
///     var recovery_mapping = new Azure.SiteRecovery.NetworkMapping("recovery-mapping", new()
///     {
///         Name = "recovery-network-mapping-1",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         SourceRecoveryFabricName = "primary-fabric",
///         TargetRecoveryFabricName = "secondary-fabric",
///         SourceNetworkId = primaryVirtualNetwork.Id,
///         TargetNetworkId = secondaryVirtualNetwork.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/recoveryservices"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/siterecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.NewResourceGroup(ctx, "primary", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-network-mapping-primary"),
/// 			Location: pulumi.String("West US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := core.NewResourceGroup(ctx, "secondary", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-network-mapping-secondary"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vault, err := recoveryservices.NewVault(ctx, "vault", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("example-recovery-vault"),
/// 			Location:          secondary.Location,
/// 			ResourceGroupName: secondary.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryFabric, err := siterecovery.NewFabric(ctx, "primary", &siterecovery.FabricArgs{
/// 			Name:              pulumi.String("primary-fabric"),
/// 			ResourceGroupName: secondary.Name,
/// 			RecoveryVaultName: vault.Name,
/// 			Location:          primary.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siterecovery.NewFabric(ctx, "secondary", &siterecovery.FabricArgs{
/// 			Name:              pulumi.String("secondary-fabric"),
/// 			ResourceGroupName: secondary.Name,
/// 			RecoveryVaultName: vault.Name,
/// 			Location:          secondary.Location,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primaryFabric,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryVirtualNetwork, err := network.NewVirtualNetwork(ctx, "primary", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("network1"),
/// 			ResourceGroupName: primary.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("192.168.1.0/24"),
/// 			},
/// 			Location: primary.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondaryVirtualNetwork, err := network.NewVirtualNetwork(ctx, "secondary", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("network2"),
/// 			ResourceGroupName: secondary.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("192.168.2.0/24"),
/// 			},
/// 			Location: secondary.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siterecovery.NewNetworkMapping(ctx, "recovery-mapping", &siterecovery.NetworkMappingArgs{
/// 			Name:                     pulumi.String("recovery-network-mapping-1"),
/// 			ResourceGroupName:        secondary.Name,
/// 			RecoveryVaultName:        vault.Name,
/// 			SourceRecoveryFabricName: pulumi.String("primary-fabric"),
/// 			TargetRecoveryFabricName: pulumi.String("secondary-fabric"),
/// 			SourceNetworkId:          primaryVirtualNetwork.ID(),
/// 			TargetNetworkId:          secondaryVirtualNetwork.ID(),
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
/// import com.pulumi.azure.recoveryservices.Vault;
/// import com.pulumi.azure.recoveryservices.VaultArgs;
/// import com.pulumi.azure.siterecovery.Fabric;
/// import com.pulumi.azure.siterecovery.FabricArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.siterecovery.NetworkMapping;
/// import com.pulumi.azure.siterecovery.NetworkMappingArgs;
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
///         var primary = new ResourceGroup("primary", ResourceGroupArgs.builder()
///             .name("tfex-network-mapping-primary")
///             .location("West US")
///             .build());
///
///         var secondary = new ResourceGroup("secondary", ResourceGroupArgs.builder()
///             .name("tfex-network-mapping-secondary")
///             .location("East US")
///             .build());
///
///         var vault = new Vault("vault", VaultArgs.builder()
///             .name("example-recovery-vault")
///             .location(secondary.location())
///             .resourceGroupName(secondary.name())
///             .sku("Standard")
///             .build());
///
///         var primaryFabric = new Fabric("primaryFabric", FabricArgs.builder()
///             .name("primary-fabric")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .location(primary.location())
///             .build());
///
///         var secondaryFabric = new Fabric("secondaryFabric", FabricArgs.builder()
///             .name("secondary-fabric")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .location(secondary.location())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primaryFabric)
///                 .build());
///
///         var primaryVirtualNetwork = new VirtualNetwork("primaryVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("network1")
///             .resourceGroupName(primary.name())
///             .addressSpaces("192.168.1.0/24")
///             .location(primary.location())
///             .build());
///
///         var secondaryVirtualNetwork = new VirtualNetwork("secondaryVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("network2")
///             .resourceGroupName(secondary.name())
///             .addressSpaces("192.168.2.0/24")
///             .location(secondary.location())
///             .build());
///
///         var recovery_mapping = new NetworkMapping("recovery-mapping", NetworkMappingArgs.builder()
///             .name("recovery-network-mapping-1")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .sourceRecoveryFabricName("primary-fabric")
///             .targetRecoveryFabricName("secondary-fabric")
///             .sourceNetworkId(primaryVirtualNetwork.id())
///             .targetNetworkId(secondaryVirtualNetwork.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: azure:core:ResourceGroup
///     properties:
///       name: tfex-network-mapping-primary
///       location: West US
///   secondary:
///     type: azure:core:ResourceGroup
///     properties:
///       name: tfex-network-mapping-secondary
///       location: East US
///   vault:
///     type: azure:recoveryservices:Vault
///     properties:
///       name: example-recovery-vault
///       location: ${secondary.location}
///       resourceGroupName: ${secondary.name}
///       sku: Standard
///   primaryFabric:
///     type: azure:siterecovery:Fabric
///     name: primary
///     properties:
///       name: primary-fabric
///       resourceGroupName: ${secondary.name}
///       recoveryVaultName: ${vault.name}
///       location: ${primary.location}
///   secondaryFabric:
///     type: azure:siterecovery:Fabric
///     name: secondary
///     properties:
///       name: secondary-fabric
///       resourceGroupName: ${secondary.name}
///       recoveryVaultName: ${vault.name}
///       location: ${secondary.location}
///     options:
///       dependsOn:
///         - ${primaryFabric}
///   primaryVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: primary
///     properties:
///       name: network1
///       resourceGroupName: ${primary.name}
///       addressSpaces:
///         - 192.168.1.0/24
///       location: ${primary.location}
///   secondaryVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: secondary
///     properties:
///       name: network2
///       resourceGroupName: ${secondary.name}
///       addressSpaces:
///         - 192.168.2.0/24
///       location: ${secondary.location}
///   recovery-mapping:
///     type: azure:siterecovery:NetworkMapping
///     properties:
///       name: recovery-network-mapping-1
///       resourceGroupName: ${secondary.name}
///       recoveryVaultName: ${vault.name}
///       sourceRecoveryFabricName: primary-fabric
///       targetRecoveryFabricName: secondary-fabric
///       sourceNetworkId: ${primaryVirtualNetwork.id}
///       targetNetworkId: ${secondaryVirtualNetwork.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.RecoveryServices` - 2024-04-01
///
/// ## Import
///
/// Site Recovery Network Mapping can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:siterecovery/networkMapping:NetworkMapping mymapping /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-group-name/providers/Microsoft.RecoveryServices/vaults/recovery-vault-name/replicationFabrics/primary-fabric-name/replicationNetworks/azureNetwork/replicationNetworkMappings/mapping-name
/// ```
class NetworkMapping extends pulumi.CustomResource {
  /// The name of the network mapping. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The id of the primary network. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sourceNetworkId;
  /// Specifies the ASR fabric where mapping should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sourceRecoveryFabricName;
  /// The id of the recovery network. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetNetworkId;
  /// The Azure Site Recovery fabric object corresponding to the recovery Azure region. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetRecoveryFabricName;

  /// Creates a new [NetworkMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkMapping]. {@macro pulumi_siterecovery_network_mapping_network_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkMapping(
    String name, {
    NetworkMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/networkMapping:NetworkMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.recoveryVaultName = registerOutput<String>('recoveryVaultName');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sourceNetworkId = registerOutput<String>('sourceNetworkId');
    this.sourceRecoveryFabricName = registerOutput<String>('sourceRecoveryFabricName');
    this.targetNetworkId = registerOutput<String>('targetNetworkId');
    this.targetRecoveryFabricName = registerOutput<String>('targetRecoveryFabricName');
  }
}
