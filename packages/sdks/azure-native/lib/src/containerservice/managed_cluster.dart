import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_settings_response.dart';
import 'container_service_linux_profile_response.dart';
import 'container_service_network_profile_response.dart';
import 'extended_location_response.dart';
import 'managed_cluster_aadprofile_response.dart';
import 'managed_cluster_addon_profile_response.dart';
import 'managed_cluster_agent_pool_profile_response.dart';
import 'managed_cluster_aitoolchain_operator_profile_response.dart';
import 'managed_cluster_apiserver_access_profile_response.dart';
import 'managed_cluster_args.dart';
import 'managed_cluster_auto_upgrade_profile_response.dart';
import 'managed_cluster_azure_monitor_profile_response.dart';
import 'managed_cluster_bootstrap_profile_response.dart';
import 'managed_cluster_httpproxy_config_response.dart';
import 'managed_cluster_identity_response.dart';
import 'managed_cluster_ingress_profile_response.dart';
import 'managed_cluster_metrics_profile_response.dart';
import 'managed_cluster_node_provisioning_profile_response.dart';
import 'managed_cluster_node_resource_group_profile_response.dart';
import 'managed_cluster_oidcissuer_profile_response.dart';
import 'managed_cluster_pod_identity_profile_response.dart';
import 'managed_cluster_properties_response_auto_scaler_profile.dart';
import 'managed_cluster_security_profile_response.dart';
import 'managed_cluster_service_principal_profile_response.dart';
import 'managed_cluster_skuresponse.dart';
import 'managed_cluster_status_response.dart';
import 'managed_cluster_storage_profile_response.dart';
import 'managed_cluster_windows_profile_response.dart';
import 'managed_cluster_workload_auto_scaler_profile_response.dart';
import 'power_state_response.dart';
import 'private_link_resource_response.dart';
import 'service_mesh_profile_response.dart';
import 'system_data_response.dart';
import 'user_assigned_identity_managed_cluster_response.dart';

