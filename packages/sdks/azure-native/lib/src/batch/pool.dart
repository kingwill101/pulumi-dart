import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scale_run_response.dart';
import 'batch_pool_identity_response.dart';
import 'deployment_configuration_response.dart';
import 'network_configuration_response.dart';
import 'pool_args.dart';
import 'resize_operation_status_response.dart';
import 'scale_settings_response.dart';
import 'start_task_response.dart';
import 'system_data_response.dart';
import 'task_scheduling_policy_response.dart';
import 'upgrade_policy_response.dart';

/// Contains information about a pool.
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01, 2024-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native batch [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreatePool - Custom Image
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.Batch.Pool("pool", new()
///     {
///         AccountName = "sampleacct",
///         DeploymentConfiguration = new AzureNative.Batch.Inputs.DeploymentConfigurationArgs
///         {
///             VirtualMachineConfiguration = new AzureNative.Batch.Inputs.VirtualMachineConfigurationArgs
///             {
///                 ImageReference = new AzureNative.Batch.Inputs.ImageReferenceArgs
///                 {
///                     Id = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1",
///                 },
///                 NodeAgentSkuId = "batch.node.ubuntu 18.04",
///             },
///         },
///         PoolName = "testpool",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         VmSize = "STANDARD_D4",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewPool(ctx, "pool", &batch.PoolArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			DeploymentConfiguration: &batch.DeploymentConfigurationArgs{
/// 				VirtualMachineConfiguration: &batch.VirtualMachineConfigurationArgs{
/// 					ImageReference: &batch.ImageReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1"),
/// 					},
/// 					NodeAgentSkuId: pulumi.String("batch.node.ubuntu 18.04"),
/// 				},
/// 			},
/// 			PoolName:          pulumi.String("testpool"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			VmSize:            pulumi.String("STANDARD_D4"),
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
/// import com.pulumi.azurenative.batch.Pool;
/// import com.pulumi.azurenative.batch.PoolArgs;
/// import com.pulumi.azurenative.batch.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.VirtualMachineConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ImageReferenceArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .accountName("sampleacct")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .id("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1")
///                         .build())
///                     .nodeAgentSkuId("batch.node.ubuntu 18.04")
///                     .build())
///                 .build())
///             .poolName("testpool")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .vmSize("STANDARD_D4")
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
/// const pool = new azure_native.batch.Pool("pool", {
///     accountName: "sampleacct",
///     deploymentConfiguration: {
///         virtualMachineConfiguration: {
///             imageReference: {
///                 id: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1",
///             },
///             nodeAgentSkuId: "batch.node.ubuntu 18.04",
///         },
///     },
///     poolName: "testpool",
///     resourceGroupName: "default-azurebatch-japaneast",
///     vmSize: "STANDARD_D4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.batch.Pool("pool",
///     account_name="sampleacct",
///     deployment_configuration={
///         "virtual_machine_configuration": {
///             "image_reference": {
///                 "id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1",
///             },
///             "node_agent_sku_id": "batch.node.ubuntu 18.04",
///         },
///     },
///     pool_name="testpool",
///     resource_group_name="default-azurebatch-japaneast",
///     vm_size="STANDARD_D4")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:batch:Pool
///     properties:
///       accountName: sampleacct
///       deploymentConfiguration:
///         virtualMachineConfiguration:
///           imageReference:
///             id: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1
///           nodeAgentSkuId: batch.node.ubuntu 18.04
///       poolName: testpool
///       resourceGroupName: default-azurebatch-japaneast
///       vmSize: STANDARD_D4
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreatePool - Full VirtualMachineConfiguration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.Batch.Pool("pool", new()
///     {
///         AccountName = "sampleacct",
///         DeploymentConfiguration = new AzureNative.Batch.Inputs.DeploymentConfigurationArgs
///         {
///             VirtualMachineConfiguration = new AzureNative.Batch.Inputs.VirtualMachineConfigurationArgs
///             {
///                 DataDisks = new[]
///                 {
///                     new AzureNative.Batch.Inputs.DataDiskArgs
///                     {
///                         Caching = AzureNative.Batch.CachingType.ReadWrite,
///                         DiskSizeGB = 30,
///                         Lun = 0,
///                         StorageAccountType = AzureNative.Batch.StorageAccountType.Premium_LRS,
///                     },
///                     new AzureNative.Batch.Inputs.DataDiskArgs
///                     {
///                         Caching = AzureNative.Batch.CachingType.None,
///                         DiskSizeGB = 200,
///                         Lun = 1,
///                         StorageAccountType = AzureNative.Batch.StorageAccountType.Standard_LRS,
///                     },
///                 },
///                 DiskEncryptionConfiguration = new AzureNative.Batch.Inputs.DiskEncryptionConfigurationArgs
///                 {
///                     Targets = new[]
///                     {
///                         AzureNative.Batch.DiskEncryptionTarget.OsDisk,
///                         AzureNative.Batch.DiskEncryptionTarget.TemporaryDisk,
///                     },
///                 },
///                 ImageReference = new AzureNative.Batch.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-Datacenter-SmallDisk",
///                     Version = "latest",
///                 },
///                 LicenseType = "Windows_Server",
///                 NodeAgentSkuId = "batch.node.windows amd64",
///                 NodePlacementConfiguration = new AzureNative.Batch.Inputs.NodePlacementConfigurationArgs
///                 {
///                     Policy = AzureNative.Batch.NodePlacementPolicyType.Zonal,
///                 },
///                 OsDisk = new AzureNative.Batch.Inputs.OSDiskArgs
///                 {
///                     EphemeralOSDiskSettings = new AzureNative.Batch.Inputs.DiffDiskSettingsArgs
///                     {
///                         Placement = AzureNative.Batch.DiffDiskPlacement.CacheDisk,
///                     },
///                 },
///                 WindowsConfiguration = new AzureNative.Batch.Inputs.WindowsConfigurationArgs
///                 {
///                     EnableAutomaticUpdates = false,
///                 },
///             },
///         },
///         NetworkConfiguration = new AzureNative.Batch.Inputs.NetworkConfigurationArgs
///         {
///             EndpointConfiguration = new AzureNative.Batch.Inputs.PoolEndpointConfigurationArgs
///             {
///                 InboundNatPools = new[]
///                 {
///                     new AzureNative.Batch.Inputs.InboundNatPoolArgs
///                     {
///                         BackendPort = 12001,
///                         FrontendPortRangeEnd = 15100,
///                         FrontendPortRangeStart = 15000,
///                         Name = "testnat",
///                         NetworkSecurityGroupRules = new[]
///                         {
///                             new AzureNative.Batch.Inputs.NetworkSecurityGroupRuleArgs
///                             {
///                                 Access = AzureNative.Batch.NetworkSecurityGroupRuleAccess.Allow,
///                                 Priority = 150,
///                                 SourceAddressPrefix = "192.100.12.45",
///                                 SourcePortRanges = new[]
///                                 {
///                                     "1",
///                                     "2",
///                                 },
///                             },
///                             new AzureNative.Batch.Inputs.NetworkSecurityGroupRuleArgs
///                             {
///                                 Access = AzureNative.Batch.NetworkSecurityGroupRuleAccess.Deny,
///                                 Priority = 3500,
///                                 SourceAddressPrefix = "*",
///                                 SourcePortRanges = new[]
///                                 {
///                                     "*",
///                                 },
///                             },
///                         },
///                         Protocol = AzureNative.Batch.InboundEndpointProtocol.TCP,
///                     },
///                 },
///             },
///         },
///         PoolName = "testpool",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         ScaleSettings = new AzureNative.Batch.Inputs.ScaleSettingsArgs
///         {
///             AutoScale = new AzureNative.Batch.Inputs.AutoScaleSettingsArgs
///             {
///                 EvaluationInterval = "PT5M",
///                 Formula = "$TargetDedicatedNodes=1",
///             },
///         },
///         VmSize = "STANDARD_D4",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewPool(ctx, "pool", &batch.PoolArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			DeploymentConfiguration: &batch.DeploymentConfigurationArgs{
/// 				VirtualMachineConfiguration: &batch.VirtualMachineConfigurationArgs{
/// 					DataDisks: batch.DataDiskArray{
/// 						&batch.DataDiskArgs{
/// 							Caching:            batch.CachingTypeReadWrite,
/// 							DiskSizeGB:         pulumi.Int(30),
/// 							Lun:                pulumi.Int(0),
/// 							StorageAccountType: batch.StorageAccountType_Premium_LRS,
/// 						},
/// 						&batch.DataDiskArgs{
/// 							Caching:            batch.CachingTypeNone,
/// 							DiskSizeGB:         pulumi.Int(200),
/// 							Lun:                pulumi.Int(1),
/// 							StorageAccountType: batch.StorageAccountType_Standard_LRS,
/// 						},
/// 					},
/// 					DiskEncryptionConfiguration: &batch.DiskEncryptionConfigurationArgs{
/// 						Targets: batch.DiskEncryptionTargetArray{
/// 							batch.DiskEncryptionTargetOsDisk,
/// 							batch.DiskEncryptionTargetTemporaryDisk,
/// 						},
/// 					},
/// 					ImageReference: &batch.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-Datacenter-SmallDisk"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					LicenseType:    pulumi.String("Windows_Server"),
/// 					NodeAgentSkuId: pulumi.String("batch.node.windows amd64"),
/// 					NodePlacementConfiguration: &batch.NodePlacementConfigurationArgs{
/// 						Policy: batch.NodePlacementPolicyTypeZonal,
/// 					},
/// 					OsDisk: &batch.OSDiskArgs{
/// 						EphemeralOSDiskSettings: &batch.DiffDiskSettingsArgs{
/// 							Placement: batch.DiffDiskPlacementCacheDisk,
/// 						},
/// 					},
/// 					WindowsConfiguration: &batch.WindowsConfigurationArgs{
/// 						EnableAutomaticUpdates: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			NetworkConfiguration: &batch.NetworkConfigurationArgs{
/// 				EndpointConfiguration: &batch.PoolEndpointConfigurationArgs{
/// 					InboundNatPools: batch.InboundNatPoolArray{
/// 						&batch.InboundNatPoolArgs{
/// 							BackendPort:            pulumi.Int(12001),
/// 							FrontendPortRangeEnd:   pulumi.Int(15100),
/// 							FrontendPortRangeStart: pulumi.Int(15000),
/// 							Name:                   pulumi.String("testnat"),
/// 							NetworkSecurityGroupRules: batch.NetworkSecurityGroupRuleArray{
/// 								&batch.NetworkSecurityGroupRuleArgs{
/// 									Access:              batch.NetworkSecurityGroupRuleAccessAllow,
/// 									Priority:            pulumi.Int(150),
/// 									SourceAddressPrefix: pulumi.String("192.100.12.45"),
/// 									SourcePortRanges: pulumi.StringArray{
/// 										pulumi.String("1"),
/// 										pulumi.String("2"),
/// 									},
/// 								},
/// 								&batch.NetworkSecurityGroupRuleArgs{
/// 									Access:              batch.NetworkSecurityGroupRuleAccessDeny,
/// 									Priority:            pulumi.Int(3500),
/// 									SourceAddressPrefix: pulumi.String("*"),
/// 									SourcePortRanges: pulumi.StringArray{
/// 										pulumi.String("*"),
/// 									},
/// 								},
/// 							},
/// 							Protocol: batch.InboundEndpointProtocolTCP,
/// 						},
/// 					},
/// 				},
/// 			},
/// 			PoolName:          pulumi.String("testpool"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			ScaleSettings: &batch.ScaleSettingsArgs{
/// 				AutoScale: &batch.AutoScaleSettingsArgs{
/// 					EvaluationInterval: pulumi.String("PT5M"),
/// 					Formula:            pulumi.String("$TargetDedicatedNodes=1"),
/// 				},
/// 			},
/// 			VmSize: pulumi.String("STANDARD_D4"),
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
/// import com.pulumi.azurenative.batch.Pool;
/// import com.pulumi.azurenative.batch.PoolArgs;
/// import com.pulumi.azurenative.batch.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.VirtualMachineConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.DiskEncryptionConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.batch.inputs.NodePlacementConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.batch.inputs.DiffDiskSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.WindowsConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.NetworkConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.PoolEndpointConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ScaleSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.AutoScaleSettingsArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .accountName("sampleacct")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                     .dataDisks(
///                         DataDiskArgs.builder()
///                             .caching("ReadWrite")
///                             .diskSizeGB(30)
///                             .lun(0)
///                             .storageAccountType("Premium_LRS")
///                             .build(),
///                         DataDiskArgs.builder()
///                             .caching("None")
///                             .diskSizeGB(200)
///                             .lun(1)
///                             .storageAccountType("Standard_LRS")
///                             .build())
///                     .diskEncryptionConfiguration(DiskEncryptionConfigurationArgs.builder()
///                         .targets(
///                             "OsDisk",
///                             "TemporaryDisk")
///                         .build())
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-Datacenter-SmallDisk")
///                         .version("latest")
///                         .build())
///                     .licenseType("Windows_Server")
///                     .nodeAgentSkuId("batch.node.windows amd64")
///                     .nodePlacementConfiguration(NodePlacementConfigurationArgs.builder()
///                         .policy("Zonal")
///                         .build())
///                     .osDisk(OSDiskArgs.builder()
///                         .ephemeralOSDiskSettings(DiffDiskSettingsArgs.builder()
///                             .placement("CacheDisk")
///                             .build())
///                         .build())
///                     .windowsConfiguration(WindowsConfigurationArgs.builder()
///                         .enableAutomaticUpdates(false)
///                         .build())
///                     .build())
///                 .build())
///             .networkConfiguration(NetworkConfigurationArgs.builder()
///                 .endpointConfiguration(PoolEndpointConfigurationArgs.builder()
///                     .inboundNatPools(InboundNatPoolArgs.builder()
///                         .backendPort(12001)
///                         .frontendPortRangeEnd(15100)
///                         .frontendPortRangeStart(15000)
///                         .name("testnat")
///                         .networkSecurityGroupRules(
///                             NetworkSecurityGroupRuleArgs.builder()
///                                 .access("Allow")
///                                 .priority(150)
///                                 .sourceAddressPrefix("192.100.12.45")
///                                 .sourcePortRanges(
///                                     "1",
///                                     "2")
///                                 .build(),
///                             NetworkSecurityGroupRuleArgs.builder()
///                                 .access("Deny")
///                                 .priority(3500)
///                                 .sourceAddressPrefix("*")
///                                 .sourcePortRanges("*")
///                                 .build())
///                         .protocol("TCP")
///                         .build())
///                     .build())
///                 .build())
///             .poolName("testpool")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .scaleSettings(ScaleSettingsArgs.builder()
///                 .autoScale(AutoScaleSettingsArgs.builder()
///                     .evaluationInterval("PT5M")
///                     .formula("$TargetDedicatedNodes=1")
///                     .build())
///                 .build())
///             .vmSize("STANDARD_D4")
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
/// const pool = new azure_native.batch.Pool("pool", {
///     accountName: "sampleacct",
///     deploymentConfiguration: {
///         virtualMachineConfiguration: {
///             dataDisks: [
///                 {
///                     caching: azure_native.batch.CachingType.ReadWrite,
///                     diskSizeGB: 30,
///                     lun: 0,
///                     storageAccountType: azure_native.batch.StorageAccountType.Premium_LRS,
///                 },
///                 {
///                     caching: azure_native.batch.CachingType.None,
///                     diskSizeGB: 200,
///                     lun: 1,
///                     storageAccountType: azure_native.batch.StorageAccountType.Standard_LRS,
///                 },
///             ],
///             diskEncryptionConfiguration: {
///                 targets: [
///                     azure_native.batch.DiskEncryptionTarget.OsDisk,
///                     azure_native.batch.DiskEncryptionTarget.TemporaryDisk,
///                 ],
///             },
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-Datacenter-SmallDisk",
///                 version: "latest",
///             },
///             licenseType: "Windows_Server",
///             nodeAgentSkuId: "batch.node.windows amd64",
///             nodePlacementConfiguration: {
///                 policy: azure_native.batch.NodePlacementPolicyType.Zonal,
///             },
///             osDisk: {
///                 ephemeralOSDiskSettings: {
///                     placement: azure_native.batch.DiffDiskPlacement.CacheDisk,
///                 },
///             },
///             windowsConfiguration: {
///                 enableAutomaticUpdates: false,
///             },
///         },
///     },
///     networkConfiguration: {
///         endpointConfiguration: {
///             inboundNatPools: [{
///                 backendPort: 12001,
///                 frontendPortRangeEnd: 15100,
///                 frontendPortRangeStart: 15000,
///                 name: "testnat",
///                 networkSecurityGroupRules: [
///                     {
///                         access: azure_native.batch.NetworkSecurityGroupRuleAccess.Allow,
///                         priority: 150,
///                         sourceAddressPrefix: "192.100.12.45",
///                         sourcePortRanges: [
///                             "1",
///                             "2",
///                         ],
///                     },
///                     {
///                         access: azure_native.batch.NetworkSecurityGroupRuleAccess.Deny,
///                         priority: 3500,
///                         sourceAddressPrefix: "*",
///                         sourcePortRanges: ["*"],
///                     },
///                 ],
///                 protocol: azure_native.batch.InboundEndpointProtocol.TCP,
///             }],
///         },
///     },
///     poolName: "testpool",
///     resourceGroupName: "default-azurebatch-japaneast",
///     scaleSettings: {
///         autoScale: {
///             evaluationInterval: "PT5M",
///             formula: "$TargetDedicatedNodes=1",
///         },
///     },
///     vmSize: "STANDARD_D4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.batch.Pool("pool",
///     account_name="sampleacct",
///     deployment_configuration={
///         "virtual_machine_configuration": {
///             "data_disks": [
///                 {
///                     "caching": azure_native.batch.CachingType.READ_WRITE,
///                     "disk_size_gb": 30,
///                     "lun": 0,
///                     "storage_account_type": azure_native.batch.StorageAccountType.PREMIUM_LRS,
///                 },
///                 {
///                     "caching": azure_native.batch.CachingType.NONE,
///                     "disk_size_gb": 200,
///                     "lun": 1,
///                     "storage_account_type": azure_native.batch.StorageAccountType.STANDARD_LRS,
///                 },
///             ],
///             "disk_encryption_configuration": {
///                 "targets": [
///                     azure_native.batch.DiskEncryptionTarget.OS_DISK,
///                     azure_native.batch.DiskEncryptionTarget.TEMPORARY_DISK,
///                 ],
///             },
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-Datacenter-SmallDisk",
///                 "version": "latest",
///             },
///             "license_type": "Windows_Server",
///             "node_agent_sku_id": "batch.node.windows amd64",
///             "node_placement_configuration": {
///                 "policy": azure_native.batch.NodePlacementPolicyType.ZONAL,
///             },
///             "os_disk": {
///                 "ephemeral_os_disk_settings": {
///                     "placement": azure_native.batch.DiffDiskPlacement.CACHE_DISK,
///                 },
///             },
///             "windows_configuration": {
///                 "enable_automatic_updates": False,
///             },
///         },
///     },
///     network_configuration={
///         "endpoint_configuration": {
///             "inbound_nat_pools": [{
///                 "backend_port": 12001,
///                 "frontend_port_range_end": 15100,
///                 "frontend_port_range_start": 15000,
///                 "name": "testnat",
///                 "network_security_group_rules": [
///                     {
///                         "access": azure_native.batch.NetworkSecurityGroupRuleAccess.ALLOW,
///                         "priority": 150,
///                         "source_address_prefix": "192.100.12.45",
///                         "source_port_ranges": [
///                             "1",
///                             "2",
///                         ],
///                     },
///                     {
///                         "access": azure_native.batch.NetworkSecurityGroupRuleAccess.DENY,
///                         "priority": 3500,
///                         "source_address_prefix": "*",
///                         "source_port_ranges": ["*"],
///                     },
///                 ],
///                 "protocol": azure_native.batch.InboundEndpointProtocol.TCP,
///             }],
///         },
///     },
///     pool_name="testpool",
///     resource_group_name="default-azurebatch-japaneast",
///     scale_settings={
///         "auto_scale": {
///             "evaluation_interval": "PT5M",
///             "formula": "$TargetDedicatedNodes=1",
///         },
///     },
///     vm_size="STANDARD_D4")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:batch:Pool
///     properties:
///       accountName: sampleacct
///       deploymentConfiguration:
///         virtualMachineConfiguration:
///           dataDisks:
///             - caching: ReadWrite
///               diskSizeGB: 30
///               lun: 0
///               storageAccountType: Premium_LRS
///             - caching: None
///               diskSizeGB: 200
///               lun: 1
///               storageAccountType: Standard_LRS
///           diskEncryptionConfiguration:
///             targets:
///               - OsDisk
///               - TemporaryDisk
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-Datacenter-SmallDisk
///             version: latest
///           licenseType: Windows_Server
///           nodeAgentSkuId: batch.node.windows amd64
///           nodePlacementConfiguration:
///             policy: Zonal
///           osDisk:
///             ephemeralOSDiskSettings:
///               placement: CacheDisk
///           windowsConfiguration:
///             enableAutomaticUpdates: false
///       networkConfiguration:
///         endpointConfiguration:
///           inboundNatPools:
///             - backendPort: 12001
///               frontendPortRangeEnd: 15100
///               frontendPortRangeStart: 15000
///               name: testnat
///               networkSecurityGroupRules:
///                 - access: Allow
///                   priority: 150
///                   sourceAddressPrefix: 192.100.12.45
///                   sourcePortRanges:
///                     - '1'
///                     - '2'
///                 - access: Deny
///                   priority: 3500
///                   sourceAddressPrefix: '*'
///                   sourcePortRanges:
///                     - '*'
///               protocol: TCP
///       poolName: testpool
///       resourceGroupName: default-azurebatch-japaneast
///       scaleSettings:
///         autoScale:
///           evaluationInterval: PT5M
///           formula: $TargetDedicatedNodes=1
///       vmSize: STANDARD_D4
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreatePool - Minimal VirtualMachineConfiguration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.Batch.Pool("pool", new()
///     {
///         AccountName = "sampleacct",
///         DeploymentConfiguration = new AzureNative.Batch.Inputs.DeploymentConfigurationArgs
///         {
///             VirtualMachineConfiguration = new AzureNative.Batch.Inputs.VirtualMachineConfigurationArgs
///             {
///                 ImageReference = new AzureNative.Batch.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "UbuntuServer",
///                     Publisher = "Canonical",
///                     Sku = "18.04-LTS",
///                     Version = "latest",
///                 },
///                 NodeAgentSkuId = "batch.node.ubuntu 18.04",
///             },
///         },
///         PoolName = "testpool",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         ScaleSettings = new AzureNative.Batch.Inputs.ScaleSettingsArgs
///         {
///             AutoScale = new AzureNative.Batch.Inputs.AutoScaleSettingsArgs
///             {
///                 EvaluationInterval = "PT5M",
///                 Formula = "$TargetDedicatedNodes=1",
///             },
///         },
///         VmSize = "STANDARD_D4",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewPool(ctx, "pool", &batch.PoolArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			DeploymentConfiguration: &batch.DeploymentConfigurationArgs{
/// 				VirtualMachineConfiguration: &batch.VirtualMachineConfigurationArgs{
/// 					ImageReference: &batch.ImageReferenceArgs{
/// 						Offer:     pulumi.String("UbuntuServer"),
/// 						Publisher: pulumi.String("Canonical"),
/// 						Sku:       pulumi.String("18.04-LTS"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					NodeAgentSkuId: pulumi.String("batch.node.ubuntu 18.04"),
/// 				},
/// 			},
/// 			PoolName:          pulumi.String("testpool"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			ScaleSettings: &batch.ScaleSettingsArgs{
/// 				AutoScale: &batch.AutoScaleSettingsArgs{
/// 					EvaluationInterval: pulumi.String("PT5M"),
/// 					Formula:            pulumi.String("$TargetDedicatedNodes=1"),
/// 				},
/// 			},
/// 			VmSize: pulumi.String("STANDARD_D4"),
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
/// import com.pulumi.azurenative.batch.Pool;
/// import com.pulumi.azurenative.batch.PoolArgs;
/// import com.pulumi.azurenative.batch.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.VirtualMachineConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.batch.inputs.ScaleSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.AutoScaleSettingsArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .accountName("sampleacct")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("UbuntuServer")
///                         .publisher("Canonical")
///                         .sku("18.04-LTS")
///                         .version("latest")
///                         .build())
///                     .nodeAgentSkuId("batch.node.ubuntu 18.04")
///                     .build())
///                 .build())
///             .poolName("testpool")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .scaleSettings(ScaleSettingsArgs.builder()
///                 .autoScale(AutoScaleSettingsArgs.builder()
///                     .evaluationInterval("PT5M")
///                     .formula("$TargetDedicatedNodes=1")
///                     .build())
///                 .build())
///             .vmSize("STANDARD_D4")
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
/// const pool = new azure_native.batch.Pool("pool", {
///     accountName: "sampleacct",
///     deploymentConfiguration: {
///         virtualMachineConfiguration: {
///             imageReference: {
///                 offer: "UbuntuServer",
///                 publisher: "Canonical",
///                 sku: "18.04-LTS",
///                 version: "latest",
///             },
///             nodeAgentSkuId: "batch.node.ubuntu 18.04",
///         },
///     },
///     poolName: "testpool",
///     resourceGroupName: "default-azurebatch-japaneast",
///     scaleSettings: {
///         autoScale: {
///             evaluationInterval: "PT5M",
///             formula: "$TargetDedicatedNodes=1",
///         },
///     },
///     vmSize: "STANDARD_D4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.batch.Pool("pool",
///     account_name="sampleacct",
///     deployment_configuration={
///         "virtual_machine_configuration": {
///             "image_reference": {
///                 "offer": "UbuntuServer",
///                 "publisher": "Canonical",
///                 "sku": "18.04-LTS",
///                 "version": "latest",
///             },
///             "node_agent_sku_id": "batch.node.ubuntu 18.04",
///         },
///     },
///     pool_name="testpool",
///     resource_group_name="default-azurebatch-japaneast",
///     scale_settings={
///         "auto_scale": {
///             "evaluation_interval": "PT5M",
///             "formula": "$TargetDedicatedNodes=1",
///         },
///     },
///     vm_size="STANDARD_D4")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:batch:Pool
///     properties:
///       accountName: sampleacct
///       deploymentConfiguration:
///         virtualMachineConfiguration:
///           imageReference:
///             offer: UbuntuServer
///             publisher: Canonical
///             sku: 18.04-LTS
///             version: latest
///           nodeAgentSkuId: batch.node.ubuntu 18.04
///       poolName: testpool
///       resourceGroupName: default-azurebatch-japaneast
///       scaleSettings:
///         autoScale:
///           evaluationInterval: PT5M
///           formula: $TargetDedicatedNodes=1
///       vmSize: STANDARD_D4
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreatePool - No public IP
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.Batch.Pool("pool", new()
///     {
///         AccountName = "sampleacct",
///         DeploymentConfiguration = new AzureNative.Batch.Inputs.DeploymentConfigurationArgs
///         {
///             VirtualMachineConfiguration = new AzureNative.Batch.Inputs.VirtualMachineConfigurationArgs
///             {
///                 ImageReference = new AzureNative.Batch.Inputs.ImageReferenceArgs
///                 {
///                     Id = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1",
///                 },
///                 NodeAgentSkuId = "batch.node.ubuntu 18.04",
///             },
///         },
///         NetworkConfiguration = new AzureNative.Batch.Inputs.NetworkConfigurationArgs
///         {
///             PublicIPAddressConfiguration = new AzureNative.Batch.Inputs.PublicIPAddressConfigurationArgs
///             {
///                 Provision = AzureNative.Batch.IPAddressProvisioningType.NoPublicIPAddresses,
///             },
///             SubnetId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123",
///         },
///         PoolName = "testpool",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         VmSize = "STANDARD_D4",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewPool(ctx, "pool", &batch.PoolArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			DeploymentConfiguration: &batch.DeploymentConfigurationArgs{
/// 				VirtualMachineConfiguration: &batch.VirtualMachineConfigurationArgs{
/// 					ImageReference: &batch.ImageReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1"),
/// 					},
/// 					NodeAgentSkuId: pulumi.String("batch.node.ubuntu 18.04"),
/// 				},
/// 			},
/// 			NetworkConfiguration: &batch.NetworkConfigurationArgs{
/// 				PublicIPAddressConfiguration: &batch.PublicIPAddressConfigurationArgs{
/// 					Provision: batch.IPAddressProvisioningTypeNoPublicIPAddresses,
/// 				},
/// 				SubnetId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123"),
/// 			},
/// 			PoolName:          pulumi.String("testpool"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			VmSize:            pulumi.String("STANDARD_D4"),
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
/// import com.pulumi.azurenative.batch.Pool;
/// import com.pulumi.azurenative.batch.PoolArgs;
/// import com.pulumi.azurenative.batch.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.VirtualMachineConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.batch.inputs.NetworkConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.PublicIPAddressConfigurationArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .accountName("sampleacct")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .id("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1")
///                         .build())
///                     .nodeAgentSkuId("batch.node.ubuntu 18.04")
///                     .build())
///                 .build())
///             .networkConfiguration(NetworkConfigurationArgs.builder()
///                 .publicIPAddressConfiguration(PublicIPAddressConfigurationArgs.builder()
///                     .provision("NoPublicIPAddresses")
///                     .build())
///                 .subnetId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123")
///                 .build())
///             .poolName("testpool")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .vmSize("STANDARD_D4")
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
/// const pool = new azure_native.batch.Pool("pool", {
///     accountName: "sampleacct",
///     deploymentConfiguration: {
///         virtualMachineConfiguration: {
///             imageReference: {
///                 id: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1",
///             },
///             nodeAgentSkuId: "batch.node.ubuntu 18.04",
///         },
///     },
///     networkConfiguration: {
///         publicIPAddressConfiguration: {
///             provision: azure_native.batch.IPAddressProvisioningType.NoPublicIPAddresses,
///         },
///         subnetId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123",
///     },
///     poolName: "testpool",
///     resourceGroupName: "default-azurebatch-japaneast",
///     vmSize: "STANDARD_D4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.batch.Pool("pool",
///     account_name="sampleacct",
///     deployment_configuration={
///         "virtual_machine_configuration": {
///             "image_reference": {
///                 "id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1",
///             },
///             "node_agent_sku_id": "batch.node.ubuntu 18.04",
///         },
///     },
///     network_configuration={
///         "public_ip_address_configuration": {
///             "provision": azure_native.batch.IPAddressProvisioningType.NO_PUBLIC_IP_ADDRESSES,
///         },
///         "subnet_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123",
///     },
///     pool_name="testpool",
///     resource_group_name="default-azurebatch-japaneast",
///     vm_size="STANDARD_D4")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:batch:Pool
///     properties:
///       accountName: sampleacct
///       deploymentConfiguration:
///         virtualMachineConfiguration:
///           imageReference:
///             id: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1
///           nodeAgentSkuId: batch.node.ubuntu 18.04
///       networkConfiguration:
///         publicIPAddressConfiguration:
///           provision: NoPublicIPAddresses
///         subnetId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123
///       poolName: testpool
///       resourceGroupName: default-azurebatch-japaneast
///       vmSize: STANDARD_D4
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreatePool - Public IPs
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.Batch.Pool("pool", new()
///     {
///         AccountName = "sampleacct",
///         DeploymentConfiguration = new AzureNative.Batch.Inputs.DeploymentConfigurationArgs
///         {
///             VirtualMachineConfiguration = new AzureNative.Batch.Inputs.VirtualMachineConfigurationArgs
///             {
///                 ImageReference = new AzureNative.Batch.Inputs.ImageReferenceArgs
///                 {
///                     Id = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1",
///                 },
///                 NodeAgentSkuId = "batch.node.ubuntu 18.04",
///             },
///         },
///         NetworkConfiguration = new AzureNative.Batch.Inputs.NetworkConfigurationArgs
///         {
///             PublicIPAddressConfiguration = new AzureNative.Batch.Inputs.PublicIPAddressConfigurationArgs
///             {
///                 IpAddressIds = new[]
///                 {
///                     "/subscriptions/12345678-1234-1234-1234-1234567890121/resourceGroups/rg13/providers/Microsoft.Network/publicIPAddresses/ip135",
///                 },
///                 Provision = AzureNative.Batch.IPAddressProvisioningType.UserManaged,
///             },
///             SubnetId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123",
///         },
///         PoolName = "testpool",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         VmSize = "STANDARD_D4",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewPool(ctx, "pool", &batch.PoolArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			DeploymentConfiguration: &batch.DeploymentConfigurationArgs{
/// 				VirtualMachineConfiguration: &batch.VirtualMachineConfigurationArgs{
/// 					ImageReference: &batch.ImageReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1"),
/// 					},
/// 					NodeAgentSkuId: pulumi.String("batch.node.ubuntu 18.04"),
/// 				},
/// 			},
/// 			NetworkConfiguration: &batch.NetworkConfigurationArgs{
/// 				PublicIPAddressConfiguration: &batch.PublicIPAddressConfigurationArgs{
/// 					IpAddressIds: pulumi.StringArray{
/// 						pulumi.String("/subscriptions/12345678-1234-1234-1234-1234567890121/resourceGroups/rg13/providers/Microsoft.Network/publicIPAddresses/ip135"),
/// 					},
/// 					Provision: batch.IPAddressProvisioningTypeUserManaged,
/// 				},
/// 				SubnetId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123"),
/// 			},
/// 			PoolName:          pulumi.String("testpool"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			VmSize:            pulumi.String("STANDARD_D4"),
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
/// import com.pulumi.azurenative.batch.Pool;
/// import com.pulumi.azurenative.batch.PoolArgs;
/// import com.pulumi.azurenative.batch.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.VirtualMachineConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.batch.inputs.NetworkConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.PublicIPAddressConfigurationArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .accountName("sampleacct")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .id("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1")
///                         .build())
///                     .nodeAgentSkuId("batch.node.ubuntu 18.04")
///                     .build())
///                 .build())
///             .networkConfiguration(NetworkConfigurationArgs.builder()
///                 .publicIPAddressConfiguration(PublicIPAddressConfigurationArgs.builder()
///                     .ipAddressIds("/subscriptions/12345678-1234-1234-1234-1234567890121/resourceGroups/rg13/providers/Microsoft.Network/publicIPAddresses/ip135")
///                     .provision("UserManaged")
///                     .build())
///                 .subnetId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123")
///                 .build())
///             .poolName("testpool")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .vmSize("STANDARD_D4")
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
/// const pool = new azure_native.batch.Pool("pool", {
///     accountName: "sampleacct",
///     deploymentConfiguration: {
///         virtualMachineConfiguration: {
///             imageReference: {
///                 id: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1",
///             },
///             nodeAgentSkuId: "batch.node.ubuntu 18.04",
///         },
///     },
///     networkConfiguration: {
///         publicIPAddressConfiguration: {
///             ipAddressIds: ["/subscriptions/12345678-1234-1234-1234-1234567890121/resourceGroups/rg13/providers/Microsoft.Network/publicIPAddresses/ip135"],
///             provision: azure_native.batch.IPAddressProvisioningType.UserManaged,
///         },
///         subnetId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123",
///     },
///     poolName: "testpool",
///     resourceGroupName: "default-azurebatch-japaneast",
///     vmSize: "STANDARD_D4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.batch.Pool("pool",
///     account_name="sampleacct",
///     deployment_configuration={
///         "virtual_machine_configuration": {
///             "image_reference": {
///                 "id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1",
///             },
///             "node_agent_sku_id": "batch.node.ubuntu 18.04",
///         },
///     },
///     network_configuration={
///         "public_ip_address_configuration": {
///             "ip_address_ids": ["/subscriptions/12345678-1234-1234-1234-1234567890121/resourceGroups/rg13/providers/Microsoft.Network/publicIPAddresses/ip135"],
///             "provision": azure_native.batch.IPAddressProvisioningType.USER_MANAGED,
///         },
///         "subnet_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123",
///     },
///     pool_name="testpool",
///     resource_group_name="default-azurebatch-japaneast",
///     vm_size="STANDARD_D4")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:batch:Pool
///     properties:
///       accountName: sampleacct
///       deploymentConfiguration:
///         virtualMachineConfiguration:
///           imageReference:
///             id: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/networking-group/providers/Microsoft.Compute/galleries/testgallery/images/testimagedef/versions/0.0.1
///           nodeAgentSkuId: batch.node.ubuntu 18.04
///       networkConfiguration:
///         publicIPAddressConfiguration:
///           ipAddressIds:
///             - /subscriptions/12345678-1234-1234-1234-1234567890121/resourceGroups/rg13/providers/Microsoft.Network/publicIPAddresses/ip135
///           provision: UserManaged
///         subnetId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123
///       poolName: testpool
///       resourceGroupName: default-azurebatch-japaneast
///       vmSize: STANDARD_D4
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreatePool - ResourceTags
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.Batch.Pool("pool", new()
///     {
///         AccountName = "sampleacct",
///         DeploymentConfiguration = new AzureNative.Batch.Inputs.DeploymentConfigurationArgs
///         {
///             VirtualMachineConfiguration = new AzureNative.Batch.Inputs.VirtualMachineConfigurationArgs
///             {
///                 ImageReference = new AzureNative.Batch.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "UbuntuServer",
///                     Publisher = "Canonical",
///                     Sku = "18_04-lts-gen2",
///                     Version = "latest",
///                 },
///                 NodeAgentSkuId = "batch.node.ubuntu 18.04",
///             },
///         },
///         PoolName = "testpool",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         ResourceTags =
///         {
///             { "TagName1", "TagValue1" },
///             { "TagName2", "TagValue2" },
///         },
///         ScaleSettings = new AzureNative.Batch.Inputs.ScaleSettingsArgs
///         {
///             FixedScale = new AzureNative.Batch.Inputs.FixedScaleSettingsArgs
///             {
///                 TargetDedicatedNodes = 1,
///                 TargetLowPriorityNodes = 0,
///             },
///         },
///         VmSize = "Standard_d4s_v3",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewPool(ctx, "pool", &batch.PoolArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			DeploymentConfiguration: &batch.DeploymentConfigurationArgs{
/// 				VirtualMachineConfiguration: &batch.VirtualMachineConfigurationArgs{
/// 					ImageReference: &batch.ImageReferenceArgs{
/// 						Offer:     pulumi.String("UbuntuServer"),
/// 						Publisher: pulumi.String("Canonical"),
/// 						Sku:       pulumi.String("18_04-lts-gen2"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					NodeAgentSkuId: pulumi.String("batch.node.ubuntu 18.04"),
/// 				},
/// 			},
/// 			PoolName:          pulumi.String("testpool"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			ResourceTags: pulumi.StringMap{
/// 				"TagName1": pulumi.String("TagValue1"),
/// 				"TagName2": pulumi.String("TagValue2"),
/// 			},
/// 			ScaleSettings: &batch.ScaleSettingsArgs{
/// 				FixedScale: &batch.FixedScaleSettingsArgs{
/// 					TargetDedicatedNodes:   pulumi.Int(1),
/// 					TargetLowPriorityNodes: pulumi.Int(0),
/// 				},
/// 			},
/// 			VmSize: pulumi.String("Standard_d4s_v3"),
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
/// import com.pulumi.azurenative.batch.Pool;
/// import com.pulumi.azurenative.batch.PoolArgs;
/// import com.pulumi.azurenative.batch.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.VirtualMachineConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.batch.inputs.ScaleSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.FixedScaleSettingsArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .accountName("sampleacct")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("UbuntuServer")
///                         .publisher("Canonical")
///                         .sku("18_04-lts-gen2")
///                         .version("latest")
///                         .build())
///                     .nodeAgentSkuId("batch.node.ubuntu 18.04")
///                     .build())
///                 .build())
///             .poolName("testpool")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .resourceTags(Map.ofEntries(
///                 Map.entry("TagName1", "TagValue1"),
///                 Map.entry("TagName2", "TagValue2")
///             ))
///             .scaleSettings(ScaleSettingsArgs.builder()
///                 .fixedScale(FixedScaleSettingsArgs.builder()
///                     .targetDedicatedNodes(1)
///                     .targetLowPriorityNodes(0)
///                     .build())
///                 .build())
///             .vmSize("Standard_d4s_v3")
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
/// const pool = new azure_native.batch.Pool("pool", {
///     accountName: "sampleacct",
///     deploymentConfiguration: {
///         virtualMachineConfiguration: {
///             imageReference: {
///                 offer: "UbuntuServer",
///                 publisher: "Canonical",
///                 sku: "18_04-lts-gen2",
///                 version: "latest",
///             },
///             nodeAgentSkuId: "batch.node.ubuntu 18.04",
///         },
///     },
///     poolName: "testpool",
///     resourceGroupName: "default-azurebatch-japaneast",
///     resourceTags: {
///         TagName1: "TagValue1",
///         TagName2: "TagValue2",
///     },
///     scaleSettings: {
///         fixedScale: {
///             targetDedicatedNodes: 1,
///             targetLowPriorityNodes: 0,
///         },
///     },
///     vmSize: "Standard_d4s_v3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.batch.Pool("pool",
///     account_name="sampleacct",
///     deployment_configuration={
///         "virtual_machine_configuration": {
///             "image_reference": {
///                 "offer": "UbuntuServer",
///                 "publisher": "Canonical",
///                 "sku": "18_04-lts-gen2",
///                 "version": "latest",
///             },
///             "node_agent_sku_id": "batch.node.ubuntu 18.04",
///         },
///     },
///     pool_name="testpool",
///     resource_group_name="default-azurebatch-japaneast",
///     resource_tags={
///         "TagName1": "TagValue1",
///         "TagName2": "TagValue2",
///     },
///     scale_settings={
///         "fixed_scale": {
///             "target_dedicated_nodes": 1,
///             "target_low_priority_nodes": 0,
///         },
///     },
///     vm_size="Standard_d4s_v3")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:batch:Pool
///     properties:
///       accountName: sampleacct
///       deploymentConfiguration:
///         virtualMachineConfiguration:
///           imageReference:
///             offer: UbuntuServer
///             publisher: Canonical
///             sku: 18_04-lts-gen2
///             version: latest
///           nodeAgentSkuId: batch.node.ubuntu 18.04
///       poolName: testpool
///       resourceGroupName: default-azurebatch-japaneast
///       resourceTags:
///         TagName1: TagValue1
///         TagName2: TagValue2
///       scaleSettings:
///         fixedScale:
///           targetDedicatedNodes: 1
///           targetLowPriorityNodes: 0
///       vmSize: Standard_d4s_v3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreatePool - SecurityProfile
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.Batch.Pool("pool", new()
///     {
///         AccountName = "sampleacct",
///         DeploymentConfiguration = new AzureNative.Batch.Inputs.DeploymentConfigurationArgs
///         {
///             VirtualMachineConfiguration = new AzureNative.Batch.Inputs.VirtualMachineConfigurationArgs
///             {
///                 ImageReference = new AzureNative.Batch.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "UbuntuServer",
///                     Publisher = "Canonical",
///                     Sku = "18_04-lts-gen2",
///                     Version = "latest",
///                 },
///                 NodeAgentSkuId = "batch.node.ubuntu 18.04",
///                 SecurityProfile = new AzureNative.Batch.Inputs.SecurityProfileArgs
///                 {
///                     EncryptionAtHost = true,
///                     SecurityType = AzureNative.Batch.SecurityTypes.TrustedLaunch,
///                     UefiSettings = new AzureNative.Batch.Inputs.UefiSettingsArgs
///                     {
///                         VTpmEnabled = false,
///                     },
///                 },
///             },
///         },
///         PoolName = "testpool",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         ScaleSettings = new AzureNative.Batch.Inputs.ScaleSettingsArgs
///         {
///             FixedScale = new AzureNative.Batch.Inputs.FixedScaleSettingsArgs
///             {
///                 TargetDedicatedNodes = 1,
///                 TargetLowPriorityNodes = 0,
///             },
///         },
///         VmSize = "Standard_d4s_v3",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewPool(ctx, "pool", &batch.PoolArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			DeploymentConfiguration: &batch.DeploymentConfigurationArgs{
/// 				VirtualMachineConfiguration: &batch.VirtualMachineConfigurationArgs{
/// 					ImageReference: &batch.ImageReferenceArgs{
/// 						Offer:     pulumi.String("UbuntuServer"),
/// 						Publisher: pulumi.String("Canonical"),
/// 						Sku:       pulumi.String("18_04-lts-gen2"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					NodeAgentSkuId: pulumi.String("batch.node.ubuntu 18.04"),
/// 					SecurityProfile: &batch.SecurityProfileArgs{
/// 						EncryptionAtHost: pulumi.Bool(true),
/// 						SecurityType:     batch.SecurityTypesTrustedLaunch,
/// 						UefiSettings: &batch.UefiSettingsArgs{
/// 							VTpmEnabled: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			PoolName:          pulumi.String("testpool"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			ScaleSettings: &batch.ScaleSettingsArgs{
/// 				FixedScale: &batch.FixedScaleSettingsArgs{
/// 					TargetDedicatedNodes:   pulumi.Int(1),
/// 					TargetLowPriorityNodes: pulumi.Int(0),
/// 				},
/// 			},
/// 			VmSize: pulumi.String("Standard_d4s_v3"),
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
/// import com.pulumi.azurenative.batch.Pool;
/// import com.pulumi.azurenative.batch.PoolArgs;
/// import com.pulumi.azurenative.batch.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.VirtualMachineConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.batch.inputs.SecurityProfileArgs;
/// import com.pulumi.azurenative.batch.inputs.UefiSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.ScaleSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.FixedScaleSettingsArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .accountName("sampleacct")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("UbuntuServer")
///                         .publisher("Canonical")
///                         .sku("18_04-lts-gen2")
///                         .version("latest")
///                         .build())
///                     .nodeAgentSkuId("batch.node.ubuntu 18.04")
///                     .securityProfile(SecurityProfileArgs.builder()
///                         .encryptionAtHost(true)
///                         .securityType("trustedLaunch")
///                         .uefiSettings(UefiSettingsArgs.builder()
///                             .vTpmEnabled(false)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .poolName("testpool")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .scaleSettings(ScaleSettingsArgs.builder()
///                 .fixedScale(FixedScaleSettingsArgs.builder()
///                     .targetDedicatedNodes(1)
///                     .targetLowPriorityNodes(0)
///                     .build())
///                 .build())
///             .vmSize("Standard_d4s_v3")
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
/// const pool = new azure_native.batch.Pool("pool", {
///     accountName: "sampleacct",
///     deploymentConfiguration: {
///         virtualMachineConfiguration: {
///             imageReference: {
///                 offer: "UbuntuServer",
///                 publisher: "Canonical",
///                 sku: "18_04-lts-gen2",
///                 version: "latest",
///             },
///             nodeAgentSkuId: "batch.node.ubuntu 18.04",
///             securityProfile: {
///                 encryptionAtHost: true,
///                 securityType: azure_native.batch.SecurityTypes.TrustedLaunch,
///                 uefiSettings: {
///                     vTpmEnabled: false,
///                 },
///             },
///         },
///     },
///     poolName: "testpool",
///     resourceGroupName: "default-azurebatch-japaneast",
///     scaleSettings: {
///         fixedScale: {
///             targetDedicatedNodes: 1,
///             targetLowPriorityNodes: 0,
///         },
///     },
///     vmSize: "Standard_d4s_v3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.batch.Pool("pool",
///     account_name="sampleacct",
///     deployment_configuration={
///         "virtual_machine_configuration": {
///             "image_reference": {
///                 "offer": "UbuntuServer",
///                 "publisher": "Canonical",
///                 "sku": "18_04-lts-gen2",
///                 "version": "latest",
///             },
///             "node_agent_sku_id": "batch.node.ubuntu 18.04",
///             "security_profile": {
///                 "encryption_at_host": True,
///                 "security_type": azure_native.batch.SecurityTypes.TRUSTED_LAUNCH,
///                 "uefi_settings": {
///                     "v_tpm_enabled": False,
///                 },
///             },
///         },
///     },
///     pool_name="testpool",
///     resource_group_name="default-azurebatch-japaneast",
///     scale_settings={
///         "fixed_scale": {
///             "target_dedicated_nodes": 1,
///             "target_low_priority_nodes": 0,
///         },
///     },
///     vm_size="Standard_d4s_v3")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:batch:Pool
///     properties:
///       accountName: sampleacct
///       deploymentConfiguration:
///         virtualMachineConfiguration:
///           imageReference:
///             offer: UbuntuServer
///             publisher: Canonical
///             sku: 18_04-lts-gen2
///             version: latest
///           nodeAgentSkuId: batch.node.ubuntu 18.04
///           securityProfile:
///             encryptionAtHost: true
///             securityType: trustedLaunch
///             uefiSettings:
///               vTpmEnabled: false
///       poolName: testpool
///       resourceGroupName: default-azurebatch-japaneast
///       scaleSettings:
///         fixedScale:
///           targetDedicatedNodes: 1
///           targetLowPriorityNodes: 0
///       vmSize: Standard_d4s_v3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreatePool - Tags
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.Batch.Pool("pool", new()
///     {
///         AccountName = "sampleacct",
///         DeploymentConfiguration = new AzureNative.Batch.Inputs.DeploymentConfigurationArgs
///         {
///             VirtualMachineConfiguration = new AzureNative.Batch.Inputs.VirtualMachineConfigurationArgs
///             {
///                 ImageReference = new AzureNative.Batch.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "0001-com-ubuntu-server-jammy",
///                     Publisher = "Canonical",
///                     Sku = "22_04-lts",
///                     Version = "latest",
///                 },
///                 NodeAgentSkuId = "batch.node.ubuntu 22.04",
///             },
///         },
///         PoolName = "testpool",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         ScaleSettings = new AzureNative.Batch.Inputs.ScaleSettingsArgs
///         {
///             FixedScale = new AzureNative.Batch.Inputs.FixedScaleSettingsArgs
///             {
///                 TargetDedicatedNodes = 1,
///                 TargetLowPriorityNodes = 0,
///             },
///         },
///         VmSize = "Standard_d4s_v3",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewPool(ctx, "pool", &batch.PoolArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			DeploymentConfiguration: &batch.DeploymentConfigurationArgs{
/// 				VirtualMachineConfiguration: &batch.VirtualMachineConfigurationArgs{
/// 					ImageReference: &batch.ImageReferenceArgs{
/// 						Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 						Publisher: pulumi.String("Canonical"),
/// 						Sku:       pulumi.String("22_04-lts"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					NodeAgentSkuId: pulumi.String("batch.node.ubuntu 22.04"),
/// 				},
/// 			},
/// 			PoolName:          pulumi.String("testpool"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			ScaleSettings: &batch.ScaleSettingsArgs{
/// 				FixedScale: &batch.FixedScaleSettingsArgs{
/// 					TargetDedicatedNodes:   pulumi.Int(1),
/// 					TargetLowPriorityNodes: pulumi.Int(0),
/// 				},
/// 			},
/// 			VmSize: pulumi.String("Standard_d4s_v3"),
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
/// import com.pulumi.azurenative.batch.Pool;
/// import com.pulumi.azurenative.batch.PoolArgs;
/// import com.pulumi.azurenative.batch.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.VirtualMachineConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.batch.inputs.ScaleSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.FixedScaleSettingsArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .accountName("sampleacct")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("0001-com-ubuntu-server-jammy")
///                         .publisher("Canonical")
///                         .sku("22_04-lts")
///                         .version("latest")
///                         .build())
///                     .nodeAgentSkuId("batch.node.ubuntu 22.04")
///                     .build())
///                 .build())
///             .poolName("testpool")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .scaleSettings(ScaleSettingsArgs.builder()
///                 .fixedScale(FixedScaleSettingsArgs.builder()
///                     .targetDedicatedNodes(1)
///                     .targetLowPriorityNodes(0)
///                     .build())
///                 .build())
///             .vmSize("Standard_d4s_v3")
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
/// const pool = new azure_native.batch.Pool("pool", {
///     accountName: "sampleacct",
///     deploymentConfiguration: {
///         virtualMachineConfiguration: {
///             imageReference: {
///                 offer: "0001-com-ubuntu-server-jammy",
///                 publisher: "Canonical",
///                 sku: "22_04-lts",
///                 version: "latest",
///             },
///             nodeAgentSkuId: "batch.node.ubuntu 22.04",
///         },
///     },
///     poolName: "testpool",
///     resourceGroupName: "default-azurebatch-japaneast",
///     scaleSettings: {
///         fixedScale: {
///             targetDedicatedNodes: 1,
///             targetLowPriorityNodes: 0,
///         },
///     },
///     vmSize: "Standard_d4s_v3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.batch.Pool("pool",
///     account_name="sampleacct",
///     deployment_configuration={
///         "virtual_machine_configuration": {
///             "image_reference": {
///                 "offer": "0001-com-ubuntu-server-jammy",
///                 "publisher": "Canonical",
///                 "sku": "22_04-lts",
///                 "version": "latest",
///             },
///             "node_agent_sku_id": "batch.node.ubuntu 22.04",
///         },
///     },
///     pool_name="testpool",
///     resource_group_name="default-azurebatch-japaneast",
///     scale_settings={
///         "fixed_scale": {
///             "target_dedicated_nodes": 1,
///             "target_low_priority_nodes": 0,
///         },
///     },
///     vm_size="Standard_d4s_v3")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:batch:Pool
///     properties:
///       accountName: sampleacct
///       deploymentConfiguration:
///         virtualMachineConfiguration:
///           imageReference:
///             offer: 0001-com-ubuntu-server-jammy
///             publisher: Canonical
///             sku: 22_04-lts
///             version: latest
///           nodeAgentSkuId: batch.node.ubuntu 22.04
///       poolName: testpool
///       resourceGroupName: default-azurebatch-japaneast
///       scaleSettings:
///         fixedScale:
///           targetDedicatedNodes: 1
///           targetLowPriorityNodes: 0
///       vmSize: Standard_d4s_v3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreatePool - UpgradePolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.Batch.Pool("pool", new()
///     {
///         AccountName = "sampleacct",
///         DeploymentConfiguration = new AzureNative.Batch.Inputs.DeploymentConfigurationArgs
///         {
///             VirtualMachineConfiguration = new AzureNative.Batch.Inputs.VirtualMachineConfigurationArgs
///             {
///                 ImageReference = new AzureNative.Batch.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2019-datacenter-smalldisk",
///                     Version = "latest",
///                 },
///                 NodeAgentSkuId = "batch.node.windows amd64",
///                 NodePlacementConfiguration = new AzureNative.Batch.Inputs.NodePlacementConfigurationArgs
///                 {
///                     Policy = AzureNative.Batch.NodePlacementPolicyType.Zonal,
///                 },
///                 WindowsConfiguration = new AzureNative.Batch.Inputs.WindowsConfigurationArgs
///                 {
///                     EnableAutomaticUpdates = false,
///                 },
///             },
///         },
///         PoolName = "testpool",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         ScaleSettings = new AzureNative.Batch.Inputs.ScaleSettingsArgs
///         {
///             FixedScale = new AzureNative.Batch.Inputs.FixedScaleSettingsArgs
///             {
///                 TargetDedicatedNodes = 2,
///                 TargetLowPriorityNodes = 0,
///             },
///         },
///         UpgradePolicy = new AzureNative.Batch.Inputs.UpgradePolicyArgs
///         {
///             AutomaticOSUpgradePolicy = new AzureNative.Batch.Inputs.AutomaticOSUpgradePolicyArgs
///             {
///                 DisableAutomaticRollback = true,
///                 EnableAutomaticOSUpgrade = true,
///                 OsRollingUpgradeDeferral = true,
///                 UseRollingUpgradePolicy = true,
///             },
///             Mode = AzureNative.Batch.UpgradeMode.Automatic,
///             RollingUpgradePolicy = new AzureNative.Batch.Inputs.RollingUpgradePolicyArgs
///             {
///                 EnableCrossZoneUpgrade = true,
///                 MaxBatchInstancePercent = 20,
///                 MaxUnhealthyInstancePercent = 20,
///                 MaxUnhealthyUpgradedInstancePercent = 20,
///                 PauseTimeBetweenBatches = "PT0S",
///                 PrioritizeUnhealthyInstances = false,
///                 RollbackFailedInstancesOnPolicyBreach = false,
///             },
///         },
///         VmSize = "Standard_d4s_v3",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewPool(ctx, "pool", &batch.PoolArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			DeploymentConfiguration: &batch.DeploymentConfigurationArgs{
/// 				VirtualMachineConfiguration: &batch.VirtualMachineConfigurationArgs{
/// 					ImageReference: &batch.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2019-datacenter-smalldisk"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					NodeAgentSkuId: pulumi.String("batch.node.windows amd64"),
/// 					NodePlacementConfiguration: &batch.NodePlacementConfigurationArgs{
/// 						Policy: batch.NodePlacementPolicyTypeZonal,
/// 					},
/// 					WindowsConfiguration: &batch.WindowsConfigurationArgs{
/// 						EnableAutomaticUpdates: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			PoolName:          pulumi.String("testpool"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			ScaleSettings: &batch.ScaleSettingsArgs{
/// 				FixedScale: &batch.FixedScaleSettingsArgs{
/// 					TargetDedicatedNodes:   pulumi.Int(2),
/// 					TargetLowPriorityNodes: pulumi.Int(0),
/// 				},
/// 			},
/// 			UpgradePolicy: &batch.UpgradePolicyArgs{
/// 				AutomaticOSUpgradePolicy: &batch.AutomaticOSUpgradePolicyArgs{
/// 					DisableAutomaticRollback: pulumi.Bool(true),
/// 					EnableAutomaticOSUpgrade: pulumi.Bool(true),
/// 					OsRollingUpgradeDeferral: pulumi.Bool(true),
/// 					UseRollingUpgradePolicy:  pulumi.Bool(true),
/// 				},
/// 				Mode: batch.UpgradeModeAutomatic,
/// 				RollingUpgradePolicy: &batch.RollingUpgradePolicyArgs{
/// 					EnableCrossZoneUpgrade:                pulumi.Bool(true),
/// 					MaxBatchInstancePercent:               pulumi.Int(20),
/// 					MaxUnhealthyInstancePercent:           pulumi.Int(20),
/// 					MaxUnhealthyUpgradedInstancePercent:   pulumi.Int(20),
/// 					PauseTimeBetweenBatches:               pulumi.String("PT0S"),
/// 					PrioritizeUnhealthyInstances:          pulumi.Bool(false),
/// 					RollbackFailedInstancesOnPolicyBreach: pulumi.Bool(false),
/// 				},
/// 			},
/// 			VmSize: pulumi.String("Standard_d4s_v3"),
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
/// import com.pulumi.azurenative.batch.Pool;
/// import com.pulumi.azurenative.batch.PoolArgs;
/// import com.pulumi.azurenative.batch.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.VirtualMachineConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.batch.inputs.NodePlacementConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.WindowsConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ScaleSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.FixedScaleSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.batch.inputs.AutomaticOSUpgradePolicyArgs;
/// import com.pulumi.azurenative.batch.inputs.RollingUpgradePolicyArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .accountName("sampleacct")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2019-datacenter-smalldisk")
///                         .version("latest")
///                         .build())
///                     .nodeAgentSkuId("batch.node.windows amd64")
///                     .nodePlacementConfiguration(NodePlacementConfigurationArgs.builder()
///                         .policy("Zonal")
///                         .build())
///                     .windowsConfiguration(WindowsConfigurationArgs.builder()
///                         .enableAutomaticUpdates(false)
///                         .build())
///                     .build())
///                 .build())
///             .poolName("testpool")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .scaleSettings(ScaleSettingsArgs.builder()
///                 .fixedScale(FixedScaleSettingsArgs.builder()
///                     .targetDedicatedNodes(2)
///                     .targetLowPriorityNodes(0)
///                     .build())
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .automaticOSUpgradePolicy(AutomaticOSUpgradePolicyArgs.builder()
///                     .disableAutomaticRollback(true)
///                     .enableAutomaticOSUpgrade(true)
///                     .osRollingUpgradeDeferral(true)
///                     .useRollingUpgradePolicy(true)
///                     .build())
///                 .mode("automatic")
///                 .rollingUpgradePolicy(RollingUpgradePolicyArgs.builder()
///                     .enableCrossZoneUpgrade(true)
///                     .maxBatchInstancePercent(20)
///                     .maxUnhealthyInstancePercent(20)
///                     .maxUnhealthyUpgradedInstancePercent(20)
///                     .pauseTimeBetweenBatches("PT0S")
///                     .prioritizeUnhealthyInstances(false)
///                     .rollbackFailedInstancesOnPolicyBreach(false)
///                     .build())
///                 .build())
///             .vmSize("Standard_d4s_v3")
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
/// const pool = new azure_native.batch.Pool("pool", {
///     accountName: "sampleacct",
///     deploymentConfiguration: {
///         virtualMachineConfiguration: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2019-datacenter-smalldisk",
///                 version: "latest",
///             },
///             nodeAgentSkuId: "batch.node.windows amd64",
///             nodePlacementConfiguration: {
///                 policy: azure_native.batch.NodePlacementPolicyType.Zonal,
///             },
///             windowsConfiguration: {
///                 enableAutomaticUpdates: false,
///             },
///         },
///     },
///     poolName: "testpool",
///     resourceGroupName: "default-azurebatch-japaneast",
///     scaleSettings: {
///         fixedScale: {
///             targetDedicatedNodes: 2,
///             targetLowPriorityNodes: 0,
///         },
///     },
///     upgradePolicy: {
///         automaticOSUpgradePolicy: {
///             disableAutomaticRollback: true,
///             enableAutomaticOSUpgrade: true,
///             osRollingUpgradeDeferral: true,
///             useRollingUpgradePolicy: true,
///         },
///         mode: azure_native.batch.UpgradeMode.Automatic,
///         rollingUpgradePolicy: {
///             enableCrossZoneUpgrade: true,
///             maxBatchInstancePercent: 20,
///             maxUnhealthyInstancePercent: 20,
///             maxUnhealthyUpgradedInstancePercent: 20,
///             pauseTimeBetweenBatches: "PT0S",
///             prioritizeUnhealthyInstances: false,
///             rollbackFailedInstancesOnPolicyBreach: false,
///         },
///     },
///     vmSize: "Standard_d4s_v3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.batch.Pool("pool",
///     account_name="sampleacct",
///     deployment_configuration={
///         "virtual_machine_configuration": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2019-datacenter-smalldisk",
///                 "version": "latest",
///             },
///             "node_agent_sku_id": "batch.node.windows amd64",
///             "node_placement_configuration": {
///                 "policy": azure_native.batch.NodePlacementPolicyType.ZONAL,
///             },
///             "windows_configuration": {
///                 "enable_automatic_updates": False,
///             },
///         },
///     },
///     pool_name="testpool",
///     resource_group_name="default-azurebatch-japaneast",
///     scale_settings={
///         "fixed_scale": {
///             "target_dedicated_nodes": 2,
///             "target_low_priority_nodes": 0,
///         },
///     },
///     upgrade_policy={
///         "automatic_os_upgrade_policy": {
///             "disable_automatic_rollback": True,
///             "enable_automatic_os_upgrade": True,
///             "os_rolling_upgrade_deferral": True,
///             "use_rolling_upgrade_policy": True,
///         },
///         "mode": azure_native.batch.UpgradeMode.AUTOMATIC,
///         "rolling_upgrade_policy": {
///             "enable_cross_zone_upgrade": True,
///             "max_batch_instance_percent": 20,
///             "max_unhealthy_instance_percent": 20,
///             "max_unhealthy_upgraded_instance_percent": 20,
///             "pause_time_between_batches": "PT0S",
///             "prioritize_unhealthy_instances": False,
///             "rollback_failed_instances_on_policy_breach": False,
///         },
///     },
///     vm_size="Standard_d4s_v3")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:batch:Pool
///     properties:
///       accountName: sampleacct
///       deploymentConfiguration:
///         virtualMachineConfiguration:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2019-datacenter-smalldisk
///             version: latest
///           nodeAgentSkuId: batch.node.windows amd64
///           nodePlacementConfiguration:
///             policy: Zonal
///           windowsConfiguration:
///             enableAutomaticUpdates: false
///       poolName: testpool
///       resourceGroupName: default-azurebatch-japaneast
///       scaleSettings:
///         fixedScale:
///           targetDedicatedNodes: 2
///           targetLowPriorityNodes: 0
///       upgradePolicy:
///         automaticOSUpgradePolicy:
///           disableAutomaticRollback: true
///           enableAutomaticOSUpgrade: true
///           osRollingUpgradeDeferral: true
///           useRollingUpgradePolicy: true
///         mode: automatic
///         rollingUpgradePolicy:
///           enableCrossZoneUpgrade: true
///           maxBatchInstancePercent: 20
///           maxUnhealthyInstancePercent: 20
///           maxUnhealthyUpgradedInstancePercent: 20
///           pauseTimeBetweenBatches: PT0S
///           prioritizeUnhealthyInstances: false
///           rollbackFailedInstancesOnPolicyBreach: false
///       vmSize: Standard_d4s_v3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreatePool - VirtualMachineConfiguration Extensions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.Batch.Pool("pool", new()
///     {
///         AccountName = "sampleacct",
///         DeploymentConfiguration = new AzureNative.Batch.Inputs.DeploymentConfigurationArgs
///         {
///             VirtualMachineConfiguration = new AzureNative.Batch.Inputs.VirtualMachineConfigurationArgs
///             {
///                 Extensions = new[]
///                 {
///                     new AzureNative.Batch.Inputs.VMExtensionArgs
///                     {
///                         AutoUpgradeMinorVersion = true,
///                         EnableAutomaticUpgrade = true,
///                         Name = "batchextension1",
///                         Publisher = "Microsoft.Azure.KeyVault",
///                         Settings = new Dictionary<string, object?>
///                         {
///                             ["authenticationSettingsKey"] = "authenticationSettingsValue",
///                             ["secretsManagementSettingsKey"] = "secretsManagementSettingsValue",
///                         },
///                         Type = "KeyVaultForLinux",
///                         TypeHandlerVersion = "2.0",
///                     },
///                 },
///                 ImageReference = new AzureNative.Batch.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "0001-com-ubuntu-server-focal",
///                     Publisher = "Canonical",
///                     Sku = "20_04-lts",
///                 },
///                 NodeAgentSkuId = "batch.node.ubuntu 20.04",
///             },
///         },
///         PoolName = "testpool",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         ScaleSettings = new AzureNative.Batch.Inputs.ScaleSettingsArgs
///         {
///             AutoScale = new AzureNative.Batch.Inputs.AutoScaleSettingsArgs
///             {
///                 EvaluationInterval = "PT5M",
///                 Formula = "$TargetDedicatedNodes=1",
///             },
///         },
///         TargetNodeCommunicationMode = AzureNative.Batch.NodeCommunicationMode.Default,
///         VmSize = "STANDARD_D4",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewPool(ctx, "pool", &batch.PoolArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			DeploymentConfiguration: &batch.DeploymentConfigurationArgs{
/// 				VirtualMachineConfiguration: &batch.VirtualMachineConfigurationArgs{
/// 					Extensions: batch.VMExtensionArray{
/// 						&batch.VMExtensionArgs{
/// 							AutoUpgradeMinorVersion: pulumi.Bool(true),
/// 							EnableAutomaticUpgrade:  pulumi.Bool(true),
/// 							Name:                    pulumi.String("batchextension1"),
/// 							Publisher:               pulumi.String("Microsoft.Azure.KeyVault"),
/// 							Settings: pulumi.Any(map[string]interface{}{
/// 								"authenticationSettingsKey":    "authenticationSettingsValue",
/// 								"secretsManagementSettingsKey": "secretsManagementSettingsValue",
/// 							}),
/// 							Type:               pulumi.String("KeyVaultForLinux"),
/// 							TypeHandlerVersion: pulumi.String("2.0"),
/// 						},
/// 					},
/// 					ImageReference: &batch.ImageReferenceArgs{
/// 						Offer:     pulumi.String("0001-com-ubuntu-server-focal"),
/// 						Publisher: pulumi.String("Canonical"),
/// 						Sku:       pulumi.String("20_04-lts"),
/// 					},
/// 					NodeAgentSkuId: pulumi.String("batch.node.ubuntu 20.04"),
/// 				},
/// 			},
/// 			PoolName:          pulumi.String("testpool"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			ScaleSettings: &batch.ScaleSettingsArgs{
/// 				AutoScale: &batch.AutoScaleSettingsArgs{
/// 					EvaluationInterval: pulumi.String("PT5M"),
/// 					Formula:            pulumi.String("$TargetDedicatedNodes=1"),
/// 				},
/// 			},
/// 			TargetNodeCommunicationMode: batch.NodeCommunicationModeDefault,
/// 			VmSize:                      pulumi.String("STANDARD_D4"),
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
/// import com.pulumi.azurenative.batch.Pool;
/// import com.pulumi.azurenative.batch.PoolArgs;
/// import com.pulumi.azurenative.batch.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.VirtualMachineConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.batch.inputs.ScaleSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.AutoScaleSettingsArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .accountName("sampleacct")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                     .extensions(VMExtensionArgs.builder()
///                         .autoUpgradeMinorVersion(true)
///                         .enableAutomaticUpgrade(true)
///                         .name("batchextension1")
///                         .publisher("Microsoft.Azure.KeyVault")
///                         .settings(Map.ofEntries(
///                             Map.entry("authenticationSettingsKey", "authenticationSettingsValue"),
///                             Map.entry("secretsManagementSettingsKey", "secretsManagementSettingsValue")
///                         ))
///                         .type("KeyVaultForLinux")
///                         .typeHandlerVersion("2.0")
///                         .build())
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("0001-com-ubuntu-server-focal")
///                         .publisher("Canonical")
///                         .sku("20_04-lts")
///                         .build())
///                     .nodeAgentSkuId("batch.node.ubuntu 20.04")
///                     .build())
///                 .build())
///             .poolName("testpool")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .scaleSettings(ScaleSettingsArgs.builder()
///                 .autoScale(AutoScaleSettingsArgs.builder()
///                     .evaluationInterval("PT5M")
///                     .formula("$TargetDedicatedNodes=1")
///                     .build())
///                 .build())
///             .targetNodeCommunicationMode("Default")
///             .vmSize("STANDARD_D4")
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
/// const pool = new azure_native.batch.Pool("pool", {
///     accountName: "sampleacct",
///     deploymentConfiguration: {
///         virtualMachineConfiguration: {
///             extensions: [{
///                 autoUpgradeMinorVersion: true,
///                 enableAutomaticUpgrade: true,
///                 name: "batchextension1",
///                 publisher: "Microsoft.Azure.KeyVault",
///                 settings: {
///                     authenticationSettingsKey: "authenticationSettingsValue",
///                     secretsManagementSettingsKey: "secretsManagementSettingsValue",
///                 },
///                 type: "KeyVaultForLinux",
///                 typeHandlerVersion: "2.0",
///             }],
///             imageReference: {
///                 offer: "0001-com-ubuntu-server-focal",
///                 publisher: "Canonical",
///                 sku: "20_04-lts",
///             },
///             nodeAgentSkuId: "batch.node.ubuntu 20.04",
///         },
///     },
///     poolName: "testpool",
///     resourceGroupName: "default-azurebatch-japaneast",
///     scaleSettings: {
///         autoScale: {
///             evaluationInterval: "PT5M",
///             formula: "$TargetDedicatedNodes=1",
///         },
///     },
///     targetNodeCommunicationMode: azure_native.batch.NodeCommunicationMode.Default,
///     vmSize: "STANDARD_D4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.batch.Pool("pool",
///     account_name="sampleacct",
///     deployment_configuration={
///         "virtual_machine_configuration": {
///             "extensions": [{
///                 "auto_upgrade_minor_version": True,
///                 "enable_automatic_upgrade": True,
///                 "name": "batchextension1",
///                 "publisher": "Microsoft.Azure.KeyVault",
///                 "settings": {
///                     "authenticationSettingsKey": "authenticationSettingsValue",
///                     "secretsManagementSettingsKey": "secretsManagementSettingsValue",
///                 },
///                 "type": "KeyVaultForLinux",
///                 "type_handler_version": "2.0",
///             }],
///             "image_reference": {
///                 "offer": "0001-com-ubuntu-server-focal",
///                 "publisher": "Canonical",
///                 "sku": "20_04-lts",
///             },
///             "node_agent_sku_id": "batch.node.ubuntu 20.04",
///         },
///     },
///     pool_name="testpool",
///     resource_group_name="default-azurebatch-japaneast",
///     scale_settings={
///         "auto_scale": {
///             "evaluation_interval": "PT5M",
///             "formula": "$TargetDedicatedNodes=1",
///         },
///     },
///     target_node_communication_mode=azure_native.batch.NodeCommunicationMode.DEFAULT,
///     vm_size="STANDARD_D4")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:batch:Pool
///     properties:
///       accountName: sampleacct
///       deploymentConfiguration:
///         virtualMachineConfiguration:
///           extensions:
///             - autoUpgradeMinorVersion: true
///               enableAutomaticUpgrade: true
///               name: batchextension1
///               publisher: Microsoft.Azure.KeyVault
///               settings:
///                 authenticationSettingsKey: authenticationSettingsValue
///                 secretsManagementSettingsKey: secretsManagementSettingsValue
///               type: KeyVaultForLinux
///               typeHandlerVersion: '2.0'
///           imageReference:
///             offer: 0001-com-ubuntu-server-focal
///             publisher: Canonical
///             sku: 20_04-lts
///           nodeAgentSkuId: batch.node.ubuntu 20.04
///       poolName: testpool
///       resourceGroupName: default-azurebatch-japaneast
///       scaleSettings:
///         autoScale:
///           evaluationInterval: PT5M
///           formula: $TargetDedicatedNodes=1
///       targetNodeCommunicationMode: Default
///       vmSize: STANDARD_D4
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreatePool - VirtualMachineConfiguration OSDisk
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.Batch.Pool("pool", new()
///     {
///         AccountName = "sampleacct",
///         DeploymentConfiguration = new AzureNative.Batch.Inputs.DeploymentConfigurationArgs
///         {
///             VirtualMachineConfiguration = new AzureNative.Batch.Inputs.VirtualMachineConfigurationArgs
///             {
///                 ImageReference = new AzureNative.Batch.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "windowsserver",
///                     Publisher = "microsoftwindowsserver",
///                     Sku = "2022-datacenter-smalldisk",
///                 },
///                 NodeAgentSkuId = "batch.node.windows amd64",
///                 OsDisk = new AzureNative.Batch.Inputs.OSDiskArgs
///                 {
///                     Caching = AzureNative.Batch.CachingType.ReadWrite,
///                     DiskSizeGB = 100,
///                     ManagedDisk = new AzureNative.Batch.Inputs.ManagedDiskArgs
///                     {
///                         StorageAccountType = AzureNative.Batch.StorageAccountType.StandardSSD_LRS,
///                     },
///                     WriteAcceleratorEnabled = false,
///                 },
///             },
///         },
///         PoolName = "testpool",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         ScaleSettings = new AzureNative.Batch.Inputs.ScaleSettingsArgs
///         {
///             FixedScale = new AzureNative.Batch.Inputs.FixedScaleSettingsArgs
///             {
///                 TargetDedicatedNodes = 1,
///                 TargetLowPriorityNodes = 0,
///             },
///         },
///         VmSize = "Standard_d2s_v3",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewPool(ctx, "pool", &batch.PoolArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			DeploymentConfiguration: &batch.DeploymentConfigurationArgs{
/// 				VirtualMachineConfiguration: &batch.VirtualMachineConfigurationArgs{
/// 					ImageReference: &batch.ImageReferenceArgs{
/// 						Offer:     pulumi.String("windowsserver"),
/// 						Publisher: pulumi.String("microsoftwindowsserver"),
/// 						Sku:       pulumi.String("2022-datacenter-smalldisk"),
/// 					},
/// 					NodeAgentSkuId: pulumi.String("batch.node.windows amd64"),
/// 					OsDisk: &batch.OSDiskArgs{
/// 						Caching:    batch.CachingTypeReadWrite,
/// 						DiskSizeGB: pulumi.Int(100),
/// 						ManagedDisk: &batch.ManagedDiskArgs{
/// 							StorageAccountType: batch.StorageAccountType_StandardSSD_LRS,
/// 						},
/// 						WriteAcceleratorEnabled: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			PoolName:          pulumi.String("testpool"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			ScaleSettings: &batch.ScaleSettingsArgs{
/// 				FixedScale: &batch.FixedScaleSettingsArgs{
/// 					TargetDedicatedNodes:   pulumi.Int(1),
/// 					TargetLowPriorityNodes: pulumi.Int(0),
/// 				},
/// 			},
/// 			VmSize: pulumi.String("Standard_d2s_v3"),
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
/// import com.pulumi.azurenative.batch.Pool;
/// import com.pulumi.azurenative.batch.PoolArgs;
/// import com.pulumi.azurenative.batch.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.VirtualMachineConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.batch.inputs.OSDiskArgs;
/// import com.pulumi.azurenative.batch.inputs.ManagedDiskArgs;
/// import com.pulumi.azurenative.batch.inputs.ScaleSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.FixedScaleSettingsArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .accountName("sampleacct")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("windowsserver")
///                         .publisher("microsoftwindowsserver")
///                         .sku("2022-datacenter-smalldisk")
///                         .build())
///                     .nodeAgentSkuId("batch.node.windows amd64")
///                     .osDisk(OSDiskArgs.builder()
///                         .caching("ReadWrite")
///                         .diskSizeGB(100)
///                         .managedDisk(ManagedDiskArgs.builder()
///                             .storageAccountType("StandardSSD_LRS")
///                             .build())
///                         .writeAcceleratorEnabled(false)
///                         .build())
///                     .build())
///                 .build())
///             .poolName("testpool")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .scaleSettings(ScaleSettingsArgs.builder()
///                 .fixedScale(FixedScaleSettingsArgs.builder()
///                     .targetDedicatedNodes(1)
///                     .targetLowPriorityNodes(0)
///                     .build())
///                 .build())
///             .vmSize("Standard_d2s_v3")
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
/// const pool = new azure_native.batch.Pool("pool", {
///     accountName: "sampleacct",
///     deploymentConfiguration: {
///         virtualMachineConfiguration: {
///             imageReference: {
///                 offer: "windowsserver",
///                 publisher: "microsoftwindowsserver",
///                 sku: "2022-datacenter-smalldisk",
///             },
///             nodeAgentSkuId: "batch.node.windows amd64",
///             osDisk: {
///                 caching: azure_native.batch.CachingType.ReadWrite,
///                 diskSizeGB: 100,
///                 managedDisk: {
///                     storageAccountType: azure_native.batch.StorageAccountType.StandardSSD_LRS,
///                 },
///                 writeAcceleratorEnabled: false,
///             },
///         },
///     },
///     poolName: "testpool",
///     resourceGroupName: "default-azurebatch-japaneast",
///     scaleSettings: {
///         fixedScale: {
///             targetDedicatedNodes: 1,
///             targetLowPriorityNodes: 0,
///         },
///     },
///     vmSize: "Standard_d2s_v3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.batch.Pool("pool",
///     account_name="sampleacct",
///     deployment_configuration={
///         "virtual_machine_configuration": {
///             "image_reference": {
///                 "offer": "windowsserver",
///                 "publisher": "microsoftwindowsserver",
///                 "sku": "2022-datacenter-smalldisk",
///             },
///             "node_agent_sku_id": "batch.node.windows amd64",
///             "os_disk": {
///                 "caching": azure_native.batch.CachingType.READ_WRITE,
///                 "disk_size_gb": 100,
///                 "managed_disk": {
///                     "storage_account_type": azure_native.batch.StorageAccountType.STANDARD_SS_D_LRS,
///                 },
///                 "write_accelerator_enabled": False,
///             },
///         },
///     },
///     pool_name="testpool",
///     resource_group_name="default-azurebatch-japaneast",
///     scale_settings={
///         "fixed_scale": {
///             "target_dedicated_nodes": 1,
///             "target_low_priority_nodes": 0,
///         },
///     },
///     vm_size="Standard_d2s_v3")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:batch:Pool
///     properties:
///       accountName: sampleacct
///       deploymentConfiguration:
///         virtualMachineConfiguration:
///           imageReference:
///             offer: windowsserver
///             publisher: microsoftwindowsserver
///             sku: 2022-datacenter-smalldisk
///           nodeAgentSkuId: batch.node.windows amd64
///           osDisk:
///             caching: ReadWrite
///             diskSizeGB: 100
///             managedDisk:
///               storageAccountType: StandardSSD_LRS
///             writeAcceleratorEnabled: false
///       poolName: testpool
///       resourceGroupName: default-azurebatch-japaneast
///       scaleSettings:
///         fixedScale:
///           targetDedicatedNodes: 1
///           targetLowPriorityNodes: 0
///       vmSize: Standard_d2s_v3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreatePool - VirtualMachineConfiguration ServiceArtifactReference
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.Batch.Pool("pool", new()
///     {
///         AccountName = "sampleacct",
///         DeploymentConfiguration = new AzureNative.Batch.Inputs.DeploymentConfigurationArgs
///         {
///             VirtualMachineConfiguration = new AzureNative.Batch.Inputs.VirtualMachineConfigurationArgs
///             {
///                 ImageReference = new AzureNative.Batch.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2019-datacenter-smalldisk",
///                     Version = "latest",
///                 },
///                 NodeAgentSkuId = "batch.node.windows amd64",
///                 ServiceArtifactReference = new AzureNative.Batch.Inputs.ServiceArtifactReferenceArgs
///                 {
///                     Id = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Compute/galleries/myGallery/serviceArtifacts/myServiceArtifact/vmArtifactsProfiles/vmArtifactsProfile",
///                 },
///                 WindowsConfiguration = new AzureNative.Batch.Inputs.WindowsConfigurationArgs
///                 {
///                     EnableAutomaticUpdates = false,
///                 },
///             },
///         },
///         PoolName = "testpool",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         ScaleSettings = new AzureNative.Batch.Inputs.ScaleSettingsArgs
///         {
///             FixedScale = new AzureNative.Batch.Inputs.FixedScaleSettingsArgs
///             {
///                 TargetDedicatedNodes = 2,
///                 TargetLowPriorityNodes = 0,
///             },
///         },
///         UpgradePolicy = new AzureNative.Batch.Inputs.UpgradePolicyArgs
///         {
///             AutomaticOSUpgradePolicy = new AzureNative.Batch.Inputs.AutomaticOSUpgradePolicyArgs
///             {
///                 EnableAutomaticOSUpgrade = true,
///             },
///             Mode = AzureNative.Batch.UpgradeMode.Automatic,
///         },
///         VmSize = "Standard_d4s_v3",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewPool(ctx, "pool", &batch.PoolArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			DeploymentConfiguration: &batch.DeploymentConfigurationArgs{
/// 				VirtualMachineConfiguration: &batch.VirtualMachineConfigurationArgs{
/// 					ImageReference: &batch.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2019-datacenter-smalldisk"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					NodeAgentSkuId: pulumi.String("batch.node.windows amd64"),
/// 					ServiceArtifactReference: &batch.ServiceArtifactReferenceArgs{
/// 						Id: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Compute/galleries/myGallery/serviceArtifacts/myServiceArtifact/vmArtifactsProfiles/vmArtifactsProfile"),
/// 					},
/// 					WindowsConfiguration: &batch.WindowsConfigurationArgs{
/// 						EnableAutomaticUpdates: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			PoolName:          pulumi.String("testpool"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			ScaleSettings: &batch.ScaleSettingsArgs{
/// 				FixedScale: &batch.FixedScaleSettingsArgs{
/// 					TargetDedicatedNodes:   pulumi.Int(2),
/// 					TargetLowPriorityNodes: pulumi.Int(0),
/// 				},
/// 			},
/// 			UpgradePolicy: &batch.UpgradePolicyArgs{
/// 				AutomaticOSUpgradePolicy: &batch.AutomaticOSUpgradePolicyArgs{
/// 					EnableAutomaticOSUpgrade: pulumi.Bool(true),
/// 				},
/// 				Mode: batch.UpgradeModeAutomatic,
/// 			},
/// 			VmSize: pulumi.String("Standard_d4s_v3"),
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
/// import com.pulumi.azurenative.batch.Pool;
/// import com.pulumi.azurenative.batch.PoolArgs;
/// import com.pulumi.azurenative.batch.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.VirtualMachineConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.batch.inputs.ServiceArtifactReferenceArgs;
/// import com.pulumi.azurenative.batch.inputs.WindowsConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ScaleSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.FixedScaleSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.UpgradePolicyArgs;
/// import com.pulumi.azurenative.batch.inputs.AutomaticOSUpgradePolicyArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .accountName("sampleacct")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2019-datacenter-smalldisk")
///                         .version("latest")
///                         .build())
///                     .nodeAgentSkuId("batch.node.windows amd64")
///                     .serviceArtifactReference(ServiceArtifactReferenceArgs.builder()
///                         .id("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Compute/galleries/myGallery/serviceArtifacts/myServiceArtifact/vmArtifactsProfiles/vmArtifactsProfile")
///                         .build())
///                     .windowsConfiguration(WindowsConfigurationArgs.builder()
///                         .enableAutomaticUpdates(false)
///                         .build())
///                     .build())
///                 .build())
///             .poolName("testpool")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .scaleSettings(ScaleSettingsArgs.builder()
///                 .fixedScale(FixedScaleSettingsArgs.builder()
///                     .targetDedicatedNodes(2)
///                     .targetLowPriorityNodes(0)
///                     .build())
///                 .build())
///             .upgradePolicy(UpgradePolicyArgs.builder()
///                 .automaticOSUpgradePolicy(AutomaticOSUpgradePolicyArgs.builder()
///                     .enableAutomaticOSUpgrade(true)
///                     .build())
///                 .mode("automatic")
///                 .build())
///             .vmSize("Standard_d4s_v3")
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
/// const pool = new azure_native.batch.Pool("pool", {
///     accountName: "sampleacct",
///     deploymentConfiguration: {
///         virtualMachineConfiguration: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2019-datacenter-smalldisk",
///                 version: "latest",
///             },
///             nodeAgentSkuId: "batch.node.windows amd64",
///             serviceArtifactReference: {
///                 id: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Compute/galleries/myGallery/serviceArtifacts/myServiceArtifact/vmArtifactsProfiles/vmArtifactsProfile",
///             },
///             windowsConfiguration: {
///                 enableAutomaticUpdates: false,
///             },
///         },
///     },
///     poolName: "testpool",
///     resourceGroupName: "default-azurebatch-japaneast",
///     scaleSettings: {
///         fixedScale: {
///             targetDedicatedNodes: 2,
///             targetLowPriorityNodes: 0,
///         },
///     },
///     upgradePolicy: {
///         automaticOSUpgradePolicy: {
///             enableAutomaticOSUpgrade: true,
///         },
///         mode: azure_native.batch.UpgradeMode.Automatic,
///     },
///     vmSize: "Standard_d4s_v3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.batch.Pool("pool",
///     account_name="sampleacct",
///     deployment_configuration={
///         "virtual_machine_configuration": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2019-datacenter-smalldisk",
///                 "version": "latest",
///             },
///             "node_agent_sku_id": "batch.node.windows amd64",
///             "service_artifact_reference": {
///                 "id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Compute/galleries/myGallery/serviceArtifacts/myServiceArtifact/vmArtifactsProfiles/vmArtifactsProfile",
///             },
///             "windows_configuration": {
///                 "enable_automatic_updates": False,
///             },
///         },
///     },
///     pool_name="testpool",
///     resource_group_name="default-azurebatch-japaneast",
///     scale_settings={
///         "fixed_scale": {
///             "target_dedicated_nodes": 2,
///             "target_low_priority_nodes": 0,
///         },
///     },
///     upgrade_policy={
///         "automatic_os_upgrade_policy": {
///             "enable_automatic_os_upgrade": True,
///         },
///         "mode": azure_native.batch.UpgradeMode.AUTOMATIC,
///     },
///     vm_size="Standard_d4s_v3")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:batch:Pool
///     properties:
///       accountName: sampleacct
///       deploymentConfiguration:
///         virtualMachineConfiguration:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2019-datacenter-smalldisk
///             version: latest
///           nodeAgentSkuId: batch.node.windows amd64
///           serviceArtifactReference:
///             id: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/default-azurebatch-japaneast/providers/Microsoft.Compute/galleries/myGallery/serviceArtifacts/myServiceArtifact/vmArtifactsProfiles/vmArtifactsProfile
///           windowsConfiguration:
///             enableAutomaticUpdates: false
///       poolName: testpool
///       resourceGroupName: default-azurebatch-japaneast
///       scaleSettings:
///         fixedScale:
///           targetDedicatedNodes: 2
///           targetLowPriorityNodes: 0
///       upgradePolicy:
///         automaticOSUpgradePolicy:
///           enableAutomaticOSUpgrade: true
///         mode: automatic
///       vmSize: Standard_d4s_v3
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreatePool - accelerated networking
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pool = new AzureNative.Batch.Pool("pool", new()
///     {
///         AccountName = "sampleacct",
///         DeploymentConfiguration = new AzureNative.Batch.Inputs.DeploymentConfigurationArgs
///         {
///             VirtualMachineConfiguration = new AzureNative.Batch.Inputs.VirtualMachineConfigurationArgs
///             {
///                 ImageReference = new AzureNative.Batch.Inputs.ImageReferenceArgs
///                 {
///                     Offer = "WindowsServer",
///                     Publisher = "MicrosoftWindowsServer",
///                     Sku = "2016-datacenter-smalldisk",
///                     Version = "latest",
///                 },
///                 NodeAgentSkuId = "batch.node.windows amd64",
///             },
///         },
///         NetworkConfiguration = new AzureNative.Batch.Inputs.NetworkConfigurationArgs
///         {
///             EnableAcceleratedNetworking = true,
///             SubnetId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123",
///         },
///         PoolName = "testpool",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         ScaleSettings = new AzureNative.Batch.Inputs.ScaleSettingsArgs
///         {
///             FixedScale = new AzureNative.Batch.Inputs.FixedScaleSettingsArgs
///             {
///                 TargetDedicatedNodes = 1,
///                 TargetLowPriorityNodes = 0,
///             },
///         },
///         VmSize = "STANDARD_D1_V2",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewPool(ctx, "pool", &batch.PoolArgs{
/// 			AccountName: pulumi.String("sampleacct"),
/// 			DeploymentConfiguration: &batch.DeploymentConfigurationArgs{
/// 				VirtualMachineConfiguration: &batch.VirtualMachineConfigurationArgs{
/// 					ImageReference: &batch.ImageReferenceArgs{
/// 						Offer:     pulumi.String("WindowsServer"),
/// 						Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 						Sku:       pulumi.String("2016-datacenter-smalldisk"),
/// 						Version:   pulumi.String("latest"),
/// 					},
/// 					NodeAgentSkuId: pulumi.String("batch.node.windows amd64"),
/// 				},
/// 			},
/// 			NetworkConfiguration: &batch.NetworkConfigurationArgs{
/// 				EnableAcceleratedNetworking: pulumi.Bool(true),
/// 				SubnetId:                    pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123"),
/// 			},
/// 			PoolName:          pulumi.String("testpool"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			ScaleSettings: &batch.ScaleSettingsArgs{
/// 				FixedScale: &batch.FixedScaleSettingsArgs{
/// 					TargetDedicatedNodes:   pulumi.Int(1),
/// 					TargetLowPriorityNodes: pulumi.Int(0),
/// 				},
/// 			},
/// 			VmSize: pulumi.String("STANDARD_D1_V2"),
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
/// import com.pulumi.azurenative.batch.Pool;
/// import com.pulumi.azurenative.batch.PoolArgs;
/// import com.pulumi.azurenative.batch.inputs.DeploymentConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.VirtualMachineConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ImageReferenceArgs;
/// import com.pulumi.azurenative.batch.inputs.NetworkConfigurationArgs;
/// import com.pulumi.azurenative.batch.inputs.ScaleSettingsArgs;
/// import com.pulumi.azurenative.batch.inputs.FixedScaleSettingsArgs;
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
///         var pool = new Pool("pool", PoolArgs.builder()
///             .accountName("sampleacct")
///             .deploymentConfiguration(DeploymentConfigurationArgs.builder()
///                 .virtualMachineConfiguration(VirtualMachineConfigurationArgs.builder()
///                     .imageReference(ImageReferenceArgs.builder()
///                         .offer("WindowsServer")
///                         .publisher("MicrosoftWindowsServer")
///                         .sku("2016-datacenter-smalldisk")
///                         .version("latest")
///                         .build())
///                     .nodeAgentSkuId("batch.node.windows amd64")
///                     .build())
///                 .build())
///             .networkConfiguration(NetworkConfigurationArgs.builder()
///                 .enableAcceleratedNetworking(true)
///                 .subnetId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123")
///                 .build())
///             .poolName("testpool")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .scaleSettings(ScaleSettingsArgs.builder()
///                 .fixedScale(FixedScaleSettingsArgs.builder()
///                     .targetDedicatedNodes(1)
///                     .targetLowPriorityNodes(0)
///                     .build())
///                 .build())
///             .vmSize("STANDARD_D1_V2")
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
/// const pool = new azure_native.batch.Pool("pool", {
///     accountName: "sampleacct",
///     deploymentConfiguration: {
///         virtualMachineConfiguration: {
///             imageReference: {
///                 offer: "WindowsServer",
///                 publisher: "MicrosoftWindowsServer",
///                 sku: "2016-datacenter-smalldisk",
///                 version: "latest",
///             },
///             nodeAgentSkuId: "batch.node.windows amd64",
///         },
///     },
///     networkConfiguration: {
///         enableAcceleratedNetworking: true,
///         subnetId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123",
///     },
///     poolName: "testpool",
///     resourceGroupName: "default-azurebatch-japaneast",
///     scaleSettings: {
///         fixedScale: {
///             targetDedicatedNodes: 1,
///             targetLowPriorityNodes: 0,
///         },
///     },
///     vmSize: "STANDARD_D1_V2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pool = azure_native.batch.Pool("pool",
///     account_name="sampleacct",
///     deployment_configuration={
///         "virtual_machine_configuration": {
///             "image_reference": {
///                 "offer": "WindowsServer",
///                 "publisher": "MicrosoftWindowsServer",
///                 "sku": "2016-datacenter-smalldisk",
///                 "version": "latest",
///             },
///             "node_agent_sku_id": "batch.node.windows amd64",
///         },
///     },
///     network_configuration={
///         "enable_accelerated_networking": True,
///         "subnet_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123",
///     },
///     pool_name="testpool",
///     resource_group_name="default-azurebatch-japaneast",
///     scale_settings={
///         "fixed_scale": {
///             "target_dedicated_nodes": 1,
///             "target_low_priority_nodes": 0,
///         },
///     },
///     vm_size="STANDARD_D1_V2")
///
/// ```
///
/// ```yaml
/// resources:
///   pool:
///     type: azure-native:batch:Pool
///     properties:
///       accountName: sampleacct
///       deploymentConfiguration:
///         virtualMachineConfiguration:
///           imageReference:
///             offer: WindowsServer
///             publisher: MicrosoftWindowsServer
///             sku: 2016-datacenter-smalldisk
///             version: latest
///           nodeAgentSkuId: batch.node.windows amd64
///       networkConfiguration:
///         enableAcceleratedNetworking: true
///         subnetId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/rg1234/providers/Microsoft.Network/virtualNetworks/network1234/subnets/subnet123
///       poolName: testpool
///       resourceGroupName: default-azurebatch-japaneast
///       scaleSettings:
///         fixedScale:
///           targetDedicatedNodes: 1
///           targetLowPriorityNodes: 0
///       vmSize: STANDARD_D1_V2
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
/// $ pulumi import azure-native:batch:Pool testpool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/pools/{poolName}
/// ```
class Pool extends pulumi.CustomResource {
  /// Whether the pool is resizing.
  late final pulumi.Output<String> allocationState;

  /// The time at which the pool entered its current allocation state.
  late final pulumi.Output<String> allocationStateTransitionTime;

  /// The list of application licenses must be a subset of available Batch service application licenses. If a license is requested which is not supported, pool creation will fail.
  late final pulumi.Output<List<String>?> applicationLicenses;

  /// Changes to application package references affect all new compute nodes joining the pool, but do not affect compute nodes that are already in the pool until they are rebooted or reimaged. There is a maximum of 10 application package references on any given pool.
  late final pulumi.Output<List<Map<String, dynamic>>?> applicationPackages;

  /// This property is set only if the pool automatically scales, i.e. autoScaleSettings are used.
  late final pulumi.Output<AutoScaleRunResponse> autoScaleRun;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// For Windows compute nodes, the Batch service installs the certificates to the specified certificate store and location. For Linux compute nodes, the certificates are stored in a directory inside the task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the task to query for this location. For certificates with visibility of 'remoteUser', a 'certs' directory is created in the user's home directory (e.g., /home/{user-name}/certs) and certificates are placed in that directory.
  ///
  /// Warning: This property is deprecated and will be removed after February, 2024. Please use the [Azure KeyVault Extension](https://learn.microsoft.com/azure/batch/batch-certificate-migration-guide) instead.
  late final pulumi.Output<List<Map<String, dynamic>>?> certificates;

  /// The creation time of the pool.
  late final pulumi.Output<String> creationTime;

  /// The number of dedicated compute nodes currently in the pool.
  late final pulumi.Output<int> currentDedicatedNodes;

  /// The number of Spot/low-priority compute nodes currently in the pool.
  late final pulumi.Output<int> currentLowPriorityNodes;

  /// Determines how a pool communicates with the Batch service.
  late final pulumi.Output<String> currentNodeCommunicationMode;

  /// Deployment configuration properties.
  late final pulumi.Output<DeploymentConfigurationResponse?>
  deploymentConfiguration;

  /// The display name need not be unique and can contain any Unicode characters up to a maximum length of 1024.
  late final pulumi.Output<String?> displayName;

  /// The ETag of the resource, used for concurrency statements.
  late final pulumi.Output<String> etag;

  /// The type of identity used for the Batch Pool.
  late final pulumi.Output<BatchPoolIdentityResponse?> identity;

  /// This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. If not specified, this value defaults to 'Disabled'.
  late final pulumi.Output<String?> interNodeCommunication;

  /// This is the last time at which the pool level data, such as the targetDedicatedNodes or autoScaleSettings, changed. It does not factor in node-level changes such as a compute node changing state.
  late final pulumi.Output<String> lastModified;

  /// The Batch service does not assign any meaning to metadata; it is solely for the use of user code.
  late final pulumi.Output<List<Map<String, dynamic>>?> metadata;

  /// This supports Azure Files, NFS, CIFS/SMB, and Blobfuse.
  late final pulumi.Output<List<Map<String, dynamic>>?> mountConfiguration;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The network configuration for a pool.
  late final pulumi.Output<NetworkConfigurationResponse?> networkConfiguration;

  /// The current state of the pool.
  late final pulumi.Output<String> provisioningState;

  /// The time at which the pool entered its current state.
  late final pulumi.Output<String> provisioningStateTransitionTime;

  /// Describes either the current operation (if the pool AllocationState is Resizing) or the previously completed operation (if the AllocationState is Steady).
  late final pulumi.Output<ResizeOperationStatusResponse> resizeOperationStatus;

  /// The user-defined tags to be associated with the Azure Batch Pool. When specified, these tags are propagated to the backing Azure resources associated with the pool. This property can only be specified when the Batch account was created with the poolAllocationMode property set to 'UserSubscription'.
  late final pulumi.Output<Map<String, String>?> resourceTags;

  /// Defines the desired size of the pool. This can either be 'fixedScale' where the requested targetDedicatedNodes is specified, or 'autoScale' which defines a formula which is periodically reevaluated. If this property is not specified, the pool will have a fixed scale with 0 targetDedicatedNodes.
  late final pulumi.Output<ScaleSettingsResponse?> scaleSettings;

  /// In an PATCH (update) operation, this property can be set to an empty object to remove the start task from the pool.
  late final pulumi.Output<StartTaskResponse?> startTask;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// If omitted, the default value is Default.
  late final pulumi.Output<String?> targetNodeCommunicationMode;

  /// If not specified, the default is spread.
  late final pulumi.Output<TaskSchedulingPolicyResponse?> taskSchedulingPolicy;

  /// The default value is 1. The maximum value is the smaller of 4 times the number of cores of the vmSize of the pool or 256.
  late final pulumi.Output<int?> taskSlotsPerNode;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Describes an upgrade policy - automatic, manual, or rolling.
  late final pulumi.Output<UpgradePolicyResponse?> upgradePolicy;

  /// The list of user accounts to be created on each node in the pool.
  late final pulumi.Output<List<Map<String, dynamic>>?> userAccounts;

  /// For information about available VM sizes, see Sizes for Virtual Machines in Azure (https://learn.microsoft.com/azure/virtual-machines/sizes/overview). Batch supports all Azure VM sizes except STANDARD_A0 and those with premium storage (STANDARD_GS, STANDARD_DS, and STANDARD_DSV2 series).
  late final pulumi.Output<String?> vmSize;

  /// Creates a new [Pool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pool]. {@macro pulumi_batch_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pool(String name, {PoolArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:batch:Pool',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    allocationState = registerOutput<String>('allocationState');
    allocationStateTransitionTime = registerOutput<String>(
      'allocationStateTransitionTime',
    );
    applicationLicenses = registerOutput<List<String>?>('applicationLicenses');
    applicationPackages = registerOutput<List<Map<String, dynamic>>?>(
      'applicationPackages',
    );
    autoScaleRun = registerOutput<AutoScaleRunResponse>(
      'autoScaleRun',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AutoScaleRunResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    certificates = registerOutput<List<Map<String, dynamic>>?>('certificates');
    creationTime = registerOutput<String>('creationTime');
    currentDedicatedNodes = registerOutput<int>('currentDedicatedNodes');
    currentLowPriorityNodes = registerOutput<int>('currentLowPriorityNodes');
    currentNodeCommunicationMode = registerOutput<String>(
      'currentNodeCommunicationMode',
    );
    deploymentConfiguration = registerOutput<DeploymentConfigurationResponse?>(
      'deploymentConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    identity = registerOutput<BatchPoolIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BatchPoolIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    interNodeCommunication = registerOutput<String?>('interNodeCommunication');
    lastModified = registerOutput<String>('lastModified');
    metadata = registerOutput<List<Map<String, dynamic>>?>('metadata');
    mountConfiguration = registerOutput<List<Map<String, dynamic>>?>(
      'mountConfiguration',
    );
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<NetworkConfigurationResponse?>(
      'networkConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NetworkConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    provisioningState = registerOutput<String>('provisioningState');
    provisioningStateTransitionTime = registerOutput<String>(
      'provisioningStateTransitionTime',
    );
    resizeOperationStatus = registerOutput<ResizeOperationStatusResponse>(
      'resizeOperationStatus',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ResizeOperationStatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    resourceTags = registerOutput<Map<String, String>?>('resourceTags');
    scaleSettings = registerOutput<ScaleSettingsResponse?>(
      'scaleSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ScaleSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    startTask = registerOutput<StartTaskResponse?>(
      'startTask',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StartTaskResponse.fromMap(
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
    targetNodeCommunicationMode = registerOutput<String?>(
      'targetNodeCommunicationMode',
    );
    taskSchedulingPolicy = registerOutput<TaskSchedulingPolicyResponse?>(
      'taskSchedulingPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TaskSchedulingPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    taskSlotsPerNode = registerOutput<int?>('taskSlotsPerNode');
    type = registerOutput<String>('type');
    upgradePolicy = registerOutput<UpgradePolicyResponse?>(
      'upgradePolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return UpgradePolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    userAccounts = registerOutput<List<Map<String, dynamic>>?>('userAccounts');
    vmSize = registerOutput<String?>('vmSize');
  }
}
