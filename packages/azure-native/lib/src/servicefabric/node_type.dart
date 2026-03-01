import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_network_interface_configuration_response.dart';
import 'endpoint_range_description_response.dart';
import 'frontend_configuration_response.dart';
import 'network_security_rule_response.dart';
import 'node_type_args.dart';
import 'node_type_nat_config_response.dart';
import 'node_type_sku_response.dart';
import 'system_data_response.dart';
import 'vault_secret_group_response.dart';
import 'vm_image_plan_response.dart';
import 'vm_managed_identity_response.dart';
import 'vmss_data_disk_response.dart';
import 'vmssextension_response.dart';

/// Describes a node type in the cluster, each node type represents sub set of nodes in the cluster.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01-preview, 2024-02-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-06-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native servicefabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put a node type with auto-scale parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nodeType = new AzureNative.ServiceFabric.NodeType("nodeType", new()
///     {
///         Capacities =
///         {
///             { "ClientConnections", "65536" },
///         },
///         ClusterName = "myCluster",
///         DataDiskSizeGB = 200,
///         DataDiskType = AzureNative.ServiceFabric.DiskType.Premium_LRS,
///         IsPrimary = false,
///         IsStateless = true,
///         MultiplePlacementGroups = true,
///         NodeTypeName = "BE",
///         PlacementProperties =
///         {
///             { "HasSSD", "true" },
///             { "NodeColor", "green" },
///             { "SomeProperty", "5" },
///         },
///         ResourceGroupName = "resRg",
///         VmExtensions = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.VMSSExtensionArgs
///             {
///                 AutoUpgradeMinorVersion = true,
///                 Name = "Microsoft.Azure.Geneva.GenevaMonitoring",
///                 Publisher = "Microsoft.Azure.Geneva",
///                 Settings = null,
///                 Type = "GenevaMonitoring",
///                 TypeHandlerVersion = "2.0",
///             },
///         },
///         VmImageOffer = "WindowsServer",
///         VmImagePublisher = "MicrosoftWindowsServer",
///         VmImageSku = "2016-Datacenter-Server-Core",
///         VmImageVersion = "latest",
///         VmInstanceCount = -1,
///         VmManagedIdentity = new AzureNative.ServiceFabric.Inputs.VmManagedIdentityArgs
///         {
///             UserAssignedIdentities = new[]
///             {
///                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity2",
///             },
///         },
///         VmSecrets = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.VaultSecretGroupArgs
///             {
///                 SourceVault = new AzureNative.ServiceFabric.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.KeyVault/vaults/myVault",
///                 },
///                 VaultCertificates = new[]
///                 {
///                     new AzureNative.ServiceFabric.Inputs.VaultCertificateArgs
///                     {
///                         CertificateStore = "My",
///                         CertificateUrl = "https://myVault.vault.azure.net:443/secrets/myCert/ef1a31d39e1f46bca33def54b6cda54c",
///                     },
///                 },
///             },
///         },
///         VmSize = "Standard_DS3",
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
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewNodeType(ctx, "nodeType", &servicefabric.NodeTypeArgs{
/// 			Capacities: pulumi.StringMap{
/// 				"ClientConnections": pulumi.String("65536"),
/// 			},
/// 			ClusterName:             pulumi.String("myCluster"),
/// 			DataDiskSizeGB:          pulumi.Int(200),
/// 			DataDiskType:            pulumi.String(servicefabric.DiskType_Premium_LRS),
/// 			IsPrimary:               pulumi.Bool(false),
/// 			IsStateless:             pulumi.Bool(true),
/// 			MultiplePlacementGroups: pulumi.Bool(true),
/// 			NodeTypeName:            pulumi.String("BE"),
/// 			PlacementProperties: pulumi.StringMap{
/// 				"HasSSD":       pulumi.String("true"),
/// 				"NodeColor":    pulumi.String("green"),
/// 				"SomeProperty": pulumi.String("5"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			VmExtensions: servicefabric.VMSSExtensionArray{
/// 				&servicefabric.VMSSExtensionArgs{
/// 					AutoUpgradeMinorVersion: pulumi.Bool(true),
/// 					Name:                    pulumi.String("Microsoft.Azure.Geneva.GenevaMonitoring"),
/// 					Publisher:               pulumi.String("Microsoft.Azure.Geneva"),
/// 					Settings:                pulumi.Any(map[string]interface{}{}),
/// 					Type:                    pulumi.String("GenevaMonitoring"),
/// 					TypeHandlerVersion:      pulumi.String("2.0"),
/// 				},
/// 			},
/// 			VmImageOffer:     pulumi.String("WindowsServer"),
/// 			VmImagePublisher: pulumi.String("MicrosoftWindowsServer"),
/// 			VmImageSku:       pulumi.String("2016-Datacenter-Server-Core"),
/// 			VmImageVersion:   pulumi.String("latest"),
/// 			VmInstanceCount:  pulumi.Int(-1),
/// 			VmManagedIdentity: &servicefabric.VmManagedIdentityArgs{
/// 				UserAssignedIdentities: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity"),
/// 					pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity2"),
/// 				},
/// 			},
/// 			VmSecrets: servicefabric.VaultSecretGroupArray{
/// 				&servicefabric.VaultSecretGroupArgs{
/// 					SourceVault: &servicefabric.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.KeyVault/vaults/myVault"),
/// 					},
/// 					VaultCertificates: servicefabric.VaultCertificateArray{
/// 						&servicefabric.VaultCertificateArgs{
/// 							CertificateStore: pulumi.String("My"),
/// 							CertificateUrl:   pulumi.String("https://myVault.vault.azure.net:443/secrets/myCert/ef1a31d39e1f46bca33def54b6cda54c"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmSize: pulumi.String("Standard_DS3"),
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
/// import com.pulumi.azurenative.servicefabric.NodeType;
/// import com.pulumi.azurenative.servicefabric.NodeTypeArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.VMSSExtensionArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.VmManagedIdentityArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.VaultSecretGroupArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.SubResourceArgs;
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
///         var nodeType = new NodeType("nodeType", NodeTypeArgs.builder()
///             .capacities(Map.of("ClientConnections", "65536"))
///             .clusterName("myCluster")
///             .dataDiskSizeGB(200)
///             .dataDiskType("Premium_LRS")
///             .isPrimary(false)
///             .isStateless(true)
///             .multiplePlacementGroups(true)
///             .nodeTypeName("BE")
///             .placementProperties(Map.ofEntries(
///                 Map.entry("HasSSD", "true"),
///                 Map.entry("NodeColor", "green"),
///                 Map.entry("SomeProperty", "5")
///             ))
///             .resourceGroupName("resRg")
///             .vmExtensions(VMSSExtensionArgs.builder()
///                 .autoUpgradeMinorVersion(true)
///                 .name("Microsoft.Azure.Geneva.GenevaMonitoring")
///                 .publisher("Microsoft.Azure.Geneva")
///                 .settings(Map.ofEntries(
///                 ))
///                 .type("GenevaMonitoring")
///                 .typeHandlerVersion("2.0")
///                 .build())
///             .vmImageOffer("WindowsServer")
///             .vmImagePublisher("MicrosoftWindowsServer")
///             .vmImageSku("2016-Datacenter-Server-Core")
///             .vmImageVersion("latest")
///             .vmInstanceCount(-1)
///             .vmManagedIdentity(VmManagedIdentityArgs.builder()
///                 .userAssignedIdentities(
///                     "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///                     "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity2")
///                 .build())
///             .vmSecrets(VaultSecretGroupArgs.builder()
///                 .sourceVault(SubResourceArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.KeyVault/vaults/myVault")
///                     .build())
///                 .vaultCertificates(VaultCertificateArgs.builder()
///                     .certificateStore("My")
///                     .certificateUrl("https://myVault.vault.azure.net:443/secrets/myCert/ef1a31d39e1f46bca33def54b6cda54c")
///                     .build())
///                 .build())
///             .vmSize("Standard_DS3")
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
/// const nodeType = new azure_native.servicefabric.NodeType("nodeType", {
///     capacities: {
///         ClientConnections: "65536",
///     },
///     clusterName: "myCluster",
///     dataDiskSizeGB: 200,
///     dataDiskType: azure_native.servicefabric.DiskType.Premium_LRS,
///     isPrimary: false,
///     isStateless: true,
///     multiplePlacementGroups: true,
///     nodeTypeName: "BE",
///     placementProperties: {
///         HasSSD: "true",
///         NodeColor: "green",
///         SomeProperty: "5",
///     },
///     resourceGroupName: "resRg",
///     vmExtensions: [{
///         autoUpgradeMinorVersion: true,
///         name: "Microsoft.Azure.Geneva.GenevaMonitoring",
///         publisher: "Microsoft.Azure.Geneva",
///         settings: {},
///         type: "GenevaMonitoring",
///         typeHandlerVersion: "2.0",
///     }],
///     vmImageOffer: "WindowsServer",
///     vmImagePublisher: "MicrosoftWindowsServer",
///     vmImageSku: "2016-Datacenter-Server-Core",
///     vmImageVersion: "latest",
///     vmInstanceCount: -1,
///     vmManagedIdentity: {
///         userAssignedIdentities: [
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity2",
///         ],
///     },
///     vmSecrets: [{
///         sourceVault: {
///             id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.KeyVault/vaults/myVault",
///         },
///         vaultCertificates: [{
///             certificateStore: "My",
///             certificateUrl: "https://myVault.vault.azure.net:443/secrets/myCert/ef1a31d39e1f46bca33def54b6cda54c",
///         }],
///     }],
///     vmSize: "Standard_DS3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// node_type = azure_native.servicefabric.NodeType("nodeType",
///     capacities={
///         "ClientConnections": "65536",
///     },
///     cluster_name="myCluster",
///     data_disk_size_gb=200,
///     data_disk_type=azure_native.servicefabric.DiskType.PREMIUM_LRS,
///     is_primary=False,
///     is_stateless=True,
///     multiple_placement_groups=True,
///     node_type_name="BE",
///     placement_properties={
///         "HasSSD": "true",
///         "NodeColor": "green",
///         "SomeProperty": "5",
///     },
///     resource_group_name="resRg",
///     vm_extensions=[{
///         "auto_upgrade_minor_version": True,
///         "name": "Microsoft.Azure.Geneva.GenevaMonitoring",
///         "publisher": "Microsoft.Azure.Geneva",
///         "settings": {},
///         "type": "GenevaMonitoring",
///         "type_handler_version": "2.0",
///     }],
///     vm_image_offer="WindowsServer",
///     vm_image_publisher="MicrosoftWindowsServer",
///     vm_image_sku="2016-Datacenter-Server-Core",
///     vm_image_version="latest",
///     vm_instance_count=-1,
///     vm_managed_identity={
///         "user_assigned_identities": [
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity2",
///         ],
///     },
///     vm_secrets=[{
///         "source_vault": {
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.KeyVault/vaults/myVault",
///         },
///         "vault_certificates": [{
///             "certificate_store": "My",
///             "certificate_url": "https://myVault.vault.azure.net:443/secrets/myCert/ef1a31d39e1f46bca33def54b6cda54c",
///         }],
///     }],
///     vm_size="Standard_DS3")
///
/// ```
///
/// ```yaml
/// resources:
///   nodeType:
///     type: azure-native:servicefabric:NodeType
///     properties:
///       capacities:
///         ClientConnections: '65536'
///       clusterName: myCluster
///       dataDiskSizeGB: 200
///       dataDiskType: Premium_LRS
///       isPrimary: false
///       isStateless: true
///       multiplePlacementGroups: true
///       nodeTypeName: BE
///       placementProperties:
///         HasSSD: 'true'
///         NodeColor: green
///         SomeProperty: '5'
///       resourceGroupName: resRg
///       vmExtensions:
///         - autoUpgradeMinorVersion: true
///           name: Microsoft.Azure.Geneva.GenevaMonitoring
///           publisher: Microsoft.Azure.Geneva
///           settings: {}
///           type: GenevaMonitoring
///           typeHandlerVersion: '2.0'
///       vmImageOffer: WindowsServer
///       vmImagePublisher: MicrosoftWindowsServer
///       vmImageSku: 2016-Datacenter-Server-Core
///       vmImageVersion: latest
///       vmInstanceCount: -1
///       vmManagedIdentity:
///         userAssignedIdentities:
///           - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity
///           - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity2
///       vmSecrets:
///         - sourceVault:
///             id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.KeyVault/vaults/myVault
///           vaultCertificates:
///             - certificateStore: My
///               certificateUrl: https://myVault.vault.azure.net:443/secrets/myCert/ef1a31d39e1f46bca33def54b6cda54c
///       vmSize: Standard_DS3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put a node type with maximum parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nodeType = new AzureNative.ServiceFabric.NodeType("nodeType", new()
///     {
///         AdditionalDataDisks = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.VmssDataDiskArgs
///             {
///                 DiskLetter = "F",
///                 DiskSizeGB = 256,
///                 DiskType = AzureNative.ServiceFabric.DiskType.StandardSSD_LRS,
///                 Lun = 1,
///             },
///             new AzureNative.ServiceFabric.Inputs.VmssDataDiskArgs
///             {
///                 DiskLetter = "G",
///                 DiskSizeGB = 150,
///                 DiskType = AzureNative.ServiceFabric.DiskType.Premium_LRS,
///                 Lun = 2,
///             },
///         },
///         AdditionalNetworkInterfaceConfigurations = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.AdditionalNetworkInterfaceConfigurationArgs
///             {
///                 DscpConfiguration = new AzureNative.ServiceFabric.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/dscpConfigurations/myDscpConfig",
///                 },
///                 EnableAcceleratedNetworking = true,
///                 IpConfigurations = new[]
///                 {
///                     new AzureNative.ServiceFabric.Inputs.IpConfigurationArgs
///                     {
///                         ApplicationGatewayBackendAddressPools = new[]
///                         {
///                             new AzureNative.ServiceFabric.Inputs.SubResourceArgs
///                             {
///                                 Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/applicationGateways/appgw-test/backendAddressPools/appgwBepoolTest",
///                             },
///                         },
///                         LoadBalancerBackendAddressPools = new[]
///                         {
///                             new AzureNative.ServiceFabric.Inputs.SubResourceArgs
///                             {
///                                 Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/backendAddressPools/LoadBalancerBEAddressPool",
///                             },
///                         },
///                         LoadBalancerInboundNatPools = new[]
///                         {
///                             new AzureNative.ServiceFabric.Inputs.SubResourceArgs
///                             {
///                                 Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/inboundNatPools/LoadBalancerNATPool",
///                             },
///                         },
///                         Name = "ipconfig-1",
///                         PrivateIPAddressVersion = AzureNative.ServiceFabric.PrivateIPAddressVersion.IPv4,
///                         PublicIPAddressConfiguration = new AzureNative.ServiceFabric.Inputs.IpConfigurationPublicIPAddressConfigurationArgs
///                         {
///                             IpTags = new[]
///                             {
///                                 new AzureNative.ServiceFabric.Inputs.IpTagArgs
///                                 {
///                                     IpTagType = "RoutingPreference",
///                                     Tag = "Internet",
///                                 },
///                             },
///                             Name = "publicip-1",
///                             PublicIPAddressVersion = AzureNative.ServiceFabric.PublicIPAddressVersion.IPv4,
///                         },
///                         Subnet = new AzureNative.ServiceFabric.Inputs.SubResourceArgs
///                         {
///                             Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///                         },
///                     },
///                 },
///                 Name = "nic-1",
///             },
///         },
///         Capacities =
///         {
///             { "ClientConnections", "65536" },
///         },
///         ClusterName = "myCluster",
///         ComputerNamePrefix = "BE",
///         DataDiskLetter = "S",
///         DataDiskSizeGB = 200,
///         DataDiskType = AzureNative.ServiceFabric.DiskType.Premium_LRS,
///         DscpConfigurationId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/dscpConfigurations/myDscpConfig",
///         EnableAcceleratedNetworking = true,
///         EnableEncryptionAtHost = true,
///         EnableNodePublicIP = true,
///         EnableNodePublicIPv6 = true,
///         EnableOverProvisioning = false,
///         EvictionPolicy = AzureNative.ServiceFabric.EvictionPolicyType.Deallocate,
///         FrontendConfigurations = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.FrontendConfigurationArgs
///             {
///                 ApplicationGatewayBackendAddressPoolId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/applicationGateways/appgw-test/backendAddressPools/appgwBepoolTest",
///                 LoadBalancerBackendAddressPoolId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/backendAddressPools/LoadBalancerBEAddressPool",
///                 LoadBalancerInboundNatPoolId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/inboundNatPools/LoadBalancerNATPool",
///             },
///         },
///         IsPrimary = false,
///         IsSpotVM = true,
///         IsStateless = true,
///         MultiplePlacementGroups = true,
///         NatGatewayId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/natGateways/myNatGateway",
///         NodeTypeName = "BE-testResourceGroup-testRegion-test",
///         PlacementProperties =
///         {
///             { "HasSSD", "true" },
///             { "NodeColor", "green" },
///             { "SomeProperty", "5" },
///         },
///         ResourceGroupName = "resRg",
///         SecureBootEnabled = true,
///         SecurityType = AzureNative.ServiceFabric.SecurityType.TrustedLaunch,
///         ServiceArtifactReferenceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Compute/galleries/myGallery/serviceArtifacts/myServiceArtifact/vmArtifactsProfiles/myVmArtifactProfile",
///         SpotRestoreTimeout = "PT30M",
///         SubnetId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///         UseDefaultPublicLoadBalancer = true,
///         UseEphemeralOSDisk = true,
///         VmExtensions = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.VMSSExtensionArgs
///             {
///                 AutoUpgradeMinorVersion = true,
///                 EnableAutomaticUpgrade = true,
///                 ForceUpdateTag = "v.1.0",
///                 Name = "Microsoft.Azure.Geneva.GenevaMonitoring",
///                 Publisher = "Microsoft.Azure.Geneva",
///                 Settings = null,
///                 SetupOrder = new[]
///                 {
///                     AzureNative.ServiceFabric.VmssExtensionSetupOrder.BeforeSFRuntime,
///                 },
///                 Type = "GenevaMonitoring",
///                 TypeHandlerVersion = "2.0",
///             },
///         },
///         VmImageOffer = "WindowsServer",
///         VmImagePublisher = "MicrosoftWindowsServer",
///         VmImageSku = "2016-Datacenter-Server-Core",
///         VmImageVersion = "latest",
///         VmInstanceCount = 10,
///         VmManagedIdentity = new AzureNative.ServiceFabric.Inputs.VmManagedIdentityArgs
///         {
///             UserAssignedIdentities = new[]
///             {
///                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity2",
///             },
///         },
///         VmSecrets = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.VaultSecretGroupArgs
///             {
///                 SourceVault = new AzureNative.ServiceFabric.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.KeyVault/vaults/myVault",
///                 },
///                 VaultCertificates = new[]
///                 {
///                     new AzureNative.ServiceFabric.Inputs.VaultCertificateArgs
///                     {
///                         CertificateStore = "My",
///                         CertificateUrl = "https://myVault.vault.azure.net:443/secrets/myCert/ef1a31d39e1f46bca33def54b6cda54c",
///                     },
///                 },
///             },
///         },
///         VmSetupActions = new[]
///         {
///             AzureNative.ServiceFabric.VmSetupAction.EnableContainers,
///             AzureNative.ServiceFabric.VmSetupAction.EnableHyperV,
///         },
///         VmSize = "Standard_DS3",
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
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewNodeType(ctx, "nodeType", &servicefabric.NodeTypeArgs{
/// 			AdditionalDataDisks: servicefabric.VmssDataDiskArray{
/// 				&servicefabric.VmssDataDiskArgs{
/// 					DiskLetter: pulumi.String("F"),
/// 					DiskSizeGB: pulumi.Int(256),
/// 					DiskType:   pulumi.String(servicefabric.DiskType_StandardSSD_LRS),
/// 					Lun:        pulumi.Int(1),
/// 				},
/// 				&servicefabric.VmssDataDiskArgs{
/// 					DiskLetter: pulumi.String("G"),
/// 					DiskSizeGB: pulumi.Int(150),
/// 					DiskType:   pulumi.String(servicefabric.DiskType_Premium_LRS),
/// 					Lun:        pulumi.Int(2),
/// 				},
/// 			},
/// 			AdditionalNetworkInterfaceConfigurations: servicefabric.AdditionalNetworkInterfaceConfigurationArray{
/// 				&servicefabric.AdditionalNetworkInterfaceConfigurationArgs{
/// 					DscpConfiguration: &servicefabric.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/dscpConfigurations/myDscpConfig"),
/// 					},
/// 					EnableAcceleratedNetworking: pulumi.Bool(true),
/// 					IpConfigurations: servicefabric.IpConfigurationArray{
/// 						&servicefabric.IpConfigurationArgs{
/// 							ApplicationGatewayBackendAddressPools: servicefabric.SubResourceArray{
/// 								&servicefabric.SubResourceArgs{
/// 									Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/applicationGateways/appgw-test/backendAddressPools/appgwBepoolTest"),
/// 								},
/// 							},
/// 							LoadBalancerBackendAddressPools: servicefabric.SubResourceArray{
/// 								&servicefabric.SubResourceArgs{
/// 									Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/backendAddressPools/LoadBalancerBEAddressPool"),
/// 								},
/// 							},
/// 							LoadBalancerInboundNatPools: servicefabric.SubResourceArray{
/// 								&servicefabric.SubResourceArgs{
/// 									Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/inboundNatPools/LoadBalancerNATPool"),
/// 								},
/// 							},
/// 							Name:                    pulumi.String("ipconfig-1"),
/// 							PrivateIPAddressVersion: pulumi.String(servicefabric.PrivateIPAddressVersionIPv4),
/// 							PublicIPAddressConfiguration: &servicefabric.IpConfigurationPublicIPAddressConfigurationArgs{
/// 								IpTags: servicefabric.IpTagArray{
/// 									&servicefabric.IpTagArgs{
/// 										IpTagType: pulumi.String("RoutingPreference"),
/// 										Tag:       pulumi.String("Internet"),
/// 									},
/// 								},
/// 								Name:                   pulumi.String("publicip-1"),
/// 								PublicIPAddressVersion: pulumi.String(servicefabric.PublicIPAddressVersionIPv4),
/// 							},
/// 							Subnet: &servicefabric.SubResourceArgs{
/// 								Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1"),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("nic-1"),
/// 				},
/// 			},
/// 			Capacities: pulumi.StringMap{
/// 				"ClientConnections": pulumi.String("65536"),
/// 			},
/// 			ClusterName:                 pulumi.String("myCluster"),
/// 			ComputerNamePrefix:          pulumi.String("BE"),
/// 			DataDiskLetter:              pulumi.String("S"),
/// 			DataDiskSizeGB:              pulumi.Int(200),
/// 			DataDiskType:                pulumi.String(servicefabric.DiskType_Premium_LRS),
/// 			DscpConfigurationId:         pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/dscpConfigurations/myDscpConfig"),
/// 			EnableAcceleratedNetworking: pulumi.Bool(true),
/// 			EnableEncryptionAtHost:      pulumi.Bool(true),
/// 			EnableNodePublicIP:          pulumi.Bool(true),
/// 			EnableNodePublicIPv6:        pulumi.Bool(true),
/// 			EnableOverProvisioning:      pulumi.Bool(false),
/// 			EvictionPolicy:              pulumi.String(servicefabric.EvictionPolicyTypeDeallocate),
/// 			FrontendConfigurations: servicefabric.FrontendConfigurationArray{
/// 				&servicefabric.FrontendConfigurationArgs{
/// 					ApplicationGatewayBackendAddressPoolId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/applicationGateways/appgw-test/backendAddressPools/appgwBepoolTest"),
/// 					LoadBalancerBackendAddressPoolId:       pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/backendAddressPools/LoadBalancerBEAddressPool"),
/// 					LoadBalancerInboundNatPoolId:           pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/inboundNatPools/LoadBalancerNATPool"),
/// 				},
/// 			},
/// 			IsPrimary:               pulumi.Bool(false),
/// 			IsSpotVM:                pulumi.Bool(true),
/// 			IsStateless:             pulumi.Bool(true),
/// 			MultiplePlacementGroups: pulumi.Bool(true),
/// 			NatGatewayId:            pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/natGateways/myNatGateway"),
/// 			NodeTypeName:            pulumi.String("BE-testResourceGroup-testRegion-test"),
/// 			PlacementProperties: pulumi.StringMap{
/// 				"HasSSD":       pulumi.String("true"),
/// 				"NodeColor":    pulumi.String("green"),
/// 				"SomeProperty": pulumi.String("5"),
/// 			},
/// 			ResourceGroupName:            pulumi.String("resRg"),
/// 			SecureBootEnabled:            pulumi.Bool(true),
/// 			SecurityType:                 pulumi.String(servicefabric.SecurityTypeTrustedLaunch),
/// 			ServiceArtifactReferenceId:   pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Compute/galleries/myGallery/serviceArtifacts/myServiceArtifact/vmArtifactsProfiles/myVmArtifactProfile"),
/// 			SpotRestoreTimeout:           pulumi.String("PT30M"),
/// 			SubnetId:                     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1"),
/// 			UseDefaultPublicLoadBalancer: pulumi.Bool(true),
/// 			UseEphemeralOSDisk:           pulumi.Bool(true),
/// 			VmExtensions: servicefabric.VMSSExtensionArray{
/// 				&servicefabric.VMSSExtensionArgs{
/// 					AutoUpgradeMinorVersion: pulumi.Bool(true),
/// 					EnableAutomaticUpgrade:  pulumi.Bool(true),
/// 					ForceUpdateTag:          pulumi.String("v.1.0"),
/// 					Name:                    pulumi.String("Microsoft.Azure.Geneva.GenevaMonitoring"),
/// 					Publisher:               pulumi.String("Microsoft.Azure.Geneva"),
/// 					Settings:                pulumi.Any(map[string]interface{}{}),
/// 					SetupOrder: pulumi.StringArray{
/// 						pulumi.String(servicefabric.VmssExtensionSetupOrderBeforeSFRuntime),
/// 					},
/// 					Type:               pulumi.String("GenevaMonitoring"),
/// 					TypeHandlerVersion: pulumi.String("2.0"),
/// 				},
/// 			},
/// 			VmImageOffer:     pulumi.String("WindowsServer"),
/// 			VmImagePublisher: pulumi.String("MicrosoftWindowsServer"),
/// 			VmImageSku:       pulumi.String("2016-Datacenter-Server-Core"),
/// 			VmImageVersion:   pulumi.String("latest"),
/// 			VmInstanceCount:  pulumi.Int(10),
/// 			VmManagedIdentity: &servicefabric.VmManagedIdentityArgs{
/// 				UserAssignedIdentities: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity"),
/// 					pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity2"),
/// 				},
/// 			},
/// 			VmSecrets: servicefabric.VaultSecretGroupArray{
/// 				&servicefabric.VaultSecretGroupArgs{
/// 					SourceVault: &servicefabric.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.KeyVault/vaults/myVault"),
/// 					},
/// 					VaultCertificates: servicefabric.VaultCertificateArray{
/// 						&servicefabric.VaultCertificateArgs{
/// 							CertificateStore: pulumi.String("My"),
/// 							CertificateUrl:   pulumi.String("https://myVault.vault.azure.net:443/secrets/myCert/ef1a31d39e1f46bca33def54b6cda54c"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VmSetupActions: pulumi.StringArray{
/// 				pulumi.String(servicefabric.VmSetupActionEnableContainers),
/// 				pulumi.String(servicefabric.VmSetupActionEnableHyperV),
/// 			},
/// 			VmSize: pulumi.String("Standard_DS3"),
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
/// import com.pulumi.azurenative.servicefabric.NodeType;
/// import com.pulumi.azurenative.servicefabric.NodeTypeArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.VmssDataDiskArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.AdditionalNetworkInterfaceConfigurationArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.FrontendConfigurationArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.VMSSExtensionArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.VmManagedIdentityArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.VaultSecretGroupArgs;
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
///         var nodeType = new NodeType("nodeType", NodeTypeArgs.builder()
///             .additionalDataDisks(
///                 VmssDataDiskArgs.builder()
///                     .diskLetter("F")
///                     .diskSizeGB(256)
///                     .diskType("StandardSSD_LRS")
///                     .lun(1)
///                     .build(),
///                 VmssDataDiskArgs.builder()
///                     .diskLetter("G")
///                     .diskSizeGB(150)
///                     .diskType("Premium_LRS")
///                     .lun(2)
///                     .build())
///             .additionalNetworkInterfaceConfigurations(AdditionalNetworkInterfaceConfigurationArgs.builder()
///                 .dscpConfiguration(SubResourceArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/dscpConfigurations/myDscpConfig")
///                     .build())
///                 .enableAcceleratedNetworking(true)
///                 .ipConfigurations(IpConfigurationArgs.builder()
///                     .applicationGatewayBackendAddressPools(SubResourceArgs.builder()
///                         .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/applicationGateways/appgw-test/backendAddressPools/appgwBepoolTest")
///                         .build())
///                     .loadBalancerBackendAddressPools(SubResourceArgs.builder()
///                         .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/backendAddressPools/LoadBalancerBEAddressPool")
///                         .build())
///                     .loadBalancerInboundNatPools(SubResourceArgs.builder()
///                         .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/inboundNatPools/LoadBalancerNATPool")
///                         .build())
///                     .name("ipconfig-1")
///                     .privateIPAddressVersion("IPv4")
///                     .publicIPAddressConfiguration(IpConfigurationPublicIPAddressConfigurationArgs.builder()
///                         .ipTags(IpTagArgs.builder()
///                             .ipTagType("RoutingPreference")
///                             .tag("Internet")
///                             .build())
///                         .name("publicip-1")
///                         .publicIPAddressVersion("IPv4")
///                         .build())
///                     .subnet(SubResourceArgs.builder()
///                         .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1")
///                         .build())
///                     .build())
///                 .name("nic-1")
///                 .build())
///             .capacities(Map.of("ClientConnections", "65536"))
///             .clusterName("myCluster")
///             .computerNamePrefix("BE")
///             .dataDiskLetter("S")
///             .dataDiskSizeGB(200)
///             .dataDiskType("Premium_LRS")
///             .dscpConfigurationId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/dscpConfigurations/myDscpConfig")
///             .enableAcceleratedNetworking(true)
///             .enableEncryptionAtHost(true)
///             .enableNodePublicIP(true)
///             .enableNodePublicIPv6(true)
///             .enableOverProvisioning(false)
///             .evictionPolicy("Deallocate")
///             .frontendConfigurations(FrontendConfigurationArgs.builder()
///                 .applicationGatewayBackendAddressPoolId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/applicationGateways/appgw-test/backendAddressPools/appgwBepoolTest")
///                 .loadBalancerBackendAddressPoolId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/backendAddressPools/LoadBalancerBEAddressPool")
///                 .loadBalancerInboundNatPoolId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/inboundNatPools/LoadBalancerNATPool")
///                 .build())
///             .isPrimary(false)
///             .isSpotVM(true)
///             .isStateless(true)
///             .multiplePlacementGroups(true)
///             .natGatewayId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/natGateways/myNatGateway")
///             .nodeTypeName("BE-testResourceGroup-testRegion-test")
///             .placementProperties(Map.ofEntries(
///                 Map.entry("HasSSD", "true"),
///                 Map.entry("NodeColor", "green"),
///                 Map.entry("SomeProperty", "5")
///             ))
///             .resourceGroupName("resRg")
///             .secureBootEnabled(true)
///             .securityType("TrustedLaunch")
///             .serviceArtifactReferenceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Compute/galleries/myGallery/serviceArtifacts/myServiceArtifact/vmArtifactsProfiles/myVmArtifactProfile")
///             .spotRestoreTimeout("PT30M")
///             .subnetId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1")
///             .useDefaultPublicLoadBalancer(true)
///             .useEphemeralOSDisk(true)
///             .vmExtensions(VMSSExtensionArgs.builder()
///                 .autoUpgradeMinorVersion(true)
///                 .enableAutomaticUpgrade(true)
///                 .forceUpdateTag("v.1.0")
///                 .name("Microsoft.Azure.Geneva.GenevaMonitoring")
///                 .publisher("Microsoft.Azure.Geneva")
///                 .settings(Map.ofEntries(
///                 ))
///                 .setupOrder("BeforeSFRuntime")
///                 .type("GenevaMonitoring")
///                 .typeHandlerVersion("2.0")
///                 .build())
///             .vmImageOffer("WindowsServer")
///             .vmImagePublisher("MicrosoftWindowsServer")
///             .vmImageSku("2016-Datacenter-Server-Core")
///             .vmImageVersion("latest")
///             .vmInstanceCount(10)
///             .vmManagedIdentity(VmManagedIdentityArgs.builder()
///                 .userAssignedIdentities(
///                     "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///                     "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity2")
///                 .build())
///             .vmSecrets(VaultSecretGroupArgs.builder()
///                 .sourceVault(SubResourceArgs.builder()
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.KeyVault/vaults/myVault")
///                     .build())
///                 .vaultCertificates(VaultCertificateArgs.builder()
///                     .certificateStore("My")
///                     .certificateUrl("https://myVault.vault.azure.net:443/secrets/myCert/ef1a31d39e1f46bca33def54b6cda54c")
///                     .build())
///                 .build())
///             .vmSetupActions(
///                 "EnableContainers",
///                 "EnableHyperV")
///             .vmSize("Standard_DS3")
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
/// const nodeType = new azure_native.servicefabric.NodeType("nodeType", {
///     additionalDataDisks: [
///         {
///             diskLetter: "F",
///             diskSizeGB: 256,
///             diskType: azure_native.servicefabric.DiskType.StandardSSD_LRS,
///             lun: 1,
///         },
///         {
///             diskLetter: "G",
///             diskSizeGB: 150,
///             diskType: azure_native.servicefabric.DiskType.Premium_LRS,
///             lun: 2,
///         },
///     ],
///     additionalNetworkInterfaceConfigurations: [{
///         dscpConfiguration: {
///             id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/dscpConfigurations/myDscpConfig",
///         },
///         enableAcceleratedNetworking: true,
///         ipConfigurations: [{
///             applicationGatewayBackendAddressPools: [{
///                 id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/applicationGateways/appgw-test/backendAddressPools/appgwBepoolTest",
///             }],
///             loadBalancerBackendAddressPools: [{
///                 id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/backendAddressPools/LoadBalancerBEAddressPool",
///             }],
///             loadBalancerInboundNatPools: [{
///                 id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/inboundNatPools/LoadBalancerNATPool",
///             }],
///             name: "ipconfig-1",
///             privateIPAddressVersion: azure_native.servicefabric.PrivateIPAddressVersion.IPv4,
///             publicIPAddressConfiguration: {
///                 ipTags: [{
///                     ipTagType: "RoutingPreference",
///                     tag: "Internet",
///                 }],
///                 name: "publicip-1",
///                 publicIPAddressVersion: azure_native.servicefabric.PublicIPAddressVersion.IPv4,
///             },
///             subnet: {
///                 id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///             },
///         }],
///         name: "nic-1",
///     }],
///     capacities: {
///         ClientConnections: "65536",
///     },
///     clusterName: "myCluster",
///     computerNamePrefix: "BE",
///     dataDiskLetter: "S",
///     dataDiskSizeGB: 200,
///     dataDiskType: azure_native.servicefabric.DiskType.Premium_LRS,
///     dscpConfigurationId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/dscpConfigurations/myDscpConfig",
///     enableAcceleratedNetworking: true,
///     enableEncryptionAtHost: true,
///     enableNodePublicIP: true,
///     enableNodePublicIPv6: true,
///     enableOverProvisioning: false,
///     evictionPolicy: azure_native.servicefabric.EvictionPolicyType.Deallocate,
///     frontendConfigurations: [{
///         applicationGatewayBackendAddressPoolId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/applicationGateways/appgw-test/backendAddressPools/appgwBepoolTest",
///         loadBalancerBackendAddressPoolId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/backendAddressPools/LoadBalancerBEAddressPool",
///         loadBalancerInboundNatPoolId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/inboundNatPools/LoadBalancerNATPool",
///     }],
///     isPrimary: false,
///     isSpotVM: true,
///     isStateless: true,
///     multiplePlacementGroups: true,
///     natGatewayId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/natGateways/myNatGateway",
///     nodeTypeName: "BE-testResourceGroup-testRegion-test",
///     placementProperties: {
///         HasSSD: "true",
///         NodeColor: "green",
///         SomeProperty: "5",
///     },
///     resourceGroupName: "resRg",
///     secureBootEnabled: true,
///     securityType: azure_native.servicefabric.SecurityType.TrustedLaunch,
///     serviceArtifactReferenceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Compute/galleries/myGallery/serviceArtifacts/myServiceArtifact/vmArtifactsProfiles/myVmArtifactProfile",
///     spotRestoreTimeout: "PT30M",
///     subnetId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///     useDefaultPublicLoadBalancer: true,
///     useEphemeralOSDisk: true,
///     vmExtensions: [{
///         autoUpgradeMinorVersion: true,
///         enableAutomaticUpgrade: true,
///         forceUpdateTag: "v.1.0",
///         name: "Microsoft.Azure.Geneva.GenevaMonitoring",
///         publisher: "Microsoft.Azure.Geneva",
///         settings: {},
///         setupOrder: [azure_native.servicefabric.VmssExtensionSetupOrder.BeforeSFRuntime],
///         type: "GenevaMonitoring",
///         typeHandlerVersion: "2.0",
///     }],
///     vmImageOffer: "WindowsServer",
///     vmImagePublisher: "MicrosoftWindowsServer",
///     vmImageSku: "2016-Datacenter-Server-Core",
///     vmImageVersion: "latest",
///     vmInstanceCount: 10,
///     vmManagedIdentity: {
///         userAssignedIdentities: [
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity2",
///         ],
///     },
///     vmSecrets: [{
///         sourceVault: {
///             id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.KeyVault/vaults/myVault",
///         },
///         vaultCertificates: [{
///             certificateStore: "My",
///             certificateUrl: "https://myVault.vault.azure.net:443/secrets/myCert/ef1a31d39e1f46bca33def54b6cda54c",
///         }],
///     }],
///     vmSetupActions: [
///         azure_native.servicefabric.VmSetupAction.EnableContainers,
///         azure_native.servicefabric.VmSetupAction.EnableHyperV,
///     ],
///     vmSize: "Standard_DS3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// node_type = azure_native.servicefabric.NodeType("nodeType",
///     additional_data_disks=[
///         {
///             "disk_letter": "F",
///             "disk_size_gb": 256,
///             "disk_type": azure_native.servicefabric.DiskType.STANDARD_SS_D_LRS,
///             "lun": 1,
///         },
///         {
///             "disk_letter": "G",
///             "disk_size_gb": 150,
///             "disk_type": azure_native.servicefabric.DiskType.PREMIUM_LRS,
///             "lun": 2,
///         },
///     ],
///     additional_network_interface_configurations=[{
///         "dscp_configuration": {
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/dscpConfigurations/myDscpConfig",
///         },
///         "enable_accelerated_networking": True,
///         "ip_configurations": [{
///             "application_gateway_backend_address_pools": [{
///                 "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/applicationGateways/appgw-test/backendAddressPools/appgwBepoolTest",
///             }],
///             "load_balancer_backend_address_pools": [{
///                 "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/backendAddressPools/LoadBalancerBEAddressPool",
///             }],
///             "load_balancer_inbound_nat_pools": [{
///                 "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/inboundNatPools/LoadBalancerNATPool",
///             }],
///             "name": "ipconfig-1",
///             "private_ip_address_version": azure_native.servicefabric.PrivateIPAddressVersion.I_PV4,
///             "public_ip_address_configuration": {
///                 "ip_tags": [{
///                     "ip_tag_type": "RoutingPreference",
///                     "tag": "Internet",
///                 }],
///                 "name": "publicip-1",
///                 "public_ip_address_version": azure_native.servicefabric.PublicIPAddressVersion.I_PV4,
///             },
///             "subnet": {
///                 "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///             },
///         }],
///         "name": "nic-1",
///     }],
///     capacities={
///         "ClientConnections": "65536",
///     },
///     cluster_name="myCluster",
///     computer_name_prefix="BE",
///     data_disk_letter="S",
///     data_disk_size_gb=200,
///     data_disk_type=azure_native.servicefabric.DiskType.PREMIUM_LRS,
///     dscp_configuration_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/dscpConfigurations/myDscpConfig",
///     enable_accelerated_networking=True,
///     enable_encryption_at_host=True,
///     enable_node_public_ip=True,
///     enable_node_public_i_pv6=True,
///     enable_over_provisioning=False,
///     eviction_policy=azure_native.servicefabric.EvictionPolicyType.DEALLOCATE,
///     frontend_configurations=[{
///         "application_gateway_backend_address_pool_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/applicationGateways/appgw-test/backendAddressPools/appgwBepoolTest",
///         "load_balancer_backend_address_pool_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/backendAddressPools/LoadBalancerBEAddressPool",
///         "load_balancer_inbound_nat_pool_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/inboundNatPools/LoadBalancerNATPool",
///     }],
///     is_primary=False,
///     is_spot_vm=True,
///     is_stateless=True,
///     multiple_placement_groups=True,
///     nat_gateway_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/natGateways/myNatGateway",
///     node_type_name="BE-testResourceGroup-testRegion-test",
///     placement_properties={
///         "HasSSD": "true",
///         "NodeColor": "green",
///         "SomeProperty": "5",
///     },
///     resource_group_name="resRg",
///     secure_boot_enabled=True,
///     security_type=azure_native.servicefabric.SecurityType.TRUSTED_LAUNCH,
///     service_artifact_reference_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Compute/galleries/myGallery/serviceArtifacts/myServiceArtifact/vmArtifactsProfiles/myVmArtifactProfile",
///     spot_restore_timeout="PT30M",
///     subnet_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1",
///     use_default_public_load_balancer=True,
///     use_ephemeral_os_disk=True,
///     vm_extensions=[{
///         "auto_upgrade_minor_version": True,
///         "enable_automatic_upgrade": True,
///         "force_update_tag": "v.1.0",
///         "name": "Microsoft.Azure.Geneva.GenevaMonitoring",
///         "publisher": "Microsoft.Azure.Geneva",
///         "settings": {},
///         "setup_order": [azure_native.servicefabric.VmssExtensionSetupOrder.BEFORE_SF_RUNTIME],
///         "type": "GenevaMonitoring",
///         "type_handler_version": "2.0",
///     }],
///     vm_image_offer="WindowsServer",
///     vm_image_publisher="MicrosoftWindowsServer",
///     vm_image_sku="2016-Datacenter-Server-Core",
///     vm_image_version="latest",
///     vm_instance_count=10,
///     vm_managed_identity={
///         "user_assigned_identities": [
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity2",
///         ],
///     },
///     vm_secrets=[{
///         "source_vault": {
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.KeyVault/vaults/myVault",
///         },
///         "vault_certificates": [{
///             "certificate_store": "My",
///             "certificate_url": "https://myVault.vault.azure.net:443/secrets/myCert/ef1a31d39e1f46bca33def54b6cda54c",
///         }],
///     }],
///     vm_setup_actions=[
///         azure_native.servicefabric.VmSetupAction.ENABLE_CONTAINERS,
///         azure_native.servicefabric.VmSetupAction.ENABLE_HYPER_V,
///     ],
///     vm_size="Standard_DS3")
///
/// ```
///
/// ```yaml
/// resources:
///   nodeType:
///     type: azure-native:servicefabric:NodeType
///     properties:
///       additionalDataDisks:
///         - diskLetter: F
///           diskSizeGB: 256
///           diskType: StandardSSD_LRS
///           lun: 1
///         - diskLetter: G
///           diskSizeGB: 150
///           diskType: Premium_LRS
///           lun: 2
///       additionalNetworkInterfaceConfigurations:
///         - dscpConfiguration:
///             id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/dscpConfigurations/myDscpConfig
///           enableAcceleratedNetworking: true
///           ipConfigurations:
///             - applicationGatewayBackendAddressPools:
///                 - id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/applicationGateways/appgw-test/backendAddressPools/appgwBepoolTest
///               loadBalancerBackendAddressPools:
///                 - id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/backendAddressPools/LoadBalancerBEAddressPool
///               loadBalancerInboundNatPools:
///                 - id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/inboundNatPools/LoadBalancerNATPool
///               name: ipconfig-1
///               privateIPAddressVersion: IPv4
///               publicIPAddressConfiguration:
///                 ipTags:
///                   - ipTagType: RoutingPreference
///                     tag: Internet
///                 name: publicip-1
///                 publicIPAddressVersion: IPv4
///               subnet:
///                 id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1
///           name: nic-1
///       capacities:
///         ClientConnections: '65536'
///       clusterName: myCluster
///       computerNamePrefix: BE
///       dataDiskLetter: S
///       dataDiskSizeGB: 200
///       dataDiskType: Premium_LRS
///       dscpConfigurationId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/dscpConfigurations/myDscpConfig
///       enableAcceleratedNetworking: true
///       enableEncryptionAtHost: true
///       enableNodePublicIP: true
///       enableNodePublicIPv6: true
///       enableOverProvisioning: false
///       evictionPolicy: Deallocate
///       frontendConfigurations:
///         - applicationGatewayBackendAddressPoolId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/applicationGateways/appgw-test/backendAddressPools/appgwBepoolTest
///           loadBalancerBackendAddressPoolId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/backendAddressPools/LoadBalancerBEAddressPool
///           loadBalancerInboundNatPoolId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/loadBalancers/test-LB/inboundNatPools/LoadBalancerNATPool
///       isPrimary: false
///       isSpotVM: true
///       isStateless: true
///       multiplePlacementGroups: true
///       natGatewayId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/natGateways/myNatGateway
///       nodeTypeName: BE-testResourceGroup-testRegion-test
///       placementProperties:
///         HasSSD: 'true'
///         NodeColor: green
///         SomeProperty: '5'
///       resourceGroupName: resRg
///       secureBootEnabled: true
///       securityType: TrustedLaunch
///       serviceArtifactReferenceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Compute/galleries/myGallery/serviceArtifacts/myServiceArtifact/vmArtifactsProfiles/myVmArtifactProfile
///       spotRestoreTimeout: PT30M
///       subnetId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1
///       useDefaultPublicLoadBalancer: true
///       useEphemeralOSDisk: true
///       vmExtensions:
///         - autoUpgradeMinorVersion: true
///           enableAutomaticUpgrade: true
///           forceUpdateTag: v.1.0
///           name: Microsoft.Azure.Geneva.GenevaMonitoring
///           publisher: Microsoft.Azure.Geneva
///           settings: {}
///           setupOrder:
///             - BeforeSFRuntime
///           type: GenevaMonitoring
///           typeHandlerVersion: '2.0'
///       vmImageOffer: WindowsServer
///       vmImagePublisher: MicrosoftWindowsServer
///       vmImageSku: 2016-Datacenter-Server-Core
///       vmImageVersion: latest
///       vmInstanceCount: 10
///       vmManagedIdentity:
///         userAssignedIdentities:
///           - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity
///           - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity2
///       vmSecrets:
///         - sourceVault:
///             id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resRg/providers/Microsoft.KeyVault/vaults/myVault
///           vaultCertificates:
///             - certificateStore: My
///               certificateUrl: https://myVault.vault.azure.net:443/secrets/myCert/ef1a31d39e1f46bca33def54b6cda54c
///       vmSetupActions:
///         - EnableContainers
///         - EnableHyperV
///       vmSize: Standard_DS3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put a node type with minimum parameters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nodeType = new AzureNative.ServiceFabric.NodeType("nodeType", new()
///     {
///         ClusterName = "myCluster",
///         DataDiskSizeGB = 200,
///         IsPrimary = false,
///         NodeTypeName = "BE",
///         ResourceGroupName = "resRg",
///         VmImageOffer = "WindowsServer",
///         VmImagePublisher = "MicrosoftWindowsServer",
///         VmImageSku = "2016-Datacenter-Server-Core",
///         VmImageVersion = "latest",
///         VmInstanceCount = 10,
///         VmSize = "Standard_D3",
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
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewNodeType(ctx, "nodeType", &servicefabric.NodeTypeArgs{
/// 			ClusterName:       pulumi.String("myCluster"),
/// 			DataDiskSizeGB:    pulumi.Int(200),
/// 			IsPrimary:         pulumi.Bool(false),
/// 			NodeTypeName:      pulumi.String("BE"),
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			VmImageOffer:      pulumi.String("WindowsServer"),
/// 			VmImagePublisher:  pulumi.String("MicrosoftWindowsServer"),
/// 			VmImageSku:        pulumi.String("2016-Datacenter-Server-Core"),
/// 			VmImageVersion:    pulumi.String("latest"),
/// 			VmInstanceCount:   pulumi.Int(10),
/// 			VmSize:            pulumi.String("Standard_D3"),
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
/// import com.pulumi.azurenative.servicefabric.NodeType;
/// import com.pulumi.azurenative.servicefabric.NodeTypeArgs;
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
///         var nodeType = new NodeType("nodeType", NodeTypeArgs.builder()
///             .clusterName("myCluster")
///             .dataDiskSizeGB(200)
///             .isPrimary(false)
///             .nodeTypeName("BE")
///             .resourceGroupName("resRg")
///             .vmImageOffer("WindowsServer")
///             .vmImagePublisher("MicrosoftWindowsServer")
///             .vmImageSku("2016-Datacenter-Server-Core")
///             .vmImageVersion("latest")
///             .vmInstanceCount(10)
///             .vmSize("Standard_D3")
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
/// const nodeType = new azure_native.servicefabric.NodeType("nodeType", {
///     clusterName: "myCluster",
///     dataDiskSizeGB: 200,
///     isPrimary: false,
///     nodeTypeName: "BE",
///     resourceGroupName: "resRg",
///     vmImageOffer: "WindowsServer",
///     vmImagePublisher: "MicrosoftWindowsServer",
///     vmImageSku: "2016-Datacenter-Server-Core",
///     vmImageVersion: "latest",
///     vmInstanceCount: 10,
///     vmSize: "Standard_D3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// node_type = azure_native.servicefabric.NodeType("nodeType",
///     cluster_name="myCluster",
///     data_disk_size_gb=200,
///     is_primary=False,
///     node_type_name="BE",
///     resource_group_name="resRg",
///     vm_image_offer="WindowsServer",
///     vm_image_publisher="MicrosoftWindowsServer",
///     vm_image_sku="2016-Datacenter-Server-Core",
///     vm_image_version="latest",
///     vm_instance_count=10,
///     vm_size="Standard_D3")
///
/// ```
///
/// ```yaml
/// resources:
///   nodeType:
///     type: azure-native:servicefabric:NodeType
///     properties:
///       clusterName: myCluster
///       dataDiskSizeGB: 200
///       isPrimary: false
///       nodeTypeName: BE
///       resourceGroupName: resRg
///       vmImageOffer: WindowsServer
///       vmImagePublisher: MicrosoftWindowsServer
///       vmImageSku: 2016-Datacenter-Server-Core
///       vmImageVersion: latest
///       vmInstanceCount: 10
///       vmSize: Standard_D3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put an stateless node type with temporary disk for service fabric
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nodeType = new AzureNative.ServiceFabric.NodeType("nodeType", new()
///     {
///         ClusterName = "myCluster",
///         EnableEncryptionAtHost = true,
///         IsPrimary = false,
///         IsStateless = true,
///         MultiplePlacementGroups = true,
///         NodeTypeName = "BE",
///         ResourceGroupName = "resRg",
///         UseTempDataDisk = true,
///         VmExtensions = new[]
///         {
///             new AzureNative.ServiceFabric.Inputs.VMSSExtensionArgs
///             {
///                 AutoUpgradeMinorVersion = true,
///                 Name = "Microsoft.Azure.Geneva.GenevaMonitoring",
///                 Publisher = "Microsoft.Azure.Geneva",
///                 Settings = null,
///                 Type = "GenevaMonitoring",
///                 TypeHandlerVersion = "2.0",
///             },
///         },
///         VmImageOffer = "WindowsServer",
///         VmImagePublisher = "MicrosoftWindowsServer",
///         VmImageSku = "2016-Datacenter-Server-Core",
///         VmImageVersion = "latest",
///         VmInstanceCount = 10,
///         VmSize = "Standard_DS3",
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
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewNodeType(ctx, "nodeType", &servicefabric.NodeTypeArgs{
/// 			ClusterName:             pulumi.String("myCluster"),
/// 			EnableEncryptionAtHost:  pulumi.Bool(true),
/// 			IsPrimary:               pulumi.Bool(false),
/// 			IsStateless:             pulumi.Bool(true),
/// 			MultiplePlacementGroups: pulumi.Bool(true),
/// 			NodeTypeName:            pulumi.String("BE"),
/// 			ResourceGroupName:       pulumi.String("resRg"),
/// 			UseTempDataDisk:         pulumi.Bool(true),
/// 			VmExtensions: servicefabric.VMSSExtensionArray{
/// 				&servicefabric.VMSSExtensionArgs{
/// 					AutoUpgradeMinorVersion: pulumi.Bool(true),
/// 					Name:                    pulumi.String("Microsoft.Azure.Geneva.GenevaMonitoring"),
/// 					Publisher:               pulumi.String("Microsoft.Azure.Geneva"),
/// 					Settings:                pulumi.Any(map[string]interface{}{}),
/// 					Type:                    pulumi.String("GenevaMonitoring"),
/// 					TypeHandlerVersion:      pulumi.String("2.0"),
/// 				},
/// 			},
/// 			VmImageOffer:     pulumi.String("WindowsServer"),
/// 			VmImagePublisher: pulumi.String("MicrosoftWindowsServer"),
/// 			VmImageSku:       pulumi.String("2016-Datacenter-Server-Core"),
/// 			VmImageVersion:   pulumi.String("latest"),
/// 			VmInstanceCount:  pulumi.Int(10),
/// 			VmSize:           pulumi.String("Standard_DS3"),
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
/// import com.pulumi.azurenative.servicefabric.NodeType;
/// import com.pulumi.azurenative.servicefabric.NodeTypeArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.VMSSExtensionArgs;
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
///         var nodeType = new NodeType("nodeType", NodeTypeArgs.builder()
///             .clusterName("myCluster")
///             .enableEncryptionAtHost(true)
///             .isPrimary(false)
///             .isStateless(true)
///             .multiplePlacementGroups(true)
///             .nodeTypeName("BE")
///             .resourceGroupName("resRg")
///             .useTempDataDisk(true)
///             .vmExtensions(VMSSExtensionArgs.builder()
///                 .autoUpgradeMinorVersion(true)
///                 .name("Microsoft.Azure.Geneva.GenevaMonitoring")
///                 .publisher("Microsoft.Azure.Geneva")
///                 .settings(Map.ofEntries(
///                 ))
///                 .type("GenevaMonitoring")
///                 .typeHandlerVersion("2.0")
///                 .build())
///             .vmImageOffer("WindowsServer")
///             .vmImagePublisher("MicrosoftWindowsServer")
///             .vmImageSku("2016-Datacenter-Server-Core")
///             .vmImageVersion("latest")
///             .vmInstanceCount(10)
///             .vmSize("Standard_DS3")
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
/// const nodeType = new azure_native.servicefabric.NodeType("nodeType", {
///     clusterName: "myCluster",
///     enableEncryptionAtHost: true,
///     isPrimary: false,
///     isStateless: true,
///     multiplePlacementGroups: true,
///     nodeTypeName: "BE",
///     resourceGroupName: "resRg",
///     useTempDataDisk: true,
///     vmExtensions: [{
///         autoUpgradeMinorVersion: true,
///         name: "Microsoft.Azure.Geneva.GenevaMonitoring",
///         publisher: "Microsoft.Azure.Geneva",
///         settings: {},
///         type: "GenevaMonitoring",
///         typeHandlerVersion: "2.0",
///     }],
///     vmImageOffer: "WindowsServer",
///     vmImagePublisher: "MicrosoftWindowsServer",
///     vmImageSku: "2016-Datacenter-Server-Core",
///     vmImageVersion: "latest",
///     vmInstanceCount: 10,
///     vmSize: "Standard_DS3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// node_type = azure_native.servicefabric.NodeType("nodeType",
///     cluster_name="myCluster",
///     enable_encryption_at_host=True,
///     is_primary=False,
///     is_stateless=True,
///     multiple_placement_groups=True,
///     node_type_name="BE",
///     resource_group_name="resRg",
///     use_temp_data_disk=True,
///     vm_extensions=[{
///         "auto_upgrade_minor_version": True,
///         "name": "Microsoft.Azure.Geneva.GenevaMonitoring",
///         "publisher": "Microsoft.Azure.Geneva",
///         "settings": {},
///         "type": "GenevaMonitoring",
///         "type_handler_version": "2.0",
///     }],
///     vm_image_offer="WindowsServer",
///     vm_image_publisher="MicrosoftWindowsServer",
///     vm_image_sku="2016-Datacenter-Server-Core",
///     vm_image_version="latest",
///     vm_instance_count=10,
///     vm_size="Standard_DS3")
///
/// ```
///
/// ```yaml
/// resources:
///   nodeType:
///     type: azure-native:servicefabric:NodeType
///     properties:
///       clusterName: myCluster
///       enableEncryptionAtHost: true
///       isPrimary: false
///       isStateless: true
///       multiplePlacementGroups: true
///       nodeTypeName: BE
///       resourceGroupName: resRg
///       useTempDataDisk: true
///       vmExtensions:
///         - autoUpgradeMinorVersion: true
///           name: Microsoft.Azure.Geneva.GenevaMonitoring
///           publisher: Microsoft.Azure.Geneva
///           settings: {}
///           type: GenevaMonitoring
///           typeHandlerVersion: '2.0'
///       vmImageOffer: WindowsServer
///       vmImagePublisher: MicrosoftWindowsServer
///       vmImageSku: 2016-Datacenter-Server-Core
///       vmImageVersion: latest
///       vmInstanceCount: 10
///       vmSize: Standard_DS3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put node type with custom vm image
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nodeType = new AzureNative.ServiceFabric.NodeType("nodeType", new()
///     {
///         ClusterName = "myCluster",
///         DataDiskSizeGB = 200,
///         IsPrimary = false,
///         NodeTypeName = "BE",
///         ResourceGroupName = "resRg",
///         VmImageResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-custom-image/providers/Microsoft.Compute/galleries/myCustomImages/images/Win2019DC",
///         VmInstanceCount = 10,
///         VmSize = "Standard_D3",
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
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewNodeType(ctx, "nodeType", &servicefabric.NodeTypeArgs{
/// 			ClusterName:       pulumi.String("myCluster"),
/// 			DataDiskSizeGB:    pulumi.Int(200),
/// 			IsPrimary:         pulumi.Bool(false),
/// 			NodeTypeName:      pulumi.String("BE"),
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			VmImageResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-custom-image/providers/Microsoft.Compute/galleries/myCustomImages/images/Win2019DC"),
/// 			VmInstanceCount:   pulumi.Int(10),
/// 			VmSize:            pulumi.String("Standard_D3"),
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
/// import com.pulumi.azurenative.servicefabric.NodeType;
/// import com.pulumi.azurenative.servicefabric.NodeTypeArgs;
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
///         var nodeType = new NodeType("nodeType", NodeTypeArgs.builder()
///             .clusterName("myCluster")
///             .dataDiskSizeGB(200)
///             .isPrimary(false)
///             .nodeTypeName("BE")
///             .resourceGroupName("resRg")
///             .vmImageResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-custom-image/providers/Microsoft.Compute/galleries/myCustomImages/images/Win2019DC")
///             .vmInstanceCount(10)
///             .vmSize("Standard_D3")
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
/// const nodeType = new azure_native.servicefabric.NodeType("nodeType", {
///     clusterName: "myCluster",
///     dataDiskSizeGB: 200,
///     isPrimary: false,
///     nodeTypeName: "BE",
///     resourceGroupName: "resRg",
///     vmImageResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-custom-image/providers/Microsoft.Compute/galleries/myCustomImages/images/Win2019DC",
///     vmInstanceCount: 10,
///     vmSize: "Standard_D3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// node_type = azure_native.servicefabric.NodeType("nodeType",
///     cluster_name="myCluster",
///     data_disk_size_gb=200,
///     is_primary=False,
///     node_type_name="BE",
///     resource_group_name="resRg",
///     vm_image_resource_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-custom-image/providers/Microsoft.Compute/galleries/myCustomImages/images/Win2019DC",
///     vm_instance_count=10,
///     vm_size="Standard_D3")
///
/// ```
///
/// ```yaml
/// resources:
///   nodeType:
///     type: azure-native:servicefabric:NodeType
///     properties:
///       clusterName: myCluster
///       dataDiskSizeGB: 200
///       isPrimary: false
///       nodeTypeName: BE
///       resourceGroupName: resRg
///       vmImageResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-custom-image/providers/Microsoft.Compute/galleries/myCustomImages/images/Win2019DC
///       vmInstanceCount: 10
///       vmSize: Standard_D3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put node type with dedicated hosts
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nodeType = new AzureNative.ServiceFabric.NodeType("nodeType", new()
///     {
///         Capacities = null,
///         ClusterName = "myCluster",
///         DataDiskSizeGB = 200,
///         DataDiskType = AzureNative.ServiceFabric.DiskType.StandardSSD_LRS,
///         HostGroupId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testhostgroupRG/providers/Microsoft.Compute/hostGroups/testHostGroup",
///         IsPrimary = false,
///         NodeTypeName = "BE",
///         PlacementProperties = null,
///         ResourceGroupName = "resRg",
///         VmImageOffer = "WindowsServer",
///         VmImagePublisher = "MicrosoftWindowsServer",
///         VmImageSku = "2019-Datacenter",
///         VmImageVersion = "latest",
///         VmInstanceCount = 10,
///         VmSize = "Standard_D8s_v3",
///         Zones = new[]
///         {
///             "1",
///         },
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
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewNodeType(ctx, "nodeType", &servicefabric.NodeTypeArgs{
/// 			Capacities:          pulumi.StringMap{},
/// 			ClusterName:         pulumi.String("myCluster"),
/// 			DataDiskSizeGB:      pulumi.Int(200),
/// 			DataDiskType:        pulumi.String(servicefabric.DiskType_StandardSSD_LRS),
/// 			HostGroupId:         pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testhostgroupRG/providers/Microsoft.Compute/hostGroups/testHostGroup"),
/// 			IsPrimary:           pulumi.Bool(false),
/// 			NodeTypeName:        pulumi.String("BE"),
/// 			PlacementProperties: pulumi.StringMap{},
/// 			ResourceGroupName:   pulumi.String("resRg"),
/// 			VmImageOffer:        pulumi.String("WindowsServer"),
/// 			VmImagePublisher:    pulumi.String("MicrosoftWindowsServer"),
/// 			VmImageSku:          pulumi.String("2019-Datacenter"),
/// 			VmImageVersion:      pulumi.String("latest"),
/// 			VmInstanceCount:     pulumi.Int(10),
/// 			VmSize:              pulumi.String("Standard_D8s_v3"),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 			},
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
/// import com.pulumi.azurenative.servicefabric.NodeType;
/// import com.pulumi.azurenative.servicefabric.NodeTypeArgs;
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
///         var nodeType = new NodeType("nodeType", NodeTypeArgs.builder()
///             .capacities(Map.ofEntries(
///             ))
///             .clusterName("myCluster")
///             .dataDiskSizeGB(200)
///             .dataDiskType("StandardSSD_LRS")
///             .hostGroupId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testhostgroupRG/providers/Microsoft.Compute/hostGroups/testHostGroup")
///             .isPrimary(false)
///             .nodeTypeName("BE")
///             .placementProperties(Map.ofEntries(
///             ))
///             .resourceGroupName("resRg")
///             .vmImageOffer("WindowsServer")
///             .vmImagePublisher("MicrosoftWindowsServer")
///             .vmImageSku("2019-Datacenter")
///             .vmImageVersion("latest")
///             .vmInstanceCount(10)
///             .vmSize("Standard_D8s_v3")
///             .zones("1")
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
/// const nodeType = new azure_native.servicefabric.NodeType("nodeType", {
///     capacities: {},
///     clusterName: "myCluster",
///     dataDiskSizeGB: 200,
///     dataDiskType: azure_native.servicefabric.DiskType.StandardSSD_LRS,
///     hostGroupId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testhostgroupRG/providers/Microsoft.Compute/hostGroups/testHostGroup",
///     isPrimary: false,
///     nodeTypeName: "BE",
///     placementProperties: {},
///     resourceGroupName: "resRg",
///     vmImageOffer: "WindowsServer",
///     vmImagePublisher: "MicrosoftWindowsServer",
///     vmImageSku: "2019-Datacenter",
///     vmImageVersion: "latest",
///     vmInstanceCount: 10,
///     vmSize: "Standard_D8s_v3",
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// node_type = azure_native.servicefabric.NodeType("nodeType",
///     capacities={},
///     cluster_name="myCluster",
///     data_disk_size_gb=200,
///     data_disk_type=azure_native.servicefabric.DiskType.STANDARD_SS_D_LRS,
///     host_group_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testhostgroupRG/providers/Microsoft.Compute/hostGroups/testHostGroup",
///     is_primary=False,
///     node_type_name="BE",
///     placement_properties={},
///     resource_group_name="resRg",
///     vm_image_offer="WindowsServer",
///     vm_image_publisher="MicrosoftWindowsServer",
///     vm_image_sku="2019-Datacenter",
///     vm_image_version="latest",
///     vm_instance_count=10,
///     vm_size="Standard_D8s_v3",
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   nodeType:
///     type: azure-native:servicefabric:NodeType
///     properties:
///       capacities: {}
///       clusterName: myCluster
///       dataDiskSizeGB: 200
///       dataDiskType: StandardSSD_LRS
///       hostGroupId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testhostgroupRG/providers/Microsoft.Compute/hostGroups/testHostGroup
///       isPrimary: false
///       nodeTypeName: BE
///       placementProperties: {}
///       resourceGroupName: resRg
///       vmImageOffer: WindowsServer
///       vmImagePublisher: MicrosoftWindowsServer
///       vmImageSku: 2019-Datacenter
///       vmImageVersion: latest
///       vmInstanceCount: 10
///       vmSize: Standard_D8s_v3
///       zones:
///         - '1'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put node type with shared galleries custom vm image
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nodeType = new AzureNative.ServiceFabric.NodeType("nodeType", new()
///     {
///         ClusterName = "myCluster",
///         DataDiskSizeGB = 200,
///         IsPrimary = false,
///         NodeTypeName = "BE",
///         ResourceGroupName = "resRg",
///         VmInstanceCount = 10,
///         VmSharedGalleryImageId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-custom-image/providers/Microsoft.Compute/sharedGalleries/35349201-a0b3-405e-8a23-9f1450984307-SFSHAREDGALLERY/images/TestNoProdContainerDImage/versions/latest",
///         VmSize = "Standard_D3",
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
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewNodeType(ctx, "nodeType", &servicefabric.NodeTypeArgs{
/// 			ClusterName:            pulumi.String("myCluster"),
/// 			DataDiskSizeGB:         pulumi.Int(200),
/// 			IsPrimary:              pulumi.Bool(false),
/// 			NodeTypeName:           pulumi.String("BE"),
/// 			ResourceGroupName:      pulumi.String("resRg"),
/// 			VmInstanceCount:        pulumi.Int(10),
/// 			VmSharedGalleryImageId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-custom-image/providers/Microsoft.Compute/sharedGalleries/35349201-a0b3-405e-8a23-9f1450984307-SFSHAREDGALLERY/images/TestNoProdContainerDImage/versions/latest"),
/// 			VmSize:                 pulumi.String("Standard_D3"),
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
/// import com.pulumi.azurenative.servicefabric.NodeType;
/// import com.pulumi.azurenative.servicefabric.NodeTypeArgs;
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
///         var nodeType = new NodeType("nodeType", NodeTypeArgs.builder()
///             .clusterName("myCluster")
///             .dataDiskSizeGB(200)
///             .isPrimary(false)
///             .nodeTypeName("BE")
///             .resourceGroupName("resRg")
///             .vmInstanceCount(10)
///             .vmSharedGalleryImageId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-custom-image/providers/Microsoft.Compute/sharedGalleries/35349201-a0b3-405e-8a23-9f1450984307-SFSHAREDGALLERY/images/TestNoProdContainerDImage/versions/latest")
///             .vmSize("Standard_D3")
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
/// const nodeType = new azure_native.servicefabric.NodeType("nodeType", {
///     clusterName: "myCluster",
///     dataDiskSizeGB: 200,
///     isPrimary: false,
///     nodeTypeName: "BE",
///     resourceGroupName: "resRg",
///     vmInstanceCount: 10,
///     vmSharedGalleryImageId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-custom-image/providers/Microsoft.Compute/sharedGalleries/35349201-a0b3-405e-8a23-9f1450984307-SFSHAREDGALLERY/images/TestNoProdContainerDImage/versions/latest",
///     vmSize: "Standard_D3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// node_type = azure_native.servicefabric.NodeType("nodeType",
///     cluster_name="myCluster",
///     data_disk_size_gb=200,
///     is_primary=False,
///     node_type_name="BE",
///     resource_group_name="resRg",
///     vm_instance_count=10,
///     vm_shared_gallery_image_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-custom-image/providers/Microsoft.Compute/sharedGalleries/35349201-a0b3-405e-8a23-9f1450984307-SFSHAREDGALLERY/images/TestNoProdContainerDImage/versions/latest",
///     vm_size="Standard_D3")
///
/// ```
///
/// ```yaml
/// resources:
///   nodeType:
///     type: azure-native:servicefabric:NodeType
///     properties:
///       clusterName: myCluster
///       dataDiskSizeGB: 200
///       isPrimary: false
///       nodeTypeName: BE
///       resourceGroupName: resRg
///       vmInstanceCount: 10
///       vmSharedGalleryImageId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-custom-image/providers/Microsoft.Compute/sharedGalleries/35349201-a0b3-405e-8a23-9f1450984307-SFSHAREDGALLERY/images/TestNoProdContainerDImage/versions/latest
///       vmSize: Standard_D3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Put node type with vm image plan
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nodeType = new AzureNative.ServiceFabric.NodeType("nodeType", new()
///     {
///         ClusterName = "myCluster",
///         DataDiskSizeGB = 200,
///         IsPrimary = false,
///         NodeTypeName = "BE",
///         ResourceGroupName = "resRg",
///         VmImageOffer = "windows_2022_test",
///         VmImagePlan = new AzureNative.ServiceFabric.Inputs.VmImagePlanArgs
///         {
///             Name = "win_2022_test_20_10_gen2",
///             Product = "windows_2022_test",
///             Publisher = "testpublisher",
///         },
///         VmImagePublisher = "testpublisher",
///         VmImageSku = "win_2022_test_20_10_gen2",
///         VmImageVersion = "latest",
///         VmInstanceCount = 10,
///         VmSize = "Standard_D3",
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
/// 	servicefabric "github.com/pulumi/pulumi-azure-native-sdk/servicefabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicefabric.NewNodeType(ctx, "nodeType", &servicefabric.NodeTypeArgs{
/// 			ClusterName:       pulumi.String("myCluster"),
/// 			DataDiskSizeGB:    pulumi.Int(200),
/// 			IsPrimary:         pulumi.Bool(false),
/// 			NodeTypeName:      pulumi.String("BE"),
/// 			ResourceGroupName: pulumi.String("resRg"),
/// 			VmImageOffer:      pulumi.String("windows_2022_test"),
/// 			VmImagePlan: &servicefabric.VmImagePlanArgs{
/// 				Name:      pulumi.String("win_2022_test_20_10_gen2"),
/// 				Product:   pulumi.String("windows_2022_test"),
/// 				Publisher: pulumi.String("testpublisher"),
/// 			},
/// 			VmImagePublisher: pulumi.String("testpublisher"),
/// 			VmImageSku:       pulumi.String("win_2022_test_20_10_gen2"),
/// 			VmImageVersion:   pulumi.String("latest"),
/// 			VmInstanceCount:  pulumi.Int(10),
/// 			VmSize:           pulumi.String("Standard_D3"),
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
/// import com.pulumi.azurenative.servicefabric.NodeType;
/// import com.pulumi.azurenative.servicefabric.NodeTypeArgs;
/// import com.pulumi.azurenative.servicefabric.inputs.VmImagePlanArgs;
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
///         var nodeType = new NodeType("nodeType", NodeTypeArgs.builder()
///             .clusterName("myCluster")
///             .dataDiskSizeGB(200)
///             .isPrimary(false)
///             .nodeTypeName("BE")
///             .resourceGroupName("resRg")
///             .vmImageOffer("windows_2022_test")
///             .vmImagePlan(VmImagePlanArgs.builder()
///                 .name("win_2022_test_20_10_gen2")
///                 .product("windows_2022_test")
///                 .publisher("testpublisher")
///                 .build())
///             .vmImagePublisher("testpublisher")
///             .vmImageSku("win_2022_test_20_10_gen2")
///             .vmImageVersion("latest")
///             .vmInstanceCount(10)
///             .vmSize("Standard_D3")
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
/// const nodeType = new azure_native.servicefabric.NodeType("nodeType", {
///     clusterName: "myCluster",
///     dataDiskSizeGB: 200,
///     isPrimary: false,
///     nodeTypeName: "BE",
///     resourceGroupName: "resRg",
///     vmImageOffer: "windows_2022_test",
///     vmImagePlan: {
///         name: "win_2022_test_20_10_gen2",
///         product: "windows_2022_test",
///         publisher: "testpublisher",
///     },
///     vmImagePublisher: "testpublisher",
///     vmImageSku: "win_2022_test_20_10_gen2",
///     vmImageVersion: "latest",
///     vmInstanceCount: 10,
///     vmSize: "Standard_D3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// node_type = azure_native.servicefabric.NodeType("nodeType",
///     cluster_name="myCluster",
///     data_disk_size_gb=200,
///     is_primary=False,
///     node_type_name="BE",
///     resource_group_name="resRg",
///     vm_image_offer="windows_2022_test",
///     vm_image_plan={
///         "name": "win_2022_test_20_10_gen2",
///         "product": "windows_2022_test",
///         "publisher": "testpublisher",
///     },
///     vm_image_publisher="testpublisher",
///     vm_image_sku="win_2022_test_20_10_gen2",
///     vm_image_version="latest",
///     vm_instance_count=10,
///     vm_size="Standard_D3")
///
/// ```
///
/// ```yaml
/// resources:
///   nodeType:
///     type: azure-native:servicefabric:NodeType
///     properties:
///       clusterName: myCluster
///       dataDiskSizeGB: 200
///       isPrimary: false
///       nodeTypeName: BE
///       resourceGroupName: resRg
///       vmImageOffer: windows_2022_test
///       vmImagePlan:
///         name: win_2022_test_20_10_gen2
///         product: windows_2022_test
///         publisher: testpublisher
///       vmImagePublisher: testpublisher
///       vmImageSku: win_2022_test_20_10_gen2
///       vmImageVersion: latest
///       vmInstanceCount: 10
///       vmSize: Standard_D3
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
/// $ pulumi import azure-native:servicefabric:NodeType BE /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceFabric/managedClusters/{clusterName}/nodeTypes/{nodeTypeName}
/// ```
class NodeType extends pulumi.CustomResource {
  /// Additional managed data disks.
  late final pulumi.Output<List<VmssDataDiskResponse>?> additionalDataDisks;
  /// Specifies the settings for any additional secondary network interfaces to attach to the node type.
  late final pulumi.Output<List<AdditionalNetworkInterfaceConfigurationResponse>?> additionalNetworkInterfaceConfigurations;
  /// The range of ports from which cluster assigned port to Service Fabric applications.
  late final pulumi.Output<EndpointRangeDescriptionResponse?> applicationPorts;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The capacity tags applied to the nodes in the node type, the cluster resource manager uses these tags to understand how much resource a node has.
  late final pulumi.Output<Map<String, String>?> capacities;
  /// Specifies the computer name prefix. Limited to 9 characters. If specified, allows for a longer name to be specified for the node type name.
  late final pulumi.Output<String?> computerNamePrefix;
  /// Managed data disk letter. It can not use the reserved letter C or D and it can not change after created.
  late final pulumi.Output<String?> dataDiskLetter;
  /// Disk size for the managed disk attached to the vms on the node type in GBs.
  late final pulumi.Output<int?> dataDiskSizeGB;
  /// Managed data disk type. Specifies the storage account type for the managed disk
  late final pulumi.Output<String?> dataDiskType;
  /// Specifies the resource id of the DSCP configuration to apply to the node type network interface.
  late final pulumi.Output<String?> dscpConfigurationId;
  /// Specifies whether the network interface is accelerated networking-enabled.
  late final pulumi.Output<bool?> enableAcceleratedNetworking;
  /// Enable or disable the Host Encryption for the virtual machines on the node type. This will enable the encryption for all the disks including Resource/Temp disk at host itself. Default: The Encryption at host will be disabled unless this property is set to true for the resource.
  late final pulumi.Output<bool?> enableEncryptionAtHost;
  /// Specifies whether each node is allocated its own public IPv4 address. This is only supported on secondary node types with custom Load Balancers.
  late final pulumi.Output<bool?> enableNodePublicIP;
  /// Specifies whether each node is allocated its own public IPv6 address. This is only supported on secondary node types with custom Load Balancers.
  late final pulumi.Output<bool?> enableNodePublicIPv6;
  /// Specifies whether the node type should be overprovisioned. It is only allowed for stateless node types.
  late final pulumi.Output<bool?> enableOverProvisioning;
  /// The range of ephemeral ports that nodes in this node type should be configured with.
  late final pulumi.Output<EndpointRangeDescriptionResponse?> ephemeralPorts;
  /// Specifies the eviction policy for virtual machines in a SPOT node type. Default is Delete.
  late final pulumi.Output<String?> evictionPolicy;
  /// Indicates the node type uses its own frontend configurations instead of the default one for the cluster. This setting can only be specified for non-primary node types and can not be added or removed after the node type is created.
  late final pulumi.Output<List<FrontendConfigurationResponse>?> frontendConfigurations;
  /// Specifies the full host group resource Id. This property is used for deploying on azure dedicated hosts.
  late final pulumi.Output<String?> hostGroupId;
  /// Indicates the Service Fabric system services for the cluster will run on this node type. This setting cannot be changed once the node type is created.
  late final pulumi.Output<bool> isPrimary;
  /// Indicates whether the node type will be Spot Virtual Machines. Azure will allocate the VMs if there is capacity available and the VMs can be evicted at any time.
  late final pulumi.Output<bool?> isSpotVM;
  /// Indicates if the node type can only host Stateless workloads.
  late final pulumi.Output<bool?> isStateless;
  /// Indicates if scale set associated with the node type can be composed of multiple placement groups.
  late final pulumi.Output<bool?> multiplePlacementGroups;
  /// Azure resource name.
  late final pulumi.Output<String> name;
  /// Specifies the NAT configuration on default public Load Balancer for the node type. This is only supported for node types use the default public Load Balancer.
  late final pulumi.Output<List<NodeTypeNatConfigResponse>?> natConfigurations;
  /// Specifies the resource id of a NAT Gateway to attach to the subnet of this node type. Node type must use custom load balancer.
  late final pulumi.Output<String?> natGatewayId;
  /// The Network Security Rules for this node type. This setting can only be specified for node types that are configured with frontend configurations.
  late final pulumi.Output<List<NetworkSecurityRuleResponse>?> networkSecurityRules;
  /// The placement tags applied to nodes in the node type, which can be used to indicate where certain services (workload) should run.
  late final pulumi.Output<Map<String, String>?> placementProperties;
  /// The provisioning state of the node type resource.
  late final pulumi.Output<String> provisioningState;
  /// Specifies whether secure boot should be enabled on the nodeType. Can only be used with TrustedLaunch SecurityType
  late final pulumi.Output<bool?> secureBootEnabled;
  /// Specifies the security type of the nodeType. Only Standard and TrustedLaunch are currently supported
  late final pulumi.Output<String?> securityType;
  /// Specifies the service artifact reference id used to set same image version for all virtual machines in the scale set when using 'latest' image version.
  late final pulumi.Output<String?> serviceArtifactReferenceId;
  /// The node type sku.
  late final pulumi.Output<NodeTypeSkuResponse?> sku;
  /// Indicates the time duration after which the platform will not try to restore the VMSS SPOT instances specified as ISO 8601.
  late final pulumi.Output<String?> spotRestoreTimeout;
  /// Indicates the resource id of the subnet for the node type.
  late final pulumi.Output<String?> subnetId;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Azure resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Azure resource type.
  late final pulumi.Output<String> type;
  /// Specifies whether the use public load balancer. If not specified and the node type doesn't have its own frontend configuration, it will be attached to the default load balancer. If the node type uses its own Load balancer and useDefaultPublicLoadBalancer is true, then the frontend has to be an Internal Load Balancer. If the node type uses its own Load balancer and useDefaultPublicLoadBalancer is false or not set, then the custom load balancer must include a public load balancer to provide outbound connectivity.
  late final pulumi.Output<bool?> useDefaultPublicLoadBalancer;
  /// Indicates whether to use ephemeral os disk. The sku selected on the vmSize property needs to support this feature.
  late final pulumi.Output<bool?> useEphemeralOSDisk;
  /// Specifies whether to use the temporary disk for the service fabric data root, in which case no managed data disk will be attached and the temporary disk will be used. It is only allowed for stateless node types.
  late final pulumi.Output<bool?> useTempDataDisk;
  /// Set of extensions that should be installed onto the virtual machines.
  late final pulumi.Output<List<VMSSExtensionResponse>?> vmExtensions;
  /// The offer type of the Azure Virtual Machines Marketplace image. For example, UbuntuServer or WindowsServer.
  late final pulumi.Output<String?> vmImageOffer;
  /// Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use. In the Azure portal, find the marketplace image that you want to use and then click Want to deploy programmatically, Get Started ->. Enter any required information and then click Save.
  late final pulumi.Output<VmImagePlanResponse?> vmImagePlan;
  /// The publisher of the Azure Virtual Machines Marketplace image. For example, Canonical or MicrosoftWindowsServer.
  late final pulumi.Output<String?> vmImagePublisher;
  /// Indicates the resource id of the vm image. This parameter is used for custom vm image.
  late final pulumi.Output<String?> vmImageResourceId;
  /// The SKU of the Azure Virtual Machines Marketplace image. For example, 14.04.0-LTS or 2012-R2-Datacenter.
  late final pulumi.Output<String?> vmImageSku;
  /// The version of the Azure Virtual Machines Marketplace image. A value of 'latest' can be specified to select the latest version of an image. If omitted, the default is 'latest'.
  late final pulumi.Output<String?> vmImageVersion;
  /// The number of nodes in the node type. <br /><br />**Values:** <br />-1 - Use when auto scale rules are configured or sku.capacity is defined <br /> 0 - Not supported <br /> >0 - Use for manual scale.
  late final pulumi.Output<int> vmInstanceCount;
  /// Identities to assign to the virtual machine scale set under the node type.
  late final pulumi.Output<VmManagedIdentityResponse?> vmManagedIdentity;
  /// The secrets to install in the virtual machines.
  late final pulumi.Output<List<VaultSecretGroupResponse>?> vmSecrets;
  /// Specifies the actions to be performed on the vms before bootstrapping the service fabric runtime.
  late final pulumi.Output<List<String>?> vmSetupActions;
  /// Indicates the resource id of the vm shared galleries image. This parameter is used for custom vm image.
  late final pulumi.Output<String?> vmSharedGalleryImageId;
  /// The size of virtual machines in the pool. All virtual machines in a pool are the same size. For example, Standard_D3.
  late final pulumi.Output<String?> vmSize;
  /// Specifies the availability zones where the node type would span across. If the cluster is not spanning across availability zones, initiates az migration for the cluster.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [NodeType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeType]. {@macro pulumi_servicefabric_node_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeType(
    String name, {
    NodeTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicefabric:NodeType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalDataDisks = registerOutput<List<VmssDataDiskResponse>?>('additionalDataDisks');
    this.additionalNetworkInterfaceConfigurations = registerOutput<List<AdditionalNetworkInterfaceConfigurationResponse>?>('additionalNetworkInterfaceConfigurations');
    this.applicationPorts = registerOutput<EndpointRangeDescriptionResponse?>('applicationPorts');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.capacities = registerOutput<Map<String, String>?>('capacities');
    this.computerNamePrefix = registerOutput<String?>('computerNamePrefix');
    this.dataDiskLetter = registerOutput<String?>('dataDiskLetter');
    this.dataDiskSizeGB = registerOutput<int?>('dataDiskSizeGB');
    this.dataDiskType = registerOutput<String?>('dataDiskType');
    this.dscpConfigurationId = registerOutput<String?>('dscpConfigurationId');
    this.enableAcceleratedNetworking = registerOutput<bool?>('enableAcceleratedNetworking');
    this.enableEncryptionAtHost = registerOutput<bool?>('enableEncryptionAtHost');
    this.enableNodePublicIP = registerOutput<bool?>('enableNodePublicIP');
    this.enableNodePublicIPv6 = registerOutput<bool?>('enableNodePublicIPv6');
    this.enableOverProvisioning = registerOutput<bool?>('enableOverProvisioning');
    this.ephemeralPorts = registerOutput<EndpointRangeDescriptionResponse?>('ephemeralPorts');
    this.evictionPolicy = registerOutput<String?>('evictionPolicy');
    this.frontendConfigurations = registerOutput<List<FrontendConfigurationResponse>?>('frontendConfigurations');
    this.hostGroupId = registerOutput<String?>('hostGroupId');
    this.isPrimary = registerOutput<bool>('isPrimary');
    this.isSpotVM = registerOutput<bool?>('isSpotVM');
    this.isStateless = registerOutput<bool?>('isStateless');
    this.multiplePlacementGroups = registerOutput<bool?>('multiplePlacementGroups');
    this.name = registerOutput<String>('name');
    this.natConfigurations = registerOutput<List<NodeTypeNatConfigResponse>?>('natConfigurations');
    this.natGatewayId = registerOutput<String?>('natGatewayId');
    this.networkSecurityRules = registerOutput<List<NetworkSecurityRuleResponse>?>('networkSecurityRules');
    this.placementProperties = registerOutput<Map<String, String>?>('placementProperties');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.secureBootEnabled = registerOutput<bool?>('secureBootEnabled');
    this.securityType = registerOutput<String?>('securityType');
    this.serviceArtifactReferenceId = registerOutput<String?>('serviceArtifactReferenceId');
    this.sku = registerOutput<NodeTypeSkuResponse?>('sku');
    this.spotRestoreTimeout = registerOutput<String?>('spotRestoreTimeout');
    this.subnetId = registerOutput<String?>('subnetId');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.useDefaultPublicLoadBalancer = registerOutput<bool?>('useDefaultPublicLoadBalancer');
    this.useEphemeralOSDisk = registerOutput<bool?>('useEphemeralOSDisk');
    this.useTempDataDisk = registerOutput<bool?>('useTempDataDisk');
    this.vmExtensions = registerOutput<List<VMSSExtensionResponse>?>('vmExtensions');
    this.vmImageOffer = registerOutput<String?>('vmImageOffer');
    this.vmImagePlan = registerOutput<VmImagePlanResponse?>('vmImagePlan');
    this.vmImagePublisher = registerOutput<String?>('vmImagePublisher');
    this.vmImageResourceId = registerOutput<String?>('vmImageResourceId');
    this.vmImageSku = registerOutput<String?>('vmImageSku');
    this.vmImageVersion = registerOutput<String?>('vmImageVersion');
    this.vmInstanceCount = registerOutput<int>('vmInstanceCount');
    this.vmManagedIdentity = registerOutput<VmManagedIdentityResponse?>('vmManagedIdentity');
    this.vmSecrets = registerOutput<List<VaultSecretGroupResponse>?>('vmSecrets');
    this.vmSetupActions = registerOutput<List<String>?>('vmSetupActions');
    this.vmSharedGalleryImageId = registerOutput<String?>('vmSharedGalleryImageId');
    this.vmSize = registerOutput<String?>('vmSize');
    this.zones = registerOutput<List<String>?>('zones');
  }
}
