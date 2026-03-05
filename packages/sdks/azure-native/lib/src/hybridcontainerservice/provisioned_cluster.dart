import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_cluster_args.dart';
import 'provisioned_cluster_identity_response.dart';
import 'provisioned_clusters_response_properties_response.dart';
import 'provisioned_clusters_response_response_extended_location.dart';
import 'system_data_response.dart';

/// The provisionedClusters resource definition.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutProvisionedCluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var provisionedCluster = new AzureNative.HybridContainerService.ProvisionedCluster("provisionedCluster", new()
///     {
///         ExtendedLocation = new AzureNative.HybridContainerService.Inputs.ProvisionedClustersExtendedLocationArgs
///         {
///             Name = "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation",
///             Type = "CustomLocation",
///         },
///         Location = "westus",
///         Properties = new AzureNative.HybridContainerService.Inputs.ProvisionedClustersAllPropertiesArgs
///         {
///             AgentPoolProfiles = new[]
///             {
///                 new AzureNative.HybridContainerService.Inputs.NamedAgentPoolProfileArgs
///                 {
///                     Count = 1,
///                     Name = "default-nodepool-1",
///                     OsType = AzureNative.HybridContainerService.OsType.Linux,
///                     VmSize = "Standard_A4_v2",
///                 },
///             },
///             CloudProviderProfile = new AzureNative.HybridContainerService.Inputs.CloudProviderProfileArgs
///             {
///                 InfraNetworkProfile = new AzureNative.HybridContainerService.Inputs.CloudProviderProfileInfraNetworkProfileArgs
///                 {
///                     VnetSubnetIds = new[]
///                     {
///                         "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.HybridContainerService/virtualNetworks/test-vnet-static",
///                     },
///                 },
///                 InfraStorageProfile = new AzureNative.HybridContainerService.Inputs.CloudProviderProfileInfraStorageProfileArgs
///                 {
///                     StorageSpaceIds = new[]
///                     {
///                         "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.HybridContainerService/storageSpaces/test-storage",
///                     },
///                 },
///             },
///             ControlPlane = new AzureNative.HybridContainerService.Inputs.ControlPlaneProfileArgs
///             {
///                 Count = 1,
///                 LinuxProfile = new AzureNative.HybridContainerService.Inputs.LinuxProfilePropertiesArgs
///                 {
///                     Ssh = new AzureNative.HybridContainerService.Inputs.LinuxProfilePropertiesSshArgs
///                     {
///                         PublicKeys = new[]
///                         {
///                             new AzureNative.HybridContainerService.Inputs.LinuxProfilePropertiesPublicKeysArgs
///                             {
///                                 KeyData = "ssh-rsa AAAAB1NzaC1yc2EAAAADAQABAAACAQCY......",
///                             },
///                         },
///                     },
///                 },
///                 OsType = AzureNative.HybridContainerService.OsType.Linux,
///                 VmSize = "Standard_A4_v2",
///             },
///             KubernetesVersion = "v1.20.5",
///             LinuxProfile = new AzureNative.HybridContainerService.Inputs.LinuxProfilePropertiesArgs
///             {
///                 Ssh = new AzureNative.HybridContainerService.Inputs.LinuxProfilePropertiesSshArgs
///                 {
///                     PublicKeys = new[]
///                     {
///                         new AzureNative.HybridContainerService.Inputs.LinuxProfilePropertiesPublicKeysArgs
///                         {
///                             KeyData = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCY.......",
///                         },
///                     },
///                 },
///             },
///             NetworkProfile = new AzureNative.HybridContainerService.Inputs.NetworkProfileArgs
///             {
///                 LoadBalancerProfile = new AzureNative.HybridContainerService.Inputs.LoadBalancerProfileArgs
///                 {
///                     Count = 1,
///                     LinuxProfile = new AzureNative.HybridContainerService.Inputs.LinuxProfilePropertiesArgs
///                     {
///                         Ssh = new AzureNative.HybridContainerService.Inputs.LinuxProfilePropertiesSshArgs
///                         {
///                             PublicKeys = new[]
///                             {
///                                 new AzureNative.HybridContainerService.Inputs.LinuxProfilePropertiesPublicKeysArgs
///                                 {
///                                     KeyData = "ssh-rsa AAAAB2NzaC1yc2EAAAADAQABAAACAQCY......",
///                                 },
///                             },
///                         },
///                     },
///                     OsType = AzureNative.HybridContainerService.OsType.Linux,
///                     VmSize = "Standard_K8S3_v1",
///                 },
///                 LoadBalancerSku = AzureNative.HybridContainerService.LoadBalancerSku.Unstacked_haproxy,
///                 NetworkPolicy = AzureNative.HybridContainerService.NetworkPolicy.Calico,
///                 PodCidr = "10.244.0.0/16",
///             },
///         },
///         ResourceGroupName = "test-arcappliance-resgrp",
///         ResourceName = "test-hybridakscluster",
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
/// 	hybridcontainerservice "github.com/pulumi/pulumi-azure-native-sdk/hybridcontainerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcontainerservice.NewProvisionedCluster(ctx, "provisionedCluster", &hybridcontainerservice.ProvisionedClusterArgs{
/// 			ExtendedLocation: &hybridcontainerservice.ProvisionedClustersExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			Properties: &hybridcontainerservice.ProvisionedClustersAllPropertiesArgs{
/// 				AgentPoolProfiles: hybridcontainerservice.NamedAgentPoolProfileArray{
/// 					&hybridcontainerservice.NamedAgentPoolProfileArgs{
/// 						Count:  pulumi.Int(1),
/// 						Name:   pulumi.String("default-nodepool-1"),
/// 						OsType: pulumi.String(hybridcontainerservice.OsTypeLinux),
/// 						VmSize: pulumi.String("Standard_A4_v2"),
/// 					},
/// 				},
/// 				CloudProviderProfile: &hybridcontainerservice.CloudProviderProfileArgs{
/// 					InfraNetworkProfile: &hybridcontainerservice.CloudProviderProfileInfraNetworkProfileArgs{
/// 						VnetSubnetIds: pulumi.StringArray{
/// 							pulumi.String("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.HybridContainerService/virtualNetworks/test-vnet-static"),
/// 						},
/// 					},
/// 					InfraStorageProfile: &hybridcontainerservice.CloudProviderProfileInfraStorageProfileArgs{
/// 						StorageSpaceIds: pulumi.StringArray{
/// 							pulumi.String("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.HybridContainerService/storageSpaces/test-storage"),
/// 						},
/// 					},
/// 				},
/// 				ControlPlane: &hybridcontainerservice.ControlPlaneProfileArgs{
/// 					Count: pulumi.Int(1),
/// 					LinuxProfile: &hybridcontainerservice.LinuxProfilePropertiesArgs{
/// 						Ssh: &hybridcontainerservice.LinuxProfilePropertiesSshArgs{
/// 							PublicKeys: hybridcontainerservice.LinuxProfilePropertiesPublicKeysArray{
/// 								&hybridcontainerservice.LinuxProfilePropertiesPublicKeysArgs{
/// 									KeyData: pulumi.String("ssh-rsa AAAAB1NzaC1yc2EAAAADAQABAAACAQCY......"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					OsType: pulumi.String(hybridcontainerservice.OsTypeLinux),
/// 					VmSize: pulumi.String("Standard_A4_v2"),
/// 				},
/// 				KubernetesVersion: pulumi.String("v1.20.5"),
/// 				LinuxProfile: &hybridcontainerservice.LinuxProfilePropertiesArgs{
/// 					Ssh: &hybridcontainerservice.LinuxProfilePropertiesSshArgs{
/// 						PublicKeys: hybridcontainerservice.LinuxProfilePropertiesPublicKeysArray{
/// 							&hybridcontainerservice.LinuxProfilePropertiesPublicKeysArgs{
/// 								KeyData: pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCY......."),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				NetworkProfile: &hybridcontainerservice.NetworkProfileArgs{
/// 					LoadBalancerProfile: &hybridcontainerservice.LoadBalancerProfileArgs{
/// 						Count: pulumi.Int(1),
/// 						LinuxProfile: &hybridcontainerservice.LinuxProfilePropertiesArgs{
/// 							Ssh: &hybridcontainerservice.LinuxProfilePropertiesSshArgs{
/// 								PublicKeys: hybridcontainerservice.LinuxProfilePropertiesPublicKeysArray{
/// 									&hybridcontainerservice.LinuxProfilePropertiesPublicKeysArgs{
/// 										KeyData: pulumi.String("ssh-rsa AAAAB2NzaC1yc2EAAAADAQABAAACAQCY......"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						OsType: pulumi.String(hybridcontainerservice.OsTypeLinux),
/// 						VmSize: pulumi.String("Standard_K8S3_v1"),
/// 					},
/// 					LoadBalancerSku: pulumi.String(hybridcontainerservice.LoadBalancerSku_Unstacked_Haproxy),
/// 					NetworkPolicy:   pulumi.String(hybridcontainerservice.NetworkPolicyCalico),
/// 					PodCidr:         pulumi.String("10.244.0.0/16"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-arcappliance-resgrp"),
/// 			ResourceName:      pulumi.String("test-hybridakscluster"),
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
/// import com.pulumi.azurenative.hybridcontainerservice.ProvisionedCluster;
/// import com.pulumi.azurenative.hybridcontainerservice.ProvisionedClusterArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.ProvisionedClustersExtendedLocationArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.ProvisionedClustersAllPropertiesArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.CloudProviderProfileArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.CloudProviderProfileInfraNetworkProfileArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.CloudProviderProfileInfraStorageProfileArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.ControlPlaneProfileArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.LinuxProfilePropertiesArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.LinuxProfilePropertiesSshArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.LoadBalancerProfileArgs;
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
///         var provisionedCluster = new ProvisionedCluster("provisionedCluster", ProvisionedClusterArgs.builder()
///             .extendedLocation(ProvisionedClustersExtendedLocationArgs.builder()
///                 .name("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation")
///                 .type("CustomLocation")
///                 .build())
///             .location("westus")
///             .properties(ProvisionedClustersAllPropertiesArgs.builder()
///                 .agentPoolProfiles(NamedAgentPoolProfileArgs.builder()
///                     .count(1)
///                     .name("default-nodepool-1")
///                     .osType("Linux")
///                     .vmSize("Standard_A4_v2")
///                     .build())
///                 .cloudProviderProfile(CloudProviderProfileArgs.builder()
///                     .infraNetworkProfile(CloudProviderProfileInfraNetworkProfileArgs.builder()
///                         .vnetSubnetIds("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.HybridContainerService/virtualNetworks/test-vnet-static")
///                         .build())
///                     .infraStorageProfile(CloudProviderProfileInfraStorageProfileArgs.builder()
///                         .storageSpaceIds("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.HybridContainerService/storageSpaces/test-storage")
///                         .build())
///                     .build())
///                 .controlPlane(ControlPlaneProfileArgs.builder()
///                     .count(1)
///                     .linuxProfile(LinuxProfilePropertiesArgs.builder()
///                         .ssh(LinuxProfilePropertiesSshArgs.builder()
///                             .publicKeys(LinuxProfilePropertiesPublicKeysArgs.builder()
///                                 .keyData("ssh-rsa AAAAB1NzaC1yc2EAAAADAQABAAACAQCY......")
///                                 .build())
///                             .build())
///                         .build())
///                     .osType("Linux")
///                     .vmSize("Standard_A4_v2")
///                     .build())
///                 .kubernetesVersion("v1.20.5")
///                 .linuxProfile(LinuxProfilePropertiesArgs.builder()
///                     .ssh(LinuxProfilePropertiesSshArgs.builder()
///                         .publicKeys(LinuxProfilePropertiesPublicKeysArgs.builder()
///                             .keyData("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCY.......")
///                             .build())
///                         .build())
///                     .build())
///                 .networkProfile(NetworkProfileArgs.builder()
///                     .loadBalancerProfile(LoadBalancerProfileArgs.builder()
///                         .count(1)
///                         .linuxProfile(LinuxProfilePropertiesArgs.builder()
///                             .ssh(LinuxProfilePropertiesSshArgs.builder()
///                                 .publicKeys(LinuxProfilePropertiesPublicKeysArgs.builder()
///                                     .keyData("ssh-rsa AAAAB2NzaC1yc2EAAAADAQABAAACAQCY......")
///                                     .build())
///                                 .build())
///                             .build())
///                         .osType("Linux")
///                         .vmSize("Standard_K8S3_v1")
///                         .build())
///                     .loadBalancerSku("unstacked-haproxy")
///                     .networkPolicy("calico")
///                     .podCidr("10.244.0.0/16")
///                     .build())
///                 .build())
///             .resourceGroupName("test-arcappliance-resgrp")
///             .resourceName("test-hybridakscluster")
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
/// const provisionedCluster = new azure_native.hybridcontainerservice.ProvisionedCluster("provisionedCluster", {
///     extendedLocation: {
///         name: "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation",
///         type: "CustomLocation",
///     },
///     location: "westus",
///     properties: {
///         agentPoolProfiles: [{
///             count: 1,
///             name: "default-nodepool-1",
///             osType: azure_native.hybridcontainerservice.OsType.Linux,
///             vmSize: "Standard_A4_v2",
///         }],
///         cloudProviderProfile: {
///             infraNetworkProfile: {
///                 vnetSubnetIds: ["/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.HybridContainerService/virtualNetworks/test-vnet-static"],
///             },
///             infraStorageProfile: {
///                 storageSpaceIds: ["/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.HybridContainerService/storageSpaces/test-storage"],
///             },
///         },
///         controlPlane: {
///             count: 1,
///             linuxProfile: {
///                 ssh: {
///                     publicKeys: [{
///                         keyData: "ssh-rsa AAAAB1NzaC1yc2EAAAADAQABAAACAQCY......",
///                     }],
///                 },
///             },
///             osType: azure_native.hybridcontainerservice.OsType.Linux,
///             vmSize: "Standard_A4_v2",
///         },
///         kubernetesVersion: "v1.20.5",
///         linuxProfile: {
///             ssh: {
///                 publicKeys: [{
///                     keyData: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCY.......",
///                 }],
///             },
///         },
///         networkProfile: {
///             loadBalancerProfile: {
///                 count: 1,
///                 linuxProfile: {
///                     ssh: {
///                         publicKeys: [{
///                             keyData: "ssh-rsa AAAAB2NzaC1yc2EAAAADAQABAAACAQCY......",
///                         }],
///                     },
///                 },
///                 osType: azure_native.hybridcontainerservice.OsType.Linux,
///                 vmSize: "Standard_K8S3_v1",
///             },
///             loadBalancerSku: azure_native.hybridcontainerservice.LoadBalancerSku.Unstacked_haproxy,
///             networkPolicy: azure_native.hybridcontainerservice.NetworkPolicy.Calico,
///             podCidr: "10.244.0.0/16",
///         },
///     },
///     resourceGroupName: "test-arcappliance-resgrp",
///     resourceName: "test-hybridakscluster",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// provisioned_cluster = azure_native.hybridcontainerservice.ProvisionedCluster("provisionedCluster",
///     extended_location={
///         "name": "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation",
///         "type": "CustomLocation",
///     },
///     location="westus",
///     properties={
///         "agent_pool_profiles": [{
///             "count": 1,
///             "name": "default-nodepool-1",
///             "os_type": azure_native.hybridcontainerservice.OsType.LINUX,
///             "vm_size": "Standard_A4_v2",
///         }],
///         "cloud_provider_profile": {
///             "infra_network_profile": {
///                 "vnet_subnet_ids": ["/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.HybridContainerService/virtualNetworks/test-vnet-static"],
///             },
///             "infra_storage_profile": {
///                 "storage_space_ids": ["/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.HybridContainerService/storageSpaces/test-storage"],
///             },
///         },
///         "control_plane": {
///             "count": 1,
///             "linux_profile": {
///                 "ssh": {
///                     "public_keys": [{
///                         "key_data": "ssh-rsa AAAAB1NzaC1yc2EAAAADAQABAAACAQCY......",
///                     }],
///                 },
///             },
///             "os_type": azure_native.hybridcontainerservice.OsType.LINUX,
///             "vm_size": "Standard_A4_v2",
///         },
///         "kubernetes_version": "v1.20.5",
///         "linux_profile": {
///             "ssh": {
///                 "public_keys": [{
///                     "key_data": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCY.......",
///                 }],
///             },
///         },
///         "network_profile": {
///             "load_balancer_profile": {
///                 "count": 1,
///                 "linux_profile": {
///                     "ssh": {
///                         "public_keys": [{
///                             "key_data": "ssh-rsa AAAAB2NzaC1yc2EAAAADAQABAAACAQCY......",
///                         }],
///                     },
///                 },
///                 "os_type": azure_native.hybridcontainerservice.OsType.LINUX,
///                 "vm_size": "Standard_K8S3_v1",
///             },
///             "load_balancer_sku": azure_native.hybridcontainerservice.LoadBalancerSku.UNSTACKED_HAPROXY,
///             "network_policy": azure_native.hybridcontainerservice.NetworkPolicy.CALICO,
///             "pod_cidr": "10.244.0.0/16",
///         },
///     },
///     resource_group_name="test-arcappliance-resgrp",
///     resource_name_="test-hybridakscluster")
///
/// ```
///
/// ```yaml
/// resources:
///   provisionedCluster:
///     type: azure-native:hybridcontainerservice:ProvisionedCluster
///     properties:
///       extendedLocation:
///         name: /subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation
///         type: CustomLocation
///       location: westus
///       properties:
///         agentPoolProfiles:
///           - count: 1
///             name: default-nodepool-1
///             osType: Linux
///             vmSize: Standard_A4_v2
///         cloudProviderProfile:
///           infraNetworkProfile:
///             vnetSubnetIds:
///               - /subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.HybridContainerService/virtualNetworks/test-vnet-static
///           infraStorageProfile:
///             storageSpaceIds:
///               - /subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourceGroups/test-arcappliance-resgrp/providers/Microsoft.HybridContainerService/storageSpaces/test-storage
///         controlPlane:
///           count: 1
///           linuxProfile:
///             ssh:
///               publicKeys:
///                 - keyData: ssh-rsa AAAAB1NzaC1yc2EAAAADAQABAAACAQCY......
///           osType: Linux
///           vmSize: Standard_A4_v2
///         kubernetesVersion: v1.20.5
///         linuxProfile:
///           ssh:
///             publicKeys:
///               - keyData: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCY.......
///         networkProfile:
///           loadBalancerProfile:
///             count: 1
///             linuxProfile:
///               ssh:
///                 publicKeys:
///                   - keyData: ssh-rsa AAAAB2NzaC1yc2EAAAADAQABAAACAQCY......
///             osType: Linux
///             vmSize: Standard_K8S3_v1
///           loadBalancerSku: unstacked-haproxy
///           networkPolicy: calico
///           podCidr: 10.244.0.0/16
///       resourceGroupName: test-arcappliance-resgrp
///       resourceName: test-hybridakscluster
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
/// $ pulumi import azure-native:hybridcontainerservice:ProvisionedCluster test-hybridakscluster /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/provisionedClusters/{resourceName}
/// ```
class ProvisionedCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<ProvisionedClustersResponseResponseExtendedLocation?>
  extendedLocation;

  /// Identity for the Provisioned cluster.
  late final pulumi.Output<ProvisionedClusterIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<ProvisionedClustersResponsePropertiesResponse>
  properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ProvisionedCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProvisionedCluster]. {@macro pulumi_hybridcontainerservice_provisioned_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProvisionedCluster(
    String name, {
    ProvisionedClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridcontainerservice:ProvisionedCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation =
        registerOutput<ProvisionedClustersResponseResponseExtendedLocation?>(
          'extendedLocation',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ProvisionedClustersResponseResponseExtendedLocation.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    identity = registerOutput<ProvisionedClusterIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ProvisionedClusterIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ProvisionedClustersResponsePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ProvisionedClustersResponsePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