/// Managed cluster.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2019-11-01, 2020-01-01, 2020-02-01, 2020-03-01, 2020-04-01, 2020-06-01, 2020-07-01, 2020-09-01, 2020-11-01, 2020-12-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-07-01, 2021-08-01, 2021-09-01, 2021-10-01, 2021-11-01-preview, 2022-01-01, 2022-01-02-preview, 2022-02-01, 2022-02-02-preview, 2022-03-01, 2022-03-02-preview, 2022-04-01, 2022-04-02-preview, 2022-05-02-preview, 2022-06-01, 2022-06-02-preview, 2022-07-01, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-01, 2022-09-02-preview, 2022-10-02-preview, 2022-11-01, 2022-11-02-preview, 2023-01-01, 2023-01-02-preview, 2023-02-01, 2023-02-02-preview, 2023-03-01, 2023-03-02-preview, 2023-04-01, 2023-04-02-preview, 2023-05-01, 2023-05-02-preview, 2023-06-01, 2023-06-02-preview, 2023-07-01, 2023-07-02-preview, 2023-08-01, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview, 2026-01-01, 2026-01-02-preview, 2026-02-01, 2026-02-02-preview, 2026-03-01, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// When creating a managed cluster you must define at least one agent pool inline via the `agentPoolProfiles` property. The Azure API does not currently allow this property to be updated directly. Instead, additional agent pools can be defined via the `AgentPool` resource. If needing to change the initial agent pool profile property, you can either trigger the whole cluster to be re-created by using the [replaceOnChanges resource option](https://www.pulumi.com/docs/concepts/options/replaceonchanges/), or make the change directly in Azure then use `pulumi refresh` to update the stack's stack to match.
///
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Managed Cluster using an agent pool snapshot
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 CreationData = new AzureNative.ContainerService.Inputs.CreationDataArgs
///                 {
///                     SourceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/snapshots/snapshot1",
///                 },
///                 EnableFIPS = true,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count: pulumi.Int(3),
/// 					CreationData: &containerservice.CreationDataArgs{
/// 						SourceResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/snapshots/snapshot1"),
/// 					},
/// 					EnableFIPS:         pulumi.Bool(true),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count = 3
///     creation_data = {
///       source_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/snapshots/snapshot1"
///     }
///     enable_fips           = true
///     enable_node_public_ip = true
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.CreationDataArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .creationData(CreationDataArgs.builder()
///                     .sourceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/snapshots/snapshot1")
///                     .build())
///                 .enableFIPS(true)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         creationData: {
///             sourceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/snapshots/snapshot1",
///         },
///         enableFIPS: true,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "creation_data": {
///             "source_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/snapshots/snapshot1",
///         },
///         "enable_fips": True,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           creationData:
///             sourceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.ContainerService/snapshots/snapshot1
///           enableFIPS: true
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with AKS-managed NAT gateway as outbound type
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = false,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             NatGatewayProfile = new AzureNative.ContainerService.Inputs.ManagedClusterNATGatewayProfileArgs
///             {
///                 ManagedOutboundIPProfile = new AzureNative.ContainerService.Inputs.ManagedClusterManagedOutboundIPProfileArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             OutboundType = AzureNative.ContainerService.OutboundType.ManagedNATGateway,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(false),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				NatGatewayProfile: &containerservice.ManagedClusterNATGatewayProfileArgs{
/// 					ManagedOutboundIPProfile: &containerservice.ManagedClusterManagedOutboundIPProfileArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				OutboundType: pulumi.String(containerservice.OutboundTypeManagedNATGateway),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                 = 3
///     enable_node_public_ip = false
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_sku = "standard"
///     nat_gateway_profile = {
///       managed_outbound_ip_profile = {
///         count = 2
///       }
///     }
///     outbound_type = "managedNATGateway"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterNATGatewayProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterManagedOutboundIPProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(false)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerSku("standard")
///                 .natGatewayProfile(ManagedClusterNATGatewayProfileArgs.builder()
///                     .managedOutboundIPProfile(ManagedClusterManagedOutboundIPProfileArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .outboundType("managedNATGateway")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: false,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         natGatewayProfile: {
///             managedOutboundIPProfile: {
///                 count: 2,
///             },
///         },
///         outboundType: azure_native.containerservice.OutboundType.ManagedNATGateway,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": False,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "nat_gateway_profile": {
///             "managed_outbound_ip_profile": {
///                 "count": 2,
///             },
///         },
///         "outbound_type": azure_native.containerservice.OutboundType.MANAGED_NAT_GATEWAY,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: false
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerSku: standard
///         natGatewayProfile:
///           managedOutboundIPProfile:
///             count: 2
///         outboundType: managedNATGateway
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with Azure KeyVault Secrets Provider Addon
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles =
///         {
///             { "azureKeyvaultSecretsProvider", new AzureNative.ContainerService.Inputs.ManagedClusterAddonProfileArgs
///             {
///                 Config =
///                 {
///                     { "enableSecretRotation", "true" },
///                     { "rotationPollInterval", "2m" },
///                 },
///                 Enabled = true,
///             } },
///         },
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{
/// 				"azureKeyvaultSecretsProvider": &containerservice.ManagedClusterAddonProfileArgs{
/// 					Config: pulumi.StringMap{
/// 						"enableSecretRotation": pulumi.String("true"),
/// 						"rotationPollInterval": pulumi.String("2m"),
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {
///     "azureKeyvaultSecretsProvider" = {
///       config = {
///         "enableSecretRotation" = "true"
///         "rotationPollInterval" = "2m"
///       }
///       enabled = true
///     }
///   }
///   agent_pool_profiles {
///     count                 = 3
///     enable_node_public_ip = true
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.of("azureKeyvaultSecretsProvider", ManagedClusterAddonProfileArgs.builder()
///                 .config(Map.ofEntries(
///                     Map.entry("enableSecretRotation", "true"),
///                     Map.entry("rotationPollInterval", "2m")
///                 ))
///                 .enabled(true)
///                 .build()))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {
///         azureKeyvaultSecretsProvider: {
///             config: {
///                 enableSecretRotation: "true",
///                 rotationPollInterval: "2m",
///             },
///             enabled: true,
///         },
///     },
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={
///         "azureKeyvaultSecretsProvider": {
///             "config": {
///                 "enableSecretRotation": "true",
///                 "rotationPollInterval": "2m",
///             },
///             "enabled": True,
///         },
///     },
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles:
///         azureKeyvaultSecretsProvider:
///           config:
///             enableSecretRotation: 'true'
///             rotationPollInterval: 2m
///           enabled: true
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with Capacity Reservation Group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 CapacityReservationGroupID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/capacityReservationGroups/crg1",
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					CapacityReservationGroupID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/capacityReservationGroups/crg1"),
/// 					Count:                      pulumi.Int(3),
/// 					EnableNodePublicIP:         pulumi.Bool(true),
/// 					Mode:                       pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:                       pulumi.String("nodepool1"),
/// 					OsType:                     pulumi.String(containerservice.OSTypeLinux),
/// 					Type:                       pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:                     pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     capacity_reservation_group_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/capacityReservationGroups/crg1"
///     count                         = 3
///     enable_node_public_ip         = true
///     mode                          = "System"
///     name                          = "nodepool1"
///     os_type                       = "Linux"
///     type                          = "VirtualMachineScaleSets"
///     vm_size                       = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .capacityReservationGroupID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/capacityReservationGroups/crg1")
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         capacityReservationGroupID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/capacityReservationGroups/crg1",
///         count: 3,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "capacity_reservation_group_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/capacityReservationGroups/crg1",
///         "count": 3,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - capacityReservationGroupID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/capacityReservationGroups/crg1
///           count: 3
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with Custom CA Trust Certificates
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         SecurityProfile = new AzureNative.ContainerService.Inputs.ManagedClusterSecurityProfileArgs
///         {
///             CustomCATrustCertificates = new[]
///             {
///                 "ZHVtbXlFeGFtcGxlVGVzdFZhbHVlRm9yQ2VydGlmaWNhdGVUb0JlQWRkZWQ=",
///             },
///         },
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			SecurityProfile: &containerservice.ManagedClusterSecurityProfileArgs{
/// 				CustomCATrustCertificates: pulumi.StringArray{
/// 					pulumi.String("ZHVtbXlFeGFtcGxlVGVzdFZhbHVlRm9yQ2VydGlmaWNhdGVUb0JlQWRkZWQ="),
/// 				},
/// 			},
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                 = 3
///     enable_node_public_ip = true
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   security_profile = {
///     custom_ca_trust_certificates = ["ZHVtbXlFeGFtcGxlVGVzdFZhbHVlRm9yQ2VydGlmaWNhdGVUb0JlQWRkZWQ="]
///   }
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSecurityProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .securityProfile(ManagedClusterSecurityProfileArgs.builder()
///                 .customCATrustCertificates("ZHVtbXlFeGFtcGxlVGVzdFZhbHVlRm9yQ2VydGlmaWNhdGVUb0JlQWRkZWQ=")
///                 .build())
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     securityProfile: {
///         customCATrustCertificates: ["ZHVtbXlFeGFtcGxlVGVzdFZhbHVlRm9yQ2VydGlmaWNhdGVUb0JlQWRkZWQ="],
///     },
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     security_profile={
///         "custom_ca_trust_certificates": ["ZHVtbXlFeGFtcGxlVGVzdFZhbHVlRm9yQ2VydGlmaWNhdGVUb0JlQWRkZWQ="],
///     },
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       securityProfile:
///         customCATrustCertificates:
///           - ZHVtbXlFeGFtcGxlVGVzdFZhbHVlRm9yQ2VydGlmaWNhdGVUb0JlQWRkZWQ=
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with Dedicated Host Group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 HostGroupID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/Microsoft.Compute/hostGroups/hostgroup1",
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					HostGroupID:        pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/Microsoft.Compute/hostGroups/hostgroup1"),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                 = 3
///     enable_node_public_ip = true
///     host_group_id         = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/Microsoft.Compute/hostGroups/hostgroup1"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .hostGroupID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/Microsoft.Compute/hostGroups/hostgroup1")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: true,
///         hostGroupID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/Microsoft.Compute/hostGroups/hostgroup1",
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": True,
///         "host_group_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/Microsoft.Compute/hostGroups/hostgroup1",
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: true
///           hostGroupID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/Microsoft.Compute/hostGroups/hostgroup1
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with EncryptionAtHost enabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableEncryptionAtHost = true,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:                  pulumi.Int(3),
/// 					EnableEncryptionAtHost: pulumi.Bool(true),
/// 					EnableNodePublicIP:     pulumi.Bool(true),
/// 					Mode:                   pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:                   pulumi.String("nodepool1"),
/// 					OsType:                 pulumi.String(containerservice.OSTypeLinux),
/// 					Type:                   pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:                 pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                     = 3
///     enable_encryption_at_host = true
///     enable_node_public_ip     = true
///     mode                      = "System"
///     name                      = "nodepool1"
///     os_type                   = "Linux"
///     type                      = "VirtualMachineScaleSets"
///     vm_size                   = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableEncryptionAtHost(true)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableEncryptionAtHost: true,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_encryption_at_host": True,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableEncryptionAtHost: true
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with FIPS enabled OS
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableFIPS = true,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableFIPS:         pulumi.Bool(true),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                 = 3
///     enable_fips           = true
///     enable_node_public_ip = true
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableFIPS(true)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableFIPS: true,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_fips": True,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableFIPS: true
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with GPUMIG
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 GpuInstanceProfile = AzureNative.ContainerService.GPUInstanceProfile.MIG3g,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_ND96asr_v4",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         HttpProxyConfig = new AzureNative.ContainerService.Inputs.ManagedClusterHTTPProxyConfigArgs
///         {
///             HttpProxy = "http://myproxy.server.com:8080",
///             HttpsProxy = "https://myproxy.server.com:8080",
///             NoProxy = new[]
///             {
///                 "localhost",
///                 "127.0.0.1",
///             },
///             TrustedCa = "Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=",
///         },
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					GpuInstanceProfile: pulumi.String(containerservice.GPUInstanceProfileMIG3g),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_ND96asr_v4"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			HttpProxyConfig: &containerservice.ManagedClusterHTTPProxyConfigArgs{
/// 				HttpProxy:  pulumi.String("http://myproxy.server.com:8080"),
/// 				HttpsProxy: pulumi.String("https://myproxy.server.com:8080"),
/// 				NoProxy: pulumi.StringArray{
/// 					pulumi.String("localhost"),
/// 					pulumi.String("127.0.0.1"),
/// 				},
/// 				TrustedCa: pulumi.String("Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U="),
/// 			},
/// 			KubernetesVersion: pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                 = 3
///     enable_node_public_ip = true
///     gpu_instance_profile  = "MIG3g"
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_ND96asr_v4"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   http_proxy_config = {
///     http_proxy  = "http://myproxy.server.com:8080"
///     https_proxy = "https://myproxy.server.com:8080"
///     no_proxy    = ["localhost", "127.0.0.1"]
///     trusted_ca  = "Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U="
///   }
///   kubernetes_version = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterHTTPProxyConfigArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .gpuInstanceProfile("MIG3g")
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_ND96asr_v4")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .httpProxyConfig(ManagedClusterHTTPProxyConfigArgs.builder()
///                 .httpProxy("http://myproxy.server.com:8080")
///                 .httpsProxy("https://myproxy.server.com:8080")
///                 .noProxy(
///                     "localhost",
///                     "127.0.0.1")
///                 .trustedCa("Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=")
///                 .build())
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: true,
///         gpuInstanceProfile: azure_native.containerservice.GPUInstanceProfile.MIG3g,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_ND96asr_v4",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     httpProxyConfig: {
///         httpProxy: "http://myproxy.server.com:8080",
///         httpsProxy: "https://myproxy.server.com:8080",
///         noProxy: [
///             "localhost",
///             "127.0.0.1",
///         ],
///         trustedCa: "Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=",
///     },
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": True,
///         "gpu_instance_profile": azure_native.containerservice.GPUInstanceProfile.MIG3G,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_ND96asr_v4",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     http_proxy_config={
///         "http_proxy": "http://myproxy.server.com:8080",
///         "https_proxy": "https://myproxy.server.com:8080",
///         "no_proxy": [
///             "localhost",
///             "127.0.0.1",
///         ],
///         "trusted_ca": "Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=",
///     },
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: true
///           gpuInstanceProfile: MIG3g
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_ND96asr_v4
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       httpProxyConfig:
///         httpProxy: http://myproxy.server.com:8080
///         httpsProxy: https://myproxy.server.com:8080
///         noProxy:
///           - localhost
///           - 127.0.0.1
///         trustedCa: Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with HTTP proxy configured
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         HttpProxyConfig = new AzureNative.ContainerService.Inputs.ManagedClusterHTTPProxyConfigArgs
///         {
///             HttpProxy = "http://myproxy.server.com:8080",
///             HttpsProxy = "https://myproxy.server.com:8080",
///             NoProxy = new[]
///             {
///                 "localhost",
///                 "127.0.0.1",
///             },
///             TrustedCa = "Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=",
///         },
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			HttpProxyConfig: &containerservice.ManagedClusterHTTPProxyConfigArgs{
/// 				HttpProxy:  pulumi.String("http://myproxy.server.com:8080"),
/// 				HttpsProxy: pulumi.String("https://myproxy.server.com:8080"),
/// 				NoProxy: pulumi.StringArray{
/// 					pulumi.String("localhost"),
/// 					pulumi.String("127.0.0.1"),
/// 				},
/// 				TrustedCa: pulumi.String("Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U="),
/// 			},
/// 			KubernetesVersion: pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                 = 3
///     enable_node_public_ip = true
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   http_proxy_config = {
///     http_proxy  = "http://myproxy.server.com:8080"
///     https_proxy = "https://myproxy.server.com:8080"
///     no_proxy    = ["localhost", "127.0.0.1"]
///     trusted_ca  = "Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U="
///   }
///   kubernetes_version = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterHTTPProxyConfigArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .httpProxyConfig(ManagedClusterHTTPProxyConfigArgs.builder()
///                 .httpProxy("http://myproxy.server.com:8080")
///                 .httpsProxy("https://myproxy.server.com:8080")
///                 .noProxy(
///                     "localhost",
///                     "127.0.0.1")
///                 .trustedCa("Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=")
///                 .build())
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     httpProxyConfig: {
///         httpProxy: "http://myproxy.server.com:8080",
///         httpsProxy: "https://myproxy.server.com:8080",
///         noProxy: [
///             "localhost",
///             "127.0.0.1",
///         ],
///         trustedCa: "Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=",
///     },
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     http_proxy_config={
///         "http_proxy": "http://myproxy.server.com:8080",
///         "https_proxy": "https://myproxy.server.com:8080",
///         "no_proxy": [
///             "localhost",
///             "127.0.0.1",
///         ],
///         "trusted_ca": "Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=",
///     },
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       httpProxyConfig:
///         httpProxy: http://myproxy.server.com:8080
///         httpsProxy: https://myproxy.server.com:8080
///         noProxy:
///           - localhost
///           - 127.0.0.1
///         trustedCa: Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with LongTermSupport
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableEncryptionAtHost = true,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         ApiServerAccessProfile = new AzureNative.ContainerService.Inputs.ManagedClusterAPIServerAccessProfileArgs
///         {
///             DisableRunCommand = true,
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = AzureNative.ContainerService.ManagedClusterSKUName.Base,
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Premium,
///         },
///         SupportPlan = AzureNative.ContainerService.KubernetesSupportPlan.AKSLongTermSupport,
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:                  pulumi.Int(3),
/// 					EnableEncryptionAtHost: pulumi.Bool(true),
/// 					EnableNodePublicIP:     pulumi.Bool(true),
/// 					Mode:                   pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:                   pulumi.String("nodepool1"),
/// 					OsType:                 pulumi.String(containerservice.OSTypeLinux),
/// 					Type:                   pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:                 pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			ApiServerAccessProfile: &containerservice.ManagedClusterAPIServerAccessProfileArgs{
/// 				DisableRunCommand: pulumi.Bool(true),
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DnsPrefix:         pulumi.String("dnsprefix1"),
/// 			EnableRBAC:        pulumi.Bool(true),
/// 			KubernetesVersion: pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String(containerservice.ManagedClusterSKUNameBase),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierPremium),
/// 			},
/// 			SupportPlan: pulumi.String(containerservice.KubernetesSupportPlanAKSLongTermSupport),
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                     = 3
///     enable_encryption_at_host = true
///     enable_node_public_ip     = true
///     mode                      = "System"
///     name                      = "nodepool1"
///     os_type                   = "Linux"
///     type                      = "VirtualMachineScaleSets"
///     vm_size                   = "Standard_DS2_v2"
///   }
///   api_server_access_profile = {
///     disable_run_command = true
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   dns_prefix         = "dnsprefix1"
///   enable_rbac        = true
///   kubernetes_version = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Base"
///     tier = "Premium"
///   }
///   support_plan = "AKSLongTermSupport"
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAPIServerAccessProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableEncryptionAtHost(true)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .apiServerAccessProfile(ManagedClusterAPIServerAccessProfileArgs.builder()
///                 .disableRunCommand(true)
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Base")
///                 .tier("Premium")
///                 .build())
///             .supportPlan("AKSLongTermSupport")
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableEncryptionAtHost: true,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     apiServerAccessProfile: {
///         disableRunCommand: true,
///     },
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: azure_native.containerservice.ManagedClusterSKUName.Base,
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Premium,
///     },
///     supportPlan: azure_native.containerservice.KubernetesSupportPlan.AKSLongTermSupport,
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_encryption_at_host": True,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     api_server_access_profile={
///         "disable_run_command": True,
///     },
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": azure_native.containerservice.ManagedClusterSKUName.BASE,
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.PREMIUM,
///     },
///     support_plan=azure_native.containerservice.KubernetesSupportPlan.AKS_LONG_TERM_SUPPORT,
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableEncryptionAtHost: true
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       apiServerAccessProfile:
///         disableRunCommand: true
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Base
///         tier: Premium
///       supportPlan: AKSLongTermSupport
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with Node Public IP Prefix
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 NodePublicIPPrefixID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/publicIPPrefixes/public-ip-prefix",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:                pulumi.Int(3),
/// 					EnableNodePublicIP:   pulumi.Bool(true),
/// 					Mode:                 pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:                 pulumi.String("nodepool1"),
/// 					NodePublicIPPrefixID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/publicIPPrefixes/public-ip-prefix"),
/// 					OsType:               pulumi.String(containerservice.OSTypeLinux),
/// 					Type:                 pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:               pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                    = 3
///     enable_node_public_ip    = true
///     mode                     = "System"
///     name                     = "nodepool1"
///     node_public_ip_prefix_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/publicIPPrefixes/public-ip-prefix"
///     os_type                  = "Linux"
///     type                     = "VirtualMachineScaleSets"
///     vm_size                  = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .nodePublicIPPrefixID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/publicIPPrefixes/public-ip-prefix")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         nodePublicIPPrefixID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/publicIPPrefixes/public-ip-prefix",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "node_public_ip_prefix_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/publicIPPrefixes/public-ip-prefix",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           nodePublicIPPrefixID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/publicIPPrefixes/public-ip-prefix
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with OSSKU
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsSKU = AzureNative.ContainerService.OSSKU.AzureLinux,
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         HttpProxyConfig = new AzureNative.ContainerService.Inputs.ManagedClusterHTTPProxyConfigArgs
///         {
///             HttpProxy = "http://myproxy.server.com:8080",
///             HttpsProxy = "https://myproxy.server.com:8080",
///             NoProxy = new[]
///             {
///                 "localhost",
///                 "127.0.0.1",
///             },
///             TrustedCa = "Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=",
///         },
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsSKU:              pulumi.String(containerservice.OSSKUAzureLinux),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			HttpProxyConfig: &containerservice.ManagedClusterHTTPProxyConfigArgs{
/// 				HttpProxy:  pulumi.String("http://myproxy.server.com:8080"),
/// 				HttpsProxy: pulumi.String("https://myproxy.server.com:8080"),
/// 				NoProxy: pulumi.StringArray{
/// 					pulumi.String("localhost"),
/// 					pulumi.String("127.0.0.1"),
/// 				},
/// 				TrustedCa: pulumi.String("Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U="),
/// 			},
/// 			KubernetesVersion: pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                 = 3
///     enable_node_public_ip = true
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_sku                = "AzureLinux"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   http_proxy_config = {
///     http_proxy  = "http://myproxy.server.com:8080"
///     https_proxy = "https://myproxy.server.com:8080"
///     no_proxy    = ["localhost", "127.0.0.1"]
///     trusted_ca  = "Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U="
///   }
///   kubernetes_version = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterHTTPProxyConfigArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osSKU("AzureLinux")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .httpProxyConfig(ManagedClusterHTTPProxyConfigArgs.builder()
///                 .httpProxy("http://myproxy.server.com:8080")
///                 .httpsProxy("https://myproxy.server.com:8080")
///                 .noProxy(
///                     "localhost",
///                     "127.0.0.1")
///                 .trustedCa("Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=")
///                 .build())
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osSKU: azure_native.containerservice.OSSKU.AzureLinux,
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     httpProxyConfig: {
///         httpProxy: "http://myproxy.server.com:8080",
///         httpsProxy: "https://myproxy.server.com:8080",
///         noProxy: [
///             "localhost",
///             "127.0.0.1",
///         ],
///         trustedCa: "Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=",
///     },
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_sku": azure_native.containerservice.OSSKU.AZURE_LINUX,
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     http_proxy_config={
///         "http_proxy": "http://myproxy.server.com:8080",
///         "https_proxy": "https://myproxy.server.com:8080",
///         "no_proxy": [
///             "localhost",
///             "127.0.0.1",
///         ],
///         "trusted_ca": "Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=",
///     },
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osSKU: AzureLinux
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       httpProxyConfig:
///         httpProxy: http://myproxy.server.com:8080
///         httpsProxy: https://myproxy.server.com:8080
///         noProxy:
///           - localhost
///           - 127.0.0.1
///         trustedCa: Q29uZ3JhdHMhIFlvdSBoYXZlIGZvdW5kIGEgaGlkZGVuIG1lc3NhZ2U=
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with PPG
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 ProximityPlacementGroupID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/proximityPlacementGroups/ppg1",
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:                     pulumi.Int(3),
/// 					EnableNodePublicIP:        pulumi.Bool(true),
/// 					Mode:                      pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:                      pulumi.String("nodepool1"),
/// 					OsType:                    pulumi.String(containerservice.OSTypeLinux),
/// 					ProximityPlacementGroupID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/proximityPlacementGroups/ppg1"),
/// 					Type:                      pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:                    pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                        = 3
///     enable_node_public_ip        = true
///     mode                         = "System"
///     name                         = "nodepool1"
///     os_type                      = "Linux"
///     proximity_placement_group_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/proximityPlacementGroups/ppg1"
///     type                         = "VirtualMachineScaleSets"
///     vm_size                      = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .proximityPlacementGroupID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/proximityPlacementGroups/ppg1")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         proximityPlacementGroupID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/proximityPlacementGroups/ppg1",
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "proximity_placement_group_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/proximityPlacementGroups/ppg1",
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           proximityPlacementGroupID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/proximityPlacementGroups/ppg1
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with PodIdentity enabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         PodIdentityProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPodIdentityProfileArgs
///         {
///             AllowNetworkPluginKubenet = true,
///             Enabled = true,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			PodIdentityProfile: &containerservice.ManagedClusterPodIdentityProfileArgs{
/// 				AllowNetworkPluginKubenet: pulumi.Bool(true),
/// 				Enabled:                   pulumi.Bool(true),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                 = 3
///     enable_node_public_ip = true
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   pod_identity_profile = {
///     allow_network_plugin_kubenet = true
///     enabled                      = true
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPodIdentityProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .podIdentityProfile(ManagedClusterPodIdentityProfileArgs.builder()
///                 .allowNetworkPluginKubenet(true)
///                 .enabled(true)
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     podIdentityProfile: {
///         allowNetworkPluginKubenet: true,
///         enabled: true,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     pod_identity_profile={
///         "allow_network_plugin_kubenet": True,
///         "enabled": True,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       podIdentityProfile:
///         allowNetworkPluginKubenet: true
///         enabled: true
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with RunCommand disabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableEncryptionAtHost = true,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         ApiServerAccessProfile = new AzureNative.ContainerService.Inputs.ManagedClusterAPIServerAccessProfileArgs
///         {
///             DisableRunCommand = true,
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:                  pulumi.Int(3),
/// 					EnableEncryptionAtHost: pulumi.Bool(true),
/// 					EnableNodePublicIP:     pulumi.Bool(true),
/// 					Mode:                   pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:                   pulumi.String("nodepool1"),
/// 					OsType:                 pulumi.String(containerservice.OSTypeLinux),
/// 					Type:                   pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:                 pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			ApiServerAccessProfile: &containerservice.ManagedClusterAPIServerAccessProfileArgs{
/// 				DisableRunCommand: pulumi.Bool(true),
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DnsPrefix:         pulumi.String("dnsprefix1"),
/// 			EnableRBAC:        pulumi.Bool(true),
/// 			KubernetesVersion: pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                     = 3
///     enable_encryption_at_host = true
///     enable_node_public_ip     = true
///     mode                      = "System"
///     name                      = "nodepool1"
///     os_type                   = "Linux"
///     type                      = "VirtualMachineScaleSets"
///     vm_size                   = "Standard_DS2_v2"
///   }
///   api_server_access_profile = {
///     disable_run_command = true
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   dns_prefix         = "dnsprefix1"
///   enable_rbac        = true
///   kubernetes_version = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAPIServerAccessProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableEncryptionAtHost(true)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .apiServerAccessProfile(ManagedClusterAPIServerAccessProfileArgs.builder()
///                 .disableRunCommand(true)
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableEncryptionAtHost: true,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     apiServerAccessProfile: {
///         disableRunCommand: true,
///     },
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_encryption_at_host": True,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     api_server_access_profile={
///         "disable_run_command": True,
///     },
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableEncryptionAtHost: true
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       apiServerAccessProfile:
///         disableRunCommand: true
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with Security Profile configured
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         DnsPrefix = "dnsprefix1",
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         SecurityProfile = new AzureNative.ContainerService.Inputs.ManagedClusterSecurityProfileArgs
///         {
///             Defender = new AzureNative.ContainerService.Inputs.ManagedClusterSecurityProfileDefenderArgs
///             {
///                 LogAnalyticsWorkspaceResourceId = "/subscriptions/SUB_ID/resourcegroups/RG_NAME/providers/microsoft.operationalinsights/workspaces/WORKSPACE_NAME",
///                 SecurityMonitoring = new AzureNative.ContainerService.Inputs.ManagedClusterSecurityProfileDefenderSecurityMonitoringArgs
///                 {
///                     Enabled = true,
///                 },
///             },
///             WorkloadIdentity = new AzureNative.ContainerService.Inputs.ManagedClusterSecurityProfileWorkloadIdentityArgs
///             {
///                 Enabled = true,
///             },
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			DnsPrefix:         pulumi.String("dnsprefix1"),
/// 			KubernetesVersion: pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			SecurityProfile: &containerservice.ManagedClusterSecurityProfileArgs{
/// 				Defender: &containerservice.ManagedClusterSecurityProfileDefenderArgs{
/// 					LogAnalyticsWorkspaceResourceId: pulumi.String("/subscriptions/SUB_ID/resourcegroups/RG_NAME/providers/microsoft.operationalinsights/workspaces/WORKSPACE_NAME"),
/// 					SecurityMonitoring: &containerservice.ManagedClusterSecurityProfileDefenderSecurityMonitoringArgs{
/// 						Enabled: pulumi.Bool(true),
/// 					},
/// 				},
/// 				WorkloadIdentity: &containerservice.ManagedClusterSecurityProfileWorkloadIdentityArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   agent_pool_profiles {
///     count                 = 3
///     enable_node_public_ip = true
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   dns_prefix         = "dnsprefix1"
///   kubernetes_version = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   security_profile = {
///     defender = {
///       log_analytics_workspace_resource_id = "/subscriptions/SUB_ID/resourcegroups/RG_NAME/providers/microsoft.operationalinsights/workspaces/WORKSPACE_NAME"
///       security_monitoring = {
///         enabled = true
///       }
///     }
///     workload_identity = {
///       enabled = true
///     }
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSecurityProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSecurityProfileDefenderArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSecurityProfileDefenderSecurityMonitoringArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSecurityProfileWorkloadIdentityArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .dnsPrefix("dnsprefix1")
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .securityProfile(ManagedClusterSecurityProfileArgs.builder()
///                 .defender(ManagedClusterSecurityProfileDefenderArgs.builder()
///                     .logAnalyticsWorkspaceResourceId("/subscriptions/SUB_ID/resourcegroups/RG_NAME/providers/microsoft.operationalinsights/workspaces/WORKSPACE_NAME")
///                     .securityMonitoring(ManagedClusterSecurityProfileDefenderSecurityMonitoringArgs.builder()
///                         .enabled(true)
///                         .build())
///                     .build())
///                 .workloadIdentity(ManagedClusterSecurityProfileWorkloadIdentityArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     dnsPrefix: "dnsprefix1",
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     securityProfile: {
///         defender: {
///             logAnalyticsWorkspaceResourceId: "/subscriptions/SUB_ID/resourcegroups/RG_NAME/providers/microsoft.operationalinsights/workspaces/WORKSPACE_NAME",
///             securityMonitoring: {
///                 enabled: true,
///             },
///         },
///         workloadIdentity: {
///             enabled: true,
///         },
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     dns_prefix="dnsprefix1",
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     security_profile={
///         "defender": {
///             "log_analytics_workspace_resource_id": "/subscriptions/SUB_ID/resourcegroups/RG_NAME/providers/microsoft.operationalinsights/workspaces/WORKSPACE_NAME",
///             "security_monitoring": {
///                 "enabled": True,
///             },
///         },
///         "workload_identity": {
///             "enabled": True,
///         },
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       dnsPrefix: dnsprefix1
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       securityProfile:
///         defender:
///           logAnalyticsWorkspaceResourceId: /subscriptions/SUB_ID/resourcegroups/RG_NAME/providers/microsoft.operationalinsights/workspaces/WORKSPACE_NAME
///           securityMonitoring:
///             enabled: true
///         workloadIdentity:
///           enabled: true
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with UltraSSD enabled
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 EnableUltraSSD = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					EnableUltraSSD:     pulumi.Bool(true),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                 = 3
///     enable_node_public_ip = true
///     enable_ultra_ssd      = true
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .enableUltraSSD(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: true,
///         enableUltraSSD: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": True,
///         "enable_ultra_ssd": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: true
///           enableUltraSSD: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with Web App Routing Ingress Profile configured
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         DnsPrefix = "dnsprefix1",
///         IngressProfile = new AzureNative.ContainerService.Inputs.ManagedClusterIngressProfileArgs
///         {
///             WebAppRouting = new AzureNative.ContainerService.Inputs.ManagedClusterIngressProfileWebAppRoutingArgs
///             {
///                 DnsZoneResourceIds = new[]
///                 {
///                     "/subscriptions/SUB_ID/resourceGroups/RG_NAME/providers/Microsoft.Network/dnszones/DNS_ZONE_NAME",
///                 },
///                 Enabled = true,
///             },
///         },
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			DnsPrefix: pulumi.String("dnsprefix1"),
/// 			IngressProfile: &containerservice.ManagedClusterIngressProfileArgs{
/// 				WebAppRouting: &containerservice.ManagedClusterIngressProfileWebAppRoutingArgs{
/// 					DnsZoneResourceIds: pulumi.StringArray{
/// 						pulumi.String("/subscriptions/SUB_ID/resourceGroups/RG_NAME/providers/Microsoft.Network/dnszones/DNS_ZONE_NAME"),
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			KubernetesVersion: pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   agent_pool_profiles {
///     count                 = 3
///     enable_node_public_ip = true
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   dns_prefix = "dnsprefix1"
///   ingress_profile = {
///     web_app_routing = {
///       dns_zone_resource_ids = ["/subscriptions/SUB_ID/resourceGroups/RG_NAME/providers/Microsoft.Network/dnszones/DNS_ZONE_NAME"]
///       enabled               = true
///     }
///   }
///   kubernetes_version = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterIngressProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterIngressProfileWebAppRoutingArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .dnsPrefix("dnsprefix1")
///             .ingressProfile(ManagedClusterIngressProfileArgs.builder()
///                 .webAppRouting(ManagedClusterIngressProfileWebAppRoutingArgs.builder()
///                     .dnsZoneResourceIds("/subscriptions/SUB_ID/resourceGroups/RG_NAME/providers/Microsoft.Network/dnszones/DNS_ZONE_NAME")
///                     .enabled(true)
///                     .build())
///                 .build())
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     dnsPrefix: "dnsprefix1",
///     ingressProfile: {
///         webAppRouting: {
///             dnsZoneResourceIds: ["/subscriptions/SUB_ID/resourceGroups/RG_NAME/providers/Microsoft.Network/dnszones/DNS_ZONE_NAME"],
///             enabled: true,
///         },
///     },
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     dns_prefix="dnsprefix1",
///     ingress_profile={
///         "web_app_routing": {
///             "dns_zone_resource_ids": ["/subscriptions/SUB_ID/resourceGroups/RG_NAME/providers/Microsoft.Network/dnszones/DNS_ZONE_NAME"],
///             "enabled": True,
///         },
///     },
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       dnsPrefix: dnsprefix1
///       ingressProfile:
///         webAppRouting:
///           dnsZoneResourceIds:
///             - /subscriptions/SUB_ID/resourceGroups/RG_NAME/providers/Microsoft.Network/dnszones/DNS_ZONE_NAME
///           enabled: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Cluster with user-assigned NAT gateway as outbound type
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = false,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.UserAssignedNATGateway,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(false),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeUserAssignedNATGateway),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                 = 3
///     enable_node_public_ip = false
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_sku = "standard"
///     outbound_type     = "userAssignedNATGateway"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(false)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerSku("standard")
///                 .outboundType("userAssignedNATGateway")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: false,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.UserAssignedNATGateway,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": False,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.USER_ASSIGNED_NAT_GATEWAY,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: false
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerSku: standard
///         outboundType: userAssignedNATGateway
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Private Cluster with Public FQDN specified
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableEncryptionAtHost = true,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         ApiServerAccessProfile = new AzureNative.ContainerService.Inputs.ManagedClusterAPIServerAccessProfileArgs
///         {
///             EnablePrivateCluster = true,
///             EnablePrivateClusterPublicFQDN = true,
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:                  pulumi.Int(3),
/// 					EnableEncryptionAtHost: pulumi.Bool(true),
/// 					EnableNodePublicIP:     pulumi.Bool(true),
/// 					Mode:                   pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:                   pulumi.String("nodepool1"),
/// 					OsType:                 pulumi.String(containerservice.OSTypeLinux),
/// 					Type:                   pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:                 pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			ApiServerAccessProfile: &containerservice.ManagedClusterAPIServerAccessProfileArgs{
/// 				EnablePrivateCluster:           pulumi.Bool(true),
/// 				EnablePrivateClusterPublicFQDN: pulumi.Bool(true),
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DnsPrefix:         pulumi.String("dnsprefix1"),
/// 			EnableRBAC:        pulumi.Bool(true),
/// 			KubernetesVersion: pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                     = 3
///     enable_encryption_at_host = true
///     enable_node_public_ip     = true
///     mode                      = "System"
///     name                      = "nodepool1"
///     os_type                   = "Linux"
///     type                      = "VirtualMachineScaleSets"
///     vm_size                   = "Standard_DS2_v2"
///   }
///   api_server_access_profile = {
///     enable_private_cluster             = true
///     enable_private_cluster_public_fqdn = true
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   dns_prefix         = "dnsprefix1"
///   enable_rbac        = true
///   kubernetes_version = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAPIServerAccessProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableEncryptionAtHost(true)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .apiServerAccessProfile(ManagedClusterAPIServerAccessProfileArgs.builder()
///                 .enablePrivateCluster(true)
///                 .enablePrivateClusterPublicFQDN(true)
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableEncryptionAtHost: true,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     apiServerAccessProfile: {
///         enablePrivateCluster: true,
///         enablePrivateClusterPublicFQDN: true,
///     },
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_encryption_at_host": True,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     api_server_access_profile={
///         "enable_private_cluster": True,
///         "enable_private_cluster_public_fqdn": True,
///     },
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableEncryptionAtHost: true
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       apiServerAccessProfile:
///         enablePrivateCluster: true
///         enablePrivateClusterPublicFQDN: true
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Managed Private Cluster with fqdn subdomain specified
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableEncryptionAtHost = true,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         ApiServerAccessProfile = new AzureNative.ContainerService.Inputs.ManagedClusterAPIServerAccessProfileArgs
///         {
///             EnablePrivateCluster = true,
///             PrivateDNSZone = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/privateDnsZones/privatelink.location1.azmk8s.io",
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         EnableRBAC = true,
///         FqdnSubdomain = "domain1",
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:                  pulumi.Int(3),
/// 					EnableEncryptionAtHost: pulumi.Bool(true),
/// 					EnableNodePublicIP:     pulumi.Bool(true),
/// 					Mode:                   pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:                   pulumi.String("nodepool1"),
/// 					OsType:                 pulumi.String(containerservice.OSTypeLinux),
/// 					Type:                   pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:                 pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			ApiServerAccessProfile: &containerservice.ManagedClusterAPIServerAccessProfileArgs{
/// 				EnablePrivateCluster: pulumi.Bool(true),
/// 				PrivateDNSZone:       pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/privateDnsZones/privatelink.location1.azmk8s.io"),
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			EnableRBAC:        pulumi.Bool(true),
/// 			FqdnSubdomain:     pulumi.String("domain1"),
/// 			KubernetesVersion: pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {}
///   agent_pool_profiles {
///     count                     = 3
///     enable_encryption_at_host = true
///     enable_node_public_ip     = true
///     mode                      = "System"
///     name                      = "nodepool1"
///     os_type                   = "Linux"
///     type                      = "VirtualMachineScaleSets"
///     vm_size                   = "Standard_DS2_v2"
///   }
///   api_server_access_profile = {
///     enable_private_cluster = true
///     private_dns_zone       = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/privateDnsZones/privatelink.location1.azmk8s.io"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   enable_rbac        = true
///   fqdn_subdomain     = "domain1"
///   kubernetes_version = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAPIServerAccessProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableEncryptionAtHost(true)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .apiServerAccessProfile(ManagedClusterAPIServerAccessProfileArgs.builder()
///                 .enablePrivateCluster(true)
///                 .privateDNSZone("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/privateDnsZones/privatelink.location1.azmk8s.io")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .enableRBAC(true)
///             .fqdnSubdomain("domain1")
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         count: 3,
///         enableEncryptionAtHost: true,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     apiServerAccessProfile: {
///         enablePrivateCluster: true,
///         privateDNSZone: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/privateDnsZones/privatelink.location1.azmk8s.io",
///     },
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     enableRBAC: true,
///     fqdnSubdomain: "domain1",
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_encryption_at_host": True,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     api_server_access_profile={
///         "enable_private_cluster": True,
///         "private_dns_zone": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/privateDnsZones/privatelink.location1.azmk8s.io",
///     },
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     enable_rbac=True,
///     fqdn_subdomain="domain1",
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles: {}
///       agentPoolProfiles:
///         - count: 3
///           enableEncryptionAtHost: true
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       apiServerAccessProfile:
///         enablePrivateCluster: true
///         privateDNSZone: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Network/privateDnsZones/privatelink.location1.azmk8s.io
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       enableRBAC: true
///       fqdnSubdomain: domain1
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create/Update AAD Managed Cluster with EnableAzureRBAC
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AadProfile = new AzureNative.ContainerService.Inputs.ManagedClusterAADProfileArgs
///         {
///             EnableAzureRBAC = true,
///             Managed = true,
///         },
///         AddonProfiles = null,
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 AvailabilityZones = new[]
///                 {
///                     "1",
///                     "2",
///                     "3",
///                 },
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS1_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AadProfile: &containerservice.ManagedClusterAADProfileArgs{
/// 				EnableAzureRBAC: pulumi.Bool(true),
/// 				Managed:         pulumi.Bool(true),
/// 			},
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					AvailabilityZones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 						pulumi.String("2"),
/// 						pulumi.String("3"),
/// 					},
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS1_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   aad_profile = {
///     enable_azure_rbac = true
///     managed           = true
///   }
///   addon_profiles = {}
///   agent_pool_profiles {
///     availability_zones    = ["1", "2", "3"]
///     count                 = 3
///     enable_node_public_ip = true
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS1_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAADProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .aadProfile(ManagedClusterAADProfileArgs.builder()
///                 .enableAzureRBAC(true)
///                 .managed(true)
///                 .build())
///             .addonProfiles(Map.ofEntries(
///             ))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .availabilityZones(
///                     "1",
///                     "2",
///                     "3")
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS1_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     aadProfile: {
///         enableAzureRBAC: true,
///         managed: true,
///     },
///     addonProfiles: {},
///     agentPoolProfiles: [{
///         availabilityZones: [
///             "1",
///             "2",
///             "3",
///         ],
///         count: 3,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS1_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     aad_profile={
///         "enable_azure_rbac": True,
///         "managed": True,
///     },
///     addon_profiles={},
///     agent_pool_profiles=[{
///         "availability_zones": [
///             "1",
///             "2",
///             "3",
///         ],
///         "count": 3,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS1_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       aadProfile:
///         enableAzureRBAC: true
///         managed: true
///       addonProfiles: {}
///       agentPoolProfiles:
///         - availabilityZones:
///             - '1'
///             - '2'
///             - '3'
///           count: 3
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS1_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create/Update Managed Cluster with Azure Service Mesh
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedCluster = new AzureNative.ContainerService.ManagedCluster("managedCluster", new()
///     {
///         AddonProfiles =
///         {
///             { "azureKeyvaultSecretsProvider", new AzureNative.ContainerService.Inputs.ManagedClusterAddonProfileArgs
///             {
///                 Config =
///                 {
///                     { "enableSecretRotation", "true" },
///                     { "rotationPollInterval", "2m" },
///                 },
///                 Enabled = true,
///             } },
///         },
///         AgentPoolProfiles = new[]
///         {
///             new AzureNative.ContainerService.Inputs.ManagedClusterAgentPoolProfileArgs
///             {
///                 Count = 3,
///                 EnableNodePublicIP = true,
///                 Mode = AzureNative.ContainerService.AgentPoolMode.System,
///                 Name = "nodepool1",
///                 OsType = AzureNative.ContainerService.OSType.Linux,
///                 Type = AzureNative.ContainerService.AgentPoolType.VirtualMachineScaleSets,
///                 VmSize = "Standard_DS2_v2",
///             },
///         },
///         AutoScalerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterPropertiesAutoScalerProfileArgs
///         {
///             ScaleDownDelayAfterAdd = "15m",
///             ScanInterval = "20s",
///         },
///         DiskEncryptionSetID = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///         DnsPrefix = "dnsprefix1",
///         EnableRBAC = true,
///         KubernetesVersion = "",
///         LinuxProfile = new AzureNative.ContainerService.Inputs.ContainerServiceLinuxProfileArgs
///         {
///             AdminUsername = "azureuser",
///             Ssh = new AzureNative.ContainerService.Inputs.ContainerServiceSshConfigurationArgs
///             {
///                 PublicKeys = new[]
///                 {
///                     new AzureNative.ContainerService.Inputs.ContainerServiceSshPublicKeyArgs
///                     {
///                         KeyData = "keydata",
///                     },
///                 },
///             },
///         },
///         Location = "location1",
///         NetworkProfile = new AzureNative.ContainerService.Inputs.ContainerServiceNetworkProfileArgs
///         {
///             LoadBalancerProfile = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileArgs
///             {
///                 ManagedOutboundIPs = new AzureNative.ContainerService.Inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs
///                 {
///                     Count = 2,
///                 },
///             },
///             LoadBalancerSku = AzureNative.ContainerService.LoadBalancerSku.Standard,
///             OutboundType = AzureNative.ContainerService.OutboundType.LoadBalancer,
///         },
///         ResourceGroupName = "rg1",
///         ResourceName = "clustername1",
///         ServiceMeshProfile = new AzureNative.ContainerService.Inputs.ServiceMeshProfileArgs
///         {
///             Istio = new AzureNative.ContainerService.Inputs.IstioServiceMeshArgs
///             {
///                 CertificateAuthority = new AzureNative.ContainerService.Inputs.IstioCertificateAuthorityArgs
///                 {
///                     Plugin = new AzureNative.ContainerService.Inputs.IstioPluginCertificateAuthorityArgs
///                     {
///                         CertChainObjectName = "cert-chain",
///                         CertObjectName = "ca-cert",
///                         KeyObjectName = "ca-key",
///                         KeyVaultId = "/subscriptions/854c9ddb-fe9e-4aea-8d58-99ed88282881/resourceGroups/ddama-test/providers/Microsoft.KeyVault/vaults/my-akv",
///                         RootCertObjectName = "root-cert",
///                     },
///                 },
///                 Components = new AzureNative.ContainerService.Inputs.IstioComponentsArgs
///                 {
///                     EgressGateways = new[]
///                     {
///                         new AzureNative.ContainerService.Inputs.IstioEgressGatewayArgs
///                         {
///                             Enabled = true,
///                             GatewayConfigurationName = "test-gateway-configuration",
///                             Name = "test-istio-egress",
///                         },
///                     },
///                     IngressGateways = new[]
///                     {
///                         new AzureNative.ContainerService.Inputs.IstioIngressGatewayArgs
///                         {
///                             Enabled = true,
///                             Mode = AzureNative.ContainerService.IstioIngressGatewayMode.Internal,
///                         },
///                     },
///                 },
///             },
///             Mode = AzureNative.ContainerService.ServiceMeshMode.Istio,
///         },
///         ServicePrincipalProfile = new AzureNative.ContainerService.Inputs.ManagedClusterServicePrincipalProfileArgs
///         {
///             ClientId = "clientid",
///             Secret = "secret",
///         },
///         Sku = new AzureNative.ContainerService.Inputs.ManagedClusterSKUArgs
///         {
///             Name = "Basic",
///             Tier = AzureNative.ContainerService.ManagedClusterSKUTier.Free,
///         },
///         Tags =
///         {
///             { "archv2", "" },
///             { "tier", "production" },
///         },
///         WindowsProfile = new AzureNative.ContainerService.Inputs.ManagedClusterWindowsProfileArgs
///         {
///             AdminPassword = "replacePassword1234$",
///             AdminUsername = "azureuser",
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewManagedCluster(ctx, "managedCluster", &containerservice.ManagedClusterArgs{
/// 			AddonProfiles: containerservice.ManagedClusterAddonProfileMap{
/// 				"azureKeyvaultSecretsProvider": &containerservice.ManagedClusterAddonProfileArgs{
/// 					Config: pulumi.StringMap{
/// 						"enableSecretRotation": pulumi.String("true"),
/// 						"rotationPollInterval": pulumi.String("2m"),
/// 					},
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			AgentPoolProfiles: containerservice.ManagedClusterAgentPoolProfileArray{
/// 				&containerservice.ManagedClusterAgentPoolProfileArgs{
/// 					Count:              pulumi.Int(3),
/// 					EnableNodePublicIP: pulumi.Bool(true),
/// 					Mode:               pulumi.String(containerservice.AgentPoolModeSystem),
/// 					Name:               pulumi.String("nodepool1"),
/// 					OsType:             pulumi.String(containerservice.OSTypeLinux),
/// 					Type:               pulumi.String(containerservice.AgentPoolTypeVirtualMachineScaleSets),
/// 					VmSize:             pulumi.String("Standard_DS2_v2"),
/// 				},
/// 			},
/// 			AutoScalerProfile: &containerservice.ManagedClusterPropertiesAutoScalerProfileArgs{
/// 				ScaleDownDelayAfterAdd: pulumi.String("15m"),
/// 				ScanInterval:           pulumi.String("20s"),
/// 			},
/// 			DiskEncryptionSetID: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"),
/// 			DnsPrefix:           pulumi.String("dnsprefix1"),
/// 			EnableRBAC:          pulumi.Bool(true),
/// 			KubernetesVersion:   pulumi.String(""),
/// 			LinuxProfile: &containerservice.ContainerServiceLinuxProfileArgs{
/// 				AdminUsername: pulumi.String("azureuser"),
/// 				Ssh: &containerservice.ContainerServiceSshConfigurationArgs{
/// 					PublicKeys: containerservice.ContainerServiceSshPublicKeyArray{
/// 						&containerservice.ContainerServiceSshPublicKeyArgs{
/// 							KeyData: pulumi.String("keydata"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("location1"),
/// 			NetworkProfile: &containerservice.ContainerServiceNetworkProfileArgs{
/// 				LoadBalancerProfile: &containerservice.ManagedClusterLoadBalancerProfileArgs{
/// 					ManagedOutboundIPs: &containerservice.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs{
/// 						Count: pulumi.Int(2),
/// 					},
/// 				},
/// 				LoadBalancerSku: pulumi.String(containerservice.LoadBalancerSkuStandard),
/// 				OutboundType:    pulumi.String(containerservice.OutboundTypeLoadBalancer),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ResourceName:      pulumi.String("clustername1"),
/// 			ServiceMeshProfile: &containerservice.ServiceMeshProfileArgs{
/// 				Istio: &containerservice.IstioServiceMeshArgs{
/// 					CertificateAuthority: &containerservice.IstioCertificateAuthorityArgs{
/// 						Plugin: &containerservice.IstioPluginCertificateAuthorityArgs{
/// 							CertChainObjectName: pulumi.String("cert-chain"),
/// 							CertObjectName:      pulumi.String("ca-cert"),
/// 							KeyObjectName:       pulumi.String("ca-key"),
/// 							KeyVaultId:          pulumi.String("/subscriptions/854c9ddb-fe9e-4aea-8d58-99ed88282881/resourceGroups/ddama-test/providers/Microsoft.KeyVault/vaults/my-akv"),
/// 							RootCertObjectName:  pulumi.String("root-cert"),
/// 						},
/// 					},
/// 					Components: &containerservice.IstioComponentsArgs{
/// 						EgressGateways: containerservice.IstioEgressGatewayArray{
/// 							&containerservice.IstioEgressGatewayArgs{
/// 								Enabled:                  pulumi.Bool(true),
/// 								GatewayConfigurationName: pulumi.String("test-gateway-configuration"),
/// 								Name:                     pulumi.String("test-istio-egress"),
/// 							},
/// 						},
/// 						IngressGateways: containerservice.IstioIngressGatewayArray{
/// 							&containerservice.IstioIngressGatewayArgs{
/// 								Enabled: pulumi.Bool(true),
/// 								Mode:    pulumi.String(containerservice.IstioIngressGatewayModeInternal),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Mode: pulumi.String(containerservice.ServiceMeshModeIstio),
/// 			},
/// 			ServicePrincipalProfile: &containerservice.ManagedClusterServicePrincipalProfileArgs{
/// 				ClientId: pulumi.String("clientid"),
/// 				Secret:   pulumi.String("secret"),
/// 			},
/// 			Sku: &containerservice.ManagedClusterSKUArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String(containerservice.ManagedClusterSKUTierFree),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"archv2": pulumi.String(""),
/// 				"tier":   pulumi.String("production"),
/// 			},
/// 			WindowsProfile: &containerservice.ManagedClusterWindowsProfileArgs{
/// 				AdminPassword: pulumi.String("replacePassword1234$"),
/// 				AdminUsername: pulumi.String("azureuser"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerservice_managedcluster" "managedCluster" {
///   addon_profiles = {
///     "azureKeyvaultSecretsProvider" = {
///       config = {
///         "enableSecretRotation" = "true"
///         "rotationPollInterval" = "2m"
///       }
///       enabled = true
///     }
///   }
///   agent_pool_profiles {
///     count                 = 3
///     enable_node_public_ip = true
///     mode                  = "System"
///     name                  = "nodepool1"
///     os_type               = "Linux"
///     type                  = "VirtualMachineScaleSets"
///     vm_size               = "Standard_DS2_v2"
///   }
///   auto_scaler_profile = {
///     scale_down_delay_after_add = "15m"
///     scan_interval              = "20s"
///   }
///   disk_encryption_set_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des"
///   dns_prefix             = "dnsprefix1"
///   enable_rbac            = true
///   kubernetes_version     = ""
///   linux_profile = {
///     admin_username = "azureuser"
///     ssh = {
///       public_keys = [{
///         "keyData" = "keydata"
///       }]
///     }
///   }
///   location = "location1"
///   network_profile = {
///     load_balancer_profile = {
///       managed_outbound_i_ps = {
///         count = 2
///       }
///     }
///     load_balancer_sku = "standard"
///     outbound_type     = "loadBalancer"
///   }
///   resource_group_name = "rg1"
///   resource_name       = "clustername1"
///   service_mesh_profile = {
///     istio = {
///       certificate_authority = {
///         plugin = {
///           cert_chain_object_name = "cert-chain"
///           cert_object_name       = "ca-cert"
///           key_object_name        = "ca-key"
///           key_vault_id           = "/subscriptions/854c9ddb-fe9e-4aea-8d58-99ed88282881/resourceGroups/ddama-test/providers/Microsoft.KeyVault/vaults/my-akv"
///           root_cert_object_name  = "root-cert"
///         }
///       }
///       components = {
///         egress_gateways = [{
///           "enabled"                  = true
///           "gatewayConfigurationName" = "test-gateway-configuration"
///           "name"                     = "test-istio-egress"
///         }]
///         ingress_gateways = [{
///           "enabled" = true
///           "mode"    = "Internal"
///         }]
///       }
///     }
///     mode = "Istio"
///   }
///   service_principal_profile = {
///     client_id = "clientid"
///     secret    = "secret"
///   }
///   sku = {
///     name = "Basic"
///     tier = "Free"
///   }
///   tags = {
///     "archv2" = ""
///     "tier"   = "production"
///   }
///   windows_profile = {
///     admin_password = "replacePassword1234$"
///     admin_username = "azureuser"
///   }
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
/// import com.pulumi.azurenative.containerservice.ManagedCluster;
/// import com.pulumi.azurenative.containerservice.ManagedClusterArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterAgentPoolProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterPropertiesAutoScalerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceLinuxProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceSshConfigurationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ContainerServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ServiceMeshProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.IstioServiceMeshArgs;
/// import com.pulumi.azurenative.containerservice.inputs.IstioCertificateAuthorityArgs;
/// import com.pulumi.azurenative.containerservice.inputs.IstioPluginCertificateAuthorityArgs;
/// import com.pulumi.azurenative.containerservice.inputs.IstioComponentsArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterServicePrincipalProfileArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterSKUArgs;
/// import com.pulumi.azurenative.containerservice.inputs.ManagedClusterWindowsProfileArgs;
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
///         var managedCluster = new ManagedCluster("managedCluster", ManagedClusterArgs.builder()
///             .addonProfiles(Map.of("azureKeyvaultSecretsProvider", ManagedClusterAddonProfileArgs.builder()
///                 .config(Map.ofEntries(
///                     Map.entry("enableSecretRotation", "true"),
///                     Map.entry("rotationPollInterval", "2m")
///                 ))
///                 .enabled(true)
///                 .build()))
///             .agentPoolProfiles(ManagedClusterAgentPoolProfileArgs.builder()
///                 .count(3)
///                 .enableNodePublicIP(true)
///                 .mode("System")
///                 .name("nodepool1")
///                 .osType("Linux")
///                 .type("VirtualMachineScaleSets")
///                 .vmSize("Standard_DS2_v2")
///                 .build())
///             .autoScalerProfile(ManagedClusterPropertiesAutoScalerProfileArgs.builder()
///                 .scaleDownDelayAfterAdd("15m")
///                 .scanInterval("20s")
///                 .build())
///             .diskEncryptionSetID("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des")
///             .dnsPrefix("dnsprefix1")
///             .enableRBAC(true)
///             .kubernetesVersion("")
///             .linuxProfile(ContainerServiceLinuxProfileArgs.builder()
///                 .adminUsername("azureuser")
///                 .ssh(ContainerServiceSshConfigurationArgs.builder()
///                     .publicKeys(ContainerServiceSshPublicKeyArgs.builder()
///                         .keyData("keydata")
///                         .build())
///                     .build())
///                 .build())
///             .location("location1")
///             .networkProfile(ContainerServiceNetworkProfileArgs.builder()
///                 .loadBalancerProfile(ManagedClusterLoadBalancerProfileArgs.builder()
///                     .managedOutboundIPs(ManagedClusterLoadBalancerProfileManagedOutboundIPsArgs.builder()
///                         .count(2)
///                         .build())
///                     .build())
///                 .loadBalancerSku("standard")
///                 .outboundType("loadBalancer")
///                 .build())
///             .resourceGroupName("rg1")
///             .resourceName("clustername1")
///             .serviceMeshProfile(ServiceMeshProfileArgs.builder()
///                 .istio(IstioServiceMeshArgs.builder()
///                     .certificateAuthority(IstioCertificateAuthorityArgs.builder()
///                         .plugin(IstioPluginCertificateAuthorityArgs.builder()
///                             .certChainObjectName("cert-chain")
///                             .certObjectName("ca-cert")
///                             .keyObjectName("ca-key")
///                             .keyVaultId("/subscriptions/854c9ddb-fe9e-4aea-8d58-99ed88282881/resourceGroups/ddama-test/providers/Microsoft.KeyVault/vaults/my-akv")
///                             .rootCertObjectName("root-cert")
///                             .build())
///                         .build())
///                     .components(IstioComponentsArgs.builder()
///                         .egressGateways(IstioEgressGatewayArgs.builder()
///                             .enabled(true)
///                             .gatewayConfigurationName("test-gateway-configuration")
///                             .name("test-istio-egress")
///                             .build())
///                         .ingressGateways(IstioIngressGatewayArgs.builder()
///                             .enabled(true)
///                             .mode("Internal")
///                             .build())
///                         .build())
///                     .build())
///                 .mode("Istio")
///                 .build())
///             .servicePrincipalProfile(ManagedClusterServicePrincipalProfileArgs.builder()
///                 .clientId("clientid")
///                 .secret("secret")
///                 .build())
///             .sku(ManagedClusterSKUArgs.builder()
///                 .name("Basic")
///                 .tier("Free")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("archv2", ""),
///                 Map.entry("tier", "production")
///             ))
///             .windowsProfile(ManagedClusterWindowsProfileArgs.builder()
///                 .adminPassword("replacePassword1234$")
///                 .adminUsername("azureuser")
///                 .build())
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
/// const managedCluster = new azure_native.containerservice.ManagedCluster("managedCluster", {
///     addonProfiles: {
///         azureKeyvaultSecretsProvider: {
///             config: {
///                 enableSecretRotation: "true",
///                 rotationPollInterval: "2m",
///             },
///             enabled: true,
///         },
///     },
///     agentPoolProfiles: [{
///         count: 3,
///         enableNodePublicIP: true,
///         mode: azure_native.containerservice.AgentPoolMode.System,
///         name: "nodepool1",
///         osType: azure_native.containerservice.OSType.Linux,
///         type: azure_native.containerservice.AgentPoolType.VirtualMachineScaleSets,
///         vmSize: "Standard_DS2_v2",
///     }],
///     autoScalerProfile: {
///         scaleDownDelayAfterAdd: "15m",
///         scanInterval: "20s",
///     },
///     diskEncryptionSetID: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dnsPrefix: "dnsprefix1",
///     enableRBAC: true,
///     kubernetesVersion: "",
///     linuxProfile: {
///         adminUsername: "azureuser",
///         ssh: {
///             publicKeys: [{
///                 keyData: "keydata",
///             }],
///         },
///     },
///     location: "location1",
///     networkProfile: {
///         loadBalancerProfile: {
///             managedOutboundIPs: {
///                 count: 2,
///             },
///         },
///         loadBalancerSku: azure_native.containerservice.LoadBalancerSku.Standard,
///         outboundType: azure_native.containerservice.OutboundType.LoadBalancer,
///     },
///     resourceGroupName: "rg1",
///     resourceName: "clustername1",
///     serviceMeshProfile: {
///         istio: {
///             certificateAuthority: {
///                 plugin: {
///                     certChainObjectName: "cert-chain",
///                     certObjectName: "ca-cert",
///                     keyObjectName: "ca-key",
///                     keyVaultId: "/subscriptions/854c9ddb-fe9e-4aea-8d58-99ed88282881/resourceGroups/ddama-test/providers/Microsoft.KeyVault/vaults/my-akv",
///                     rootCertObjectName: "root-cert",
///                 },
///             },
///             components: {
///                 egressGateways: [{
///                     enabled: true,
///                     gatewayConfigurationName: "test-gateway-configuration",
///                     name: "test-istio-egress",
///                 }],
///                 ingressGateways: [{
///                     enabled: true,
///                     mode: azure_native.containerservice.IstioIngressGatewayMode.Internal,
///                 }],
///             },
///         },
///         mode: azure_native.containerservice.ServiceMeshMode.Istio,
///     },
///     servicePrincipalProfile: {
///         clientId: "clientid",
///         secret: "secret",
///     },
///     sku: {
///         name: "Basic",
///         tier: azure_native.containerservice.ManagedClusterSKUTier.Free,
///     },
///     tags: {
///         archv2: "",
///         tier: "production",
///     },
///     windowsProfile: {
///         adminPassword: "replacePassword1234$",
///         adminUsername: "azureuser",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_cluster = azure_native.containerservice.ManagedCluster("managedCluster",
///     addon_profiles={
///         "azureKeyvaultSecretsProvider": {
///             "config": {
///                 "enableSecretRotation": "true",
///                 "rotationPollInterval": "2m",
///             },
///             "enabled": True,
///         },
///     },
///     agent_pool_profiles=[{
///         "count": 3,
///         "enable_node_public_ip": True,
///         "mode": azure_native.containerservice.AgentPoolMode.SYSTEM,
///         "name": "nodepool1",
///         "os_type": azure_native.containerservice.OSType.LINUX,
///         "type": azure_native.containerservice.AgentPoolType.VIRTUAL_MACHINE_SCALE_SETS,
///         "vm_size": "Standard_DS2_v2",
///     }],
///     auto_scaler_profile={
///         "scale_down_delay_after_add": "15m",
///         "scan_interval": "20s",
///     },
///     disk_encryption_set_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des",
///     dns_prefix="dnsprefix1",
///     enable_rbac=True,
///     kubernetes_version="",
///     linux_profile={
///         "admin_username": "azureuser",
///         "ssh": {
///             "public_keys": [{
///                 "key_data": "keydata",
///             }],
///         },
///     },
///     location="location1",
///     network_profile={
///         "load_balancer_profile": {
///             "managed_outbound_ips": {
///                 "count": 2,
///             },
///         },
///         "load_balancer_sku": azure_native.containerservice.LoadBalancerSku.STANDARD,
///         "outbound_type": azure_native.containerservice.OutboundType.LOAD_BALANCER,
///     },
///     resource_group_name="rg1",
///     resource_name_="clustername1",
///     service_mesh_profile={
///         "istio": {
///             "certificate_authority": {
///                 "plugin": {
///                     "cert_chain_object_name": "cert-chain",
///                     "cert_object_name": "ca-cert",
///                     "key_object_name": "ca-key",
///                     "key_vault_id": "/subscriptions/854c9ddb-fe9e-4aea-8d58-99ed88282881/resourceGroups/ddama-test/providers/Microsoft.KeyVault/vaults/my-akv",
///                     "root_cert_object_name": "root-cert",
///                 },
///             },
///             "components": {
///                 "egress_gateways": [{
///                     "enabled": True,
///                     "gateway_configuration_name": "test-gateway-configuration",
///                     "name": "test-istio-egress",
///                 }],
///                 "ingress_gateways": [{
///                     "enabled": True,
///                     "mode": azure_native.containerservice.IstioIngressGatewayMode.INTERNAL,
///                 }],
///             },
///         },
///         "mode": azure_native.containerservice.ServiceMeshMode.ISTIO,
///     },
///     service_principal_profile={
///         "client_id": "clientid",
///         "secret": "secret",
///     },
///     sku={
///         "name": "Basic",
///         "tier": azure_native.containerservice.ManagedClusterSKUTier.FREE,
///     },
///     tags={
///         "archv2": "",
///         "tier": "production",
///     },
///     windows_profile={
///         "admin_password": "replacePassword1234$",
///         "admin_username": "azureuser",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedCluster:
///     type: azure-native:containerservice:ManagedCluster
///     properties:
///       addonProfiles:
///         azureKeyvaultSecretsProvider:
///           config:
///             enableSecretRotation: 'true'
///             rotationPollInterval: 2m
///           enabled: true
///       agentPoolProfiles:
///         - count: 3
///           enableNodePublicIP: true
///           mode: System
///           name: nodepool1
///           osType: Linux
///           type: VirtualMachineScaleSets
///           vmSize: Standard_DS2_v2
///       autoScalerProfile:
///         scaleDownDelayAfterAdd: 15m
///         scanInterval: 20s
///       diskEncryptionSetID: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg1/providers/Microsoft.Compute/diskEncryptionSets/des
///       dnsPrefix: dnsprefix1
///       enableRBAC: true
///       kubernetesVersion: ""
///       linuxProfile:
///         adminUsername: azureuser
///         ssh:
///           publicKeys:
///             - keyData: keydata
///       location: location1
///       networkProfile:
///         loadBalancerProfile:
///           managedOutboundIPs:
///             count: 2
///         loadBalancerSku: standard
///         outboundType: loadBalancer
///       resourceGroupName: rg1
///       resourceName: clustername1
///       serviceMeshProfile:
///         istio:
///           certificateAuthority:
///             plugin:
///               certChainObjectName: cert-chain
///               certObjectName: ca-cert
///               keyObjectName: ca-key
///               keyVaultId: /subscriptions/854c9ddb-fe9e-4aea-8d58-99ed88282881/resourceGroups/ddama-test/providers/Microsoft.KeyVault/vaults/my-akv
///               rootCertObjectName: root-cert
///           components:
///             egressGateways:
///               - enabled: true
///                 gatewayConfigurationName: test-gateway-configuration
///                 name: test-istio-egress
///             ingressGateways:
///               - enabled: true
///                 mode: Internal
///         mode: Istio
///       servicePrincipalProfile:
///         clientId: clientid
///         secret: secret
///       sku:
///         name: Basic
///         tier: Free
///       tags:
///         archv2: ""
///         tier: production
///       windowsProfile:
///         adminPassword: replacePassword1234$
///         adminUsername: azureuser
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
/// $ pulumi import azure-native:containerservice:ManagedCluster clustername1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}
/// ```
class ManagedCluster extends pulumi.CustomResource {
  /// The Azure Active Directory configuration.
  late final pulumi.Output<ManagedClusterAADProfileResponse?> aadProfile;
  /// The profile of managed cluster add-on.
  late final pulumi.Output<Map<String, ManagedClusterAddonProfileResponse>?> addonProfiles;
  /// The agent pool properties.
  late final pulumi.Output<List<ManagedClusterAgentPoolProfileResponse>?> agentPoolProfiles;
  /// AI toolchain operator settings that apply to the whole cluster.
  late final pulumi.Output<ManagedClusterAIToolchainOperatorProfileResponse?> aiToolchainOperatorProfile;
  /// The access profile for managed cluster API server.
  late final pulumi.Output<ManagedClusterAPIServerAccessProfileResponse?> apiServerAccessProfile;
  /// Parameters to be applied to the cluster-autoscaler when enabled
  late final pulumi.Output<ManagedClusterPropertiesResponseAutoScalerProfile?> autoScalerProfile;
  /// The auto upgrade configuration.
  late final pulumi.Output<ManagedClusterAutoUpgradeProfileResponse?> autoUpgradeProfile;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Azure Monitor addon profiles for monitoring the managed cluster.
  late final pulumi.Output<ManagedClusterAzureMonitorProfileResponse?> azureMonitorProfile;
  /// The special FQDN used by the Azure Portal to access the Managed Cluster. This FQDN is for use only by the Azure Portal and should not be used by other clients. The Azure Portal requires certain Cross-Origin Resource Sharing (CORS) headers to be sent in some responses, which Kubernetes APIServer doesn't handle by default. This special FQDN supports CORS, allowing the Azure Portal to function properly.
  late final pulumi.Output<String> azurePortalFQDN;
  /// Profile of the cluster bootstrap configuration.
  late final pulumi.Output<ManagedClusterBootstrapProfileResponse?> bootstrapProfile;
  /// The version of Kubernetes the Managed Cluster is running. If kubernetesVersion was a fully specified version &lt;major.minor.patch&gt;, this field will be exactly equal to it. If kubernetesVersion was &lt;major.minor&gt;, this field will contain the full &lt;major.minor.patch&gt; version being used.
  late final pulumi.Output<String> currentKubernetesVersion;
  /// If local accounts should be disabled on the Managed Cluster. If set to true, getting static credentials will be disabled for this cluster. This must only be used on Managed Clusters that are AAD enabled. For more details see [disable local accounts](https://docs.microsoft.com/azure/aks/managed-aad#disable-local-accounts-preview).
  late final pulumi.Output<bool?> disableLocalAccounts;
  /// The Resource ID of the disk encryption set to use for enabling encryption at rest. This is of the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/diskEncryptionSets/{encryptionSetName}'
  late final pulumi.Output<String?> diskEncryptionSetID;
  /// The DNS prefix of the Managed Cluster. This cannot be updated once the Managed Cluster has been created.
  late final pulumi.Output<String?> dnsPrefix;
  /// Unique read-only string used to implement optimistic concurrency. The eTag value will change when the resource is updated. Specify an if-match or if-none-match header with the eTag value for a subsequent request to enable optimistic concurrency per the normal eTag convention.
  late final pulumi.Output<String> eTag;
  /// Whether to enable Kubernetes Role-Based Access Control.
  late final pulumi.Output<bool?> enableRBAC;
  /// The extended location of the Virtual Machine.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The FQDN of the master pool.
  late final pulumi.Output<String> fqdn;
  /// The FQDN subdomain of the private cluster with custom private dns zone. This cannot be updated once the Managed Cluster has been created.
  late final pulumi.Output<String?> fqdnSubdomain;
  /// Configurations for provisioning the cluster with HTTP proxy servers.
  late final pulumi.Output<ManagedClusterHTTPProxyConfigResponse?> httpProxyConfig;
  /// The identity of the managed cluster, if configured.
  late final pulumi.Output<ManagedClusterIdentityResponse?> identity;
  /// The user identity associated with the managed cluster. This identity will be used by the kubelet. Only one user assigned identity is allowed. The only accepted key is "kubeletidentity", with value of "resourceId": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}".
  late final pulumi.Output<Map<String, UserAssignedIdentityManagedClusterResponse>?> identityProfile;
  /// Ingress profile for the managed cluster.
  late final pulumi.Output<ManagedClusterIngressProfileResponse?> ingressProfile;
  /// This is primarily used to expose different UI experiences in the portal for different kinds
  late final pulumi.Output<String?> kind;
  /// The version of Kubernetes specified by the user. Both patch version &lt;major.minor.patch&gt; (e.g. 1.20.13) and &lt;major.minor&gt; (e.g. 1.20) are supported. When &lt;major.minor&gt; is specified, the latest supported GA patch version is chosen automatically. Updating the cluster with the same &lt;major.minor&gt; once it has been created (e.g. 1.14.x -&gt; 1.14) will not trigger an upgrade, even if a newer patch version is available. When you upgrade a supported AKS cluster, Kubernetes minor versions cannot be skipped. All upgrades must be performed sequentially by major version number. For example, upgrades between 1.14.x -&gt; 1.15.x or 1.15.x -&gt; 1.16.x are allowed, however 1.14.x -&gt; 1.16.x is not allowed. See [upgrading an AKS cluster](https://docs.microsoft.com/azure/aks/upgrade-cluster) for more details.
  late final pulumi.Output<String?> kubernetesVersion;
  /// The profile for Linux VMs in the Managed Cluster.
  late final pulumi.Output<ContainerServiceLinuxProfileResponse?> linuxProfile;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The max number of agent pools for the managed cluster.
  late final pulumi.Output<int> maxAgentPools;
  /// Optional cluster metrics configuration.
  late final pulumi.Output<ManagedClusterMetricsProfileResponse?> metricsProfile;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The network configuration profile.
  late final pulumi.Output<ContainerServiceNetworkProfileResponse?> networkProfile;
  /// Node provisioning settings that apply to the whole cluster.
  late final pulumi.Output<ManagedClusterNodeProvisioningProfileResponse?> nodeProvisioningProfile;
  /// The name of the resource group containing agent pool nodes.
  late final pulumi.Output<String?> nodeResourceGroup;
  /// Profile of the node resource group configuration.
  late final pulumi.Output<ManagedClusterNodeResourceGroupProfileResponse?> nodeResourceGroupProfile;
  /// The OIDC issuer profile of the Managed Cluster.
  late final pulumi.Output<ManagedClusterOIDCIssuerProfileResponse?> oidcIssuerProfile;
  /// The pod identity profile of the Managed Cluster. See [use AAD pod identity](https://docs.microsoft.com/azure/aks/use-azure-ad-pod-identity) for more details on AAD pod identity integration.
  late final pulumi.Output<ManagedClusterPodIdentityProfileResponse?> podIdentityProfile;
  /// The Power State of the cluster.
  late final pulumi.Output<PowerStateResponse> powerState;
  /// The FQDN of private cluster.
  late final pulumi.Output<String> privateFQDN;
  /// Private link resources associated with the cluster.
  late final pulumi.Output<List<PrivateLinkResourceResponse>?> privateLinkResources;
  /// The current provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// PublicNetworkAccess of the managedCluster. Allow or deny public network access for AKS
  late final pulumi.Output<String?> publicNetworkAccess;
  /// The resourceUID uniquely identifies ManagedClusters that reuse ARM ResourceIds (i.e: create, delete, create sequence)
  late final pulumi.Output<String> resourceUID;
  /// Security profile for the managed cluster.
  late final pulumi.Output<ManagedClusterSecurityProfileResponse?> securityProfile;
  /// Service mesh profile for a managed cluster.
  late final pulumi.Output<ServiceMeshProfileResponse?> serviceMeshProfile;
  /// Information about a service principal identity for the cluster to use for manipulating Azure APIs.
  late final pulumi.Output<ManagedClusterServicePrincipalProfileResponse?> servicePrincipalProfile;
  /// The managed cluster SKU.
  late final pulumi.Output<ManagedClusterSKUResponse?> sku;
  /// Contains read-only information about the Managed Cluster.
  late final pulumi.Output<ManagedClusterStatusResponse?> status;
  /// Storage profile for the managed cluster.
  late final pulumi.Output<ManagedClusterStorageProfileResponse?> storageProfile;
  /// The support plan for the Managed Cluster. If unspecified, the default is 'KubernetesOfficial'.
  late final pulumi.Output<String?> supportPlan;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Settings for upgrading a cluster.
  late final pulumi.Output<ClusterUpgradeSettingsResponse?> upgradeSettings;
  /// The profile for Windows VMs in the Managed Cluster.
  late final pulumi.Output<ManagedClusterWindowsProfileResponse?> windowsProfile;
  /// Workload Auto-scaler profile for the managed cluster.
  late final pulumi.Output<ManagedClusterWorkloadAutoScalerProfileResponse?> workloadAutoScalerProfile;

  /// Creates a new [ManagedCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedCluster]. {@macro pulumi_containerservice_managed_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedCluster(
    String name, {
    ManagedClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerservice:ManagedCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aadProfile = registerOutput<ManagedClusterAADProfileResponse?>('aadProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterAADProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    addonProfiles = registerOutput<Map<String, ManagedClusterAddonProfileResponse>?>('addonProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ManagedClusterAddonProfileResponse>(guardedValue, (value) => ManagedClusterAddonProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    agentPoolProfiles = registerOutput<List<ManagedClusterAgentPoolProfileResponse>?>('agentPoolProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedClusterAgentPoolProfileResponse>(guardedValue, (value) => ManagedClusterAgentPoolProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    aiToolchainOperatorProfile = registerOutput<ManagedClusterAIToolchainOperatorProfileResponse?>('aiToolchainOperatorProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterAIToolchainOperatorProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiServerAccessProfile = registerOutput<ManagedClusterAPIServerAccessProfileResponse?>('apiServerAccessProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterAPIServerAccessProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoScalerProfile = registerOutput<ManagedClusterPropertiesResponseAutoScalerProfile?>('autoScalerProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterPropertiesResponseAutoScalerProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoUpgradeProfile = registerOutput<ManagedClusterAutoUpgradeProfileResponse?>('autoUpgradeProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterAutoUpgradeProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureMonitorProfile = registerOutput<ManagedClusterAzureMonitorProfileResponse?>('azureMonitorProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterAzureMonitorProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azurePortalFQDN = registerOutput<String>('azurePortalFQDN');
    bootstrapProfile = registerOutput<ManagedClusterBootstrapProfileResponse?>('bootstrapProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterBootstrapProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    currentKubernetesVersion = registerOutput<String>('currentKubernetesVersion');
    disableLocalAccounts = registerOutput<bool?>('disableLocalAccounts');
    diskEncryptionSetID = registerOutput<String?>('diskEncryptionSetID');
    dnsPrefix = registerOutput<String?>('dnsPrefix');
    eTag = registerOutput<String>('eTag');
    enableRBAC = registerOutput<bool?>('enableRBAC');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fqdn = registerOutput<String>('fqdn');
    fqdnSubdomain = registerOutput<String?>('fqdnSubdomain');
    httpProxyConfig = registerOutput<ManagedClusterHTTPProxyConfigResponse?>('httpProxyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterHTTPProxyConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<ManagedClusterIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identityProfile = registerOutput<Map<String, UserAssignedIdentityManagedClusterResponse>?>('identityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<UserAssignedIdentityManagedClusterResponse>(guardedValue, (value) => UserAssignedIdentityManagedClusterResponse.fromMap((value as Map).cast<String, dynamic>())); });
    ingressProfile = registerOutput<ManagedClusterIngressProfileResponse?>('ingressProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterIngressProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    kubernetesVersion = registerOutput<String?>('kubernetesVersion');
    linuxProfile = registerOutput<ContainerServiceLinuxProfileResponse?>('linuxProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerServiceLinuxProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    maxAgentPools = registerOutput<int>('maxAgentPools');
    metricsProfile = registerOutput<ManagedClusterMetricsProfileResponse?>('metricsProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterMetricsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<ContainerServiceNetworkProfileResponse?>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerServiceNetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeProvisioningProfile = registerOutput<ManagedClusterNodeProvisioningProfileResponse?>('nodeProvisioningProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterNodeProvisioningProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeResourceGroup = registerOutput<String?>('nodeResourceGroup');
    nodeResourceGroupProfile = registerOutput<ManagedClusterNodeResourceGroupProfileResponse?>('nodeResourceGroupProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterNodeResourceGroupProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    oidcIssuerProfile = registerOutput<ManagedClusterOIDCIssuerProfileResponse?>('oidcIssuerProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterOIDCIssuerProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    podIdentityProfile = registerOutput<ManagedClusterPodIdentityProfileResponse?>('podIdentityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterPodIdentityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    powerState = registerOutput<PowerStateResponse>('powerState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PowerStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateFQDN = registerOutput<String>('privateFQDN');
    privateLinkResources = registerOutput<List<PrivateLinkResourceResponse>?>('privateLinkResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateLinkResourceResponse>(guardedValue, (value) => PrivateLinkResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceUID = registerOutput<String>('resourceUID');
    securityProfile = registerOutput<ManagedClusterSecurityProfileResponse?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceMeshProfile = registerOutput<ServiceMeshProfileResponse?>('serviceMeshProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceMeshProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    servicePrincipalProfile = registerOutput<ManagedClusterServicePrincipalProfileResponse?>('servicePrincipalProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterServicePrincipalProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<ManagedClusterSKUResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterSKUResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ManagedClusterStatusResponse?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageProfile = registerOutput<ManagedClusterStorageProfileResponse?>('storageProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterStorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportPlan = registerOutput<String?>('supportPlan');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    upgradeSettings = registerOutput<ClusterUpgradeSettingsResponse?>('upgradeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterUpgradeSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    windowsProfile = registerOutput<ManagedClusterWindowsProfileResponse?>('windowsProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterWindowsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadAutoScalerProfile = registerOutput<ManagedClusterWorkloadAutoScalerProfileResponse?>('workloadAutoScalerProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterWorkloadAutoScalerProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ManagedCluster] resource.
  ManagedCluster.reference(String urn)
    : super(
        'azure-native:containerservice:ManagedCluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aadProfile = registerOutput<ManagedClusterAADProfileResponse?>('aadProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterAADProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    addonProfiles = registerOutput<Map<String, ManagedClusterAddonProfileResponse>?>('addonProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ManagedClusterAddonProfileResponse>(guardedValue, (value) => ManagedClusterAddonProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    agentPoolProfiles = registerOutput<List<ManagedClusterAgentPoolProfileResponse>?>('agentPoolProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagedClusterAgentPoolProfileResponse>(guardedValue, (value) => ManagedClusterAgentPoolProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    aiToolchainOperatorProfile = registerOutput<ManagedClusterAIToolchainOperatorProfileResponse?>('aiToolchainOperatorProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterAIToolchainOperatorProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiServerAccessProfile = registerOutput<ManagedClusterAPIServerAccessProfileResponse?>('apiServerAccessProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterAPIServerAccessProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoScalerProfile = registerOutput<ManagedClusterPropertiesResponseAutoScalerProfile?>('autoScalerProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterPropertiesResponseAutoScalerProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoUpgradeProfile = registerOutput<ManagedClusterAutoUpgradeProfileResponse?>('autoUpgradeProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterAutoUpgradeProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureMonitorProfile = registerOutput<ManagedClusterAzureMonitorProfileResponse?>('azureMonitorProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterAzureMonitorProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azurePortalFQDN = registerOutput<String>('azurePortalFQDN');
    bootstrapProfile = registerOutput<ManagedClusterBootstrapProfileResponse?>('bootstrapProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterBootstrapProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    currentKubernetesVersion = registerOutput<String>('currentKubernetesVersion');
    disableLocalAccounts = registerOutput<bool?>('disableLocalAccounts');
    diskEncryptionSetID = registerOutput<String?>('diskEncryptionSetID');
    dnsPrefix = registerOutput<String?>('dnsPrefix');
    eTag = registerOutput<String>('eTag');
    enableRBAC = registerOutput<bool?>('enableRBAC');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fqdn = registerOutput<String>('fqdn');
    fqdnSubdomain = registerOutput<String?>('fqdnSubdomain');
    httpProxyConfig = registerOutput<ManagedClusterHTTPProxyConfigResponse?>('httpProxyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterHTTPProxyConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<ManagedClusterIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identityProfile = registerOutput<Map<String, UserAssignedIdentityManagedClusterResponse>?>('identityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<UserAssignedIdentityManagedClusterResponse>(guardedValue, (value) => UserAssignedIdentityManagedClusterResponse.fromMap((value as Map).cast<String, dynamic>())); });
    ingressProfile = registerOutput<ManagedClusterIngressProfileResponse?>('ingressProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterIngressProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    kubernetesVersion = registerOutput<String?>('kubernetesVersion');
    linuxProfile = registerOutput<ContainerServiceLinuxProfileResponse?>('linuxProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerServiceLinuxProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    maxAgentPools = registerOutput<int>('maxAgentPools');
    metricsProfile = registerOutput<ManagedClusterMetricsProfileResponse?>('metricsProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterMetricsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<ContainerServiceNetworkProfileResponse?>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerServiceNetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeProvisioningProfile = registerOutput<ManagedClusterNodeProvisioningProfileResponse?>('nodeProvisioningProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterNodeProvisioningProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeResourceGroup = registerOutput<String?>('nodeResourceGroup');
    nodeResourceGroupProfile = registerOutput<ManagedClusterNodeResourceGroupProfileResponse?>('nodeResourceGroupProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterNodeResourceGroupProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    oidcIssuerProfile = registerOutput<ManagedClusterOIDCIssuerProfileResponse?>('oidcIssuerProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterOIDCIssuerProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    podIdentityProfile = registerOutput<ManagedClusterPodIdentityProfileResponse?>('podIdentityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterPodIdentityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    powerState = registerOutput<PowerStateResponse>('powerState', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PowerStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateFQDN = registerOutput<String>('privateFQDN');
    privateLinkResources = registerOutput<List<PrivateLinkResourceResponse>?>('privateLinkResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateLinkResourceResponse>(guardedValue, (value) => PrivateLinkResourceResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    resourceUID = registerOutput<String>('resourceUID');
    securityProfile = registerOutput<ManagedClusterSecurityProfileResponse?>('securityProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterSecurityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceMeshProfile = registerOutput<ServiceMeshProfileResponse?>('serviceMeshProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceMeshProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    servicePrincipalProfile = registerOutput<ManagedClusterServicePrincipalProfileResponse?>('servicePrincipalProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterServicePrincipalProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<ManagedClusterSKUResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterSKUResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ManagedClusterStatusResponse?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageProfile = registerOutput<ManagedClusterStorageProfileResponse?>('storageProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterStorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    supportPlan = registerOutput<String?>('supportPlan');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    upgradeSettings = registerOutput<ClusterUpgradeSettingsResponse?>('upgradeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterUpgradeSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    windowsProfile = registerOutput<ManagedClusterWindowsProfileResponse?>('windowsProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterWindowsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadAutoScalerProfile = registerOutput<ManagedClusterWorkloadAutoScalerProfileResponse?>('workloadAutoScalerProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedClusterWorkloadAutoScalerProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
