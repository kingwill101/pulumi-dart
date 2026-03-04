import 'package:pulumi/pulumi.dart' as pulumi;
import 'download_os_job_properties_response.dart';
import 'edge_machine_job_args.dart';
import 'system_data_response.dart';

/// Cluster Jobs resource
///
/// Uses Azure REST API version 2025-12-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EdgeMachineJobs_CreateOrUpdate_CollectLog
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var edgeMachineJob = new AzureNative.AzureStackHCI.EdgeMachineJob("edgeMachineJob", new()
///     {
///         EdgeMachineName = "machine1",
///         JobsName = "triggerLogCollection",
///         Properties =
///         {
///             { "deploymentMode", AzureNative.AzureStackHCI.DeploymentMode.Validate },
///             { "jobType", "EdgeMachineJobProperties" },
///         },
///         ResourceGroupName = "ArcInstance-rg",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := azurestackhci.NewEdgeMachineJob(ctx, "edgeMachineJob", &azurestackhci.EdgeMachineJobArgs{
/// EdgeMachineName: pulumi.String("machine1"),
/// JobsName: pulumi.String("triggerLogCollection"),
/// Properties: interface{}{
/// DeploymentMode: pulumi.String(azurestackhci.DeploymentModeValidate),
/// JobType: pulumi.String("EdgeMachineJobProperties"),
/// },
/// ResourceGroupName: pulumi.String("ArcInstance-rg"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.azurenative.azurestackhci.EdgeMachineJob;
/// import com.pulumi.azurenative.azurestackhci.EdgeMachineJobArgs;
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
///         var edgeMachineJob = new EdgeMachineJob("edgeMachineJob", EdgeMachineJobArgs.builder()
///             .edgeMachineName("machine1")
///             .jobsName("triggerLogCollection")
///             .properties(DownloadOsJobPropertiesArgs.builder()
///                 .deploymentMode("Validate")
///                 .jobType("EdgeMachineJobProperties")
///                 .build())
///             .resourceGroupName("ArcInstance-rg")
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
/// const edgeMachineJob = new azure_native.azurestackhci.EdgeMachineJob("edgeMachineJob", {
///     edgeMachineName: "machine1",
///     jobsName: "triggerLogCollection",
///     properties: {
///         deploymentMode: azure_native.azurestackhci.DeploymentMode.Validate,
///         jobType: "EdgeMachineJobProperties",
///     },
///     resourceGroupName: "ArcInstance-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// edge_machine_job = azure_native.azurestackhci.EdgeMachineJob("edgeMachineJob",
///     edge_machine_name="machine1",
///     jobs_name="triggerLogCollection",
///     properties={
///         "deployment_mode": azure_native.azurestackhci.DeploymentMode.VALIDATE,
///         "job_type": "EdgeMachineJobProperties",
///     },
///     resource_group_name="ArcInstance-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   edgeMachineJob:
///     type: azure-native:azurestackhci:EdgeMachineJob
///     properties:
///       edgeMachineName: machine1
///       jobsName: triggerLogCollection
///       properties:
///         deploymentMode: Validate
///         jobType: EdgeMachineJobProperties
///       resourceGroupName: ArcInstance-rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EdgeMachineJobs_CreateOrUpdate_DownloadOs
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var edgeMachineJob = new AzureNative.AzureStackHCI.EdgeMachineJob("edgeMachineJob", new()
///     {
///         EdgeMachineName = "machine1",
///         JobsName = "DownloadOs",
///         Properties = new AzureNative.AzureStackHCI.Inputs.DownloadOsJobPropertiesArgs
///         {
///             DeploymentMode = AzureNative.AzureStackHCI.DeploymentMode.Deploy,
///             DownloadRequest = new AzureNative.AzureStackHCI.Inputs.DownloadRequestArgs
///             {
///                 OsProfile = new AzureNative.AzureStackHCI.Inputs.DownloadOsProfileArgs
///                 {
///                     GpgPubKey = "LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t",
///                     ImageHash = "sha256:a8b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1",
///                     OsImageLocation = "https://aka.ms/aep/azlinux3.0",
///                     OsName = "AzureLinux",
///                     OsType = "AzureLinux",
///                     OsVersion = "3.0",
///                     VsrVersion = "1.0.0",
///                 },
///                 Target = AzureNative.AzureStackHCI.ProvisioningOsType.AzureLinux,
///             },
///             JobType = "DownloadOs",
///         },
///         ResourceGroupName = "ArcInstance-rg",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewEdgeMachineJob(ctx, "edgeMachineJob", &azurestackhci.EdgeMachineJobArgs{
/// 			EdgeMachineName: pulumi.String("machine1"),
/// 			JobsName:        pulumi.String("DownloadOs"),
/// 			Properties: &azurestackhci.DownloadOsJobPropertiesArgs{
/// 				DeploymentMode: pulumi.String(azurestackhci.DeploymentModeDeploy),
/// 				DownloadRequest: &azurestackhci.DownloadRequestArgs{
/// 					OsProfile: &azurestackhci.DownloadOsProfileArgs{
/// 						GpgPubKey:       pulumi.String("LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t"),
/// 						ImageHash:       pulumi.String("sha256:a8b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1"),
/// 						OsImageLocation: pulumi.String("https://aka.ms/aep/azlinux3.0"),
/// 						OsName:          pulumi.String("AzureLinux"),
/// 						OsType:          pulumi.String("AzureLinux"),
/// 						OsVersion:       pulumi.String("3.0"),
/// 						VsrVersion:      pulumi.String("1.0.0"),
/// 					},
/// 					Target: pulumi.String(azurestackhci.ProvisioningOsTypeAzureLinux),
/// 				},
/// 				JobType: pulumi.String("DownloadOs"),
/// 			},
/// 			ResourceGroupName: pulumi.String("ArcInstance-rg"),
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
/// import com.pulumi.azurenative.azurestackhci.EdgeMachineJob;
/// import com.pulumi.azurenative.azurestackhci.EdgeMachineJobArgs;
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
///         var edgeMachineJob = new EdgeMachineJob("edgeMachineJob", EdgeMachineJobArgs.builder()
///             .edgeMachineName("machine1")
///             .jobsName("DownloadOs")
///             .properties(DownloadOsJobPropertiesArgs.builder()
///                 .deploymentMode("Deploy")
///                 .downloadRequest(DownloadRequestArgs.builder()
///                     .osProfile(DownloadOsProfileArgs.builder()
///                         .gpgPubKey("LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t")
///                         .imageHash("sha256:a8b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1")
///                         .osImageLocation("https://aka.ms/aep/azlinux3.0")
///                         .osName("AzureLinux")
///                         .osType("AzureLinux")
///                         .osVersion("3.0")
///                         .vsrVersion("1.0.0")
///                         .build())
///                     .target("AzureLinux")
///                     .build())
///                 .jobType("DownloadOs")
///                 .build())
///             .resourceGroupName("ArcInstance-rg")
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
/// const edgeMachineJob = new azure_native.azurestackhci.EdgeMachineJob("edgeMachineJob", {
///     edgeMachineName: "machine1",
///     jobsName: "DownloadOs",
///     properties: {
///         deploymentMode: azure_native.azurestackhci.DeploymentMode.Deploy,
///         downloadRequest: {
///             osProfile: {
///                 gpgPubKey: "LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t",
///                 imageHash: "sha256:a8b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1",
///                 osImageLocation: "https://aka.ms/aep/azlinux3.0",
///                 osName: "AzureLinux",
///                 osType: "AzureLinux",
///                 osVersion: "3.0",
///                 vsrVersion: "1.0.0",
///             },
///             target: azure_native.azurestackhci.ProvisioningOsType.AzureLinux,
///         },
///         jobType: "DownloadOs",
///     },
///     resourceGroupName: "ArcInstance-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// edge_machine_job = azure_native.azurestackhci.EdgeMachineJob("edgeMachineJob",
///     edge_machine_name="machine1",
///     jobs_name="DownloadOs",
///     properties={
///         "deployment_mode": azure_native.azurestackhci.DeploymentMode.DEPLOY,
///         "download_request": {
///             "os_profile": {
///                 "gpg_pub_key": "LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t",
///                 "image_hash": "sha256:a8b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1",
///                 "os_image_location": "https://aka.ms/aep/azlinux3.0",
///                 "os_name": "AzureLinux",
///                 "os_type": "AzureLinux",
///                 "os_version": "3.0",
///                 "vsr_version": "1.0.0",
///             },
///             "target": azure_native.azurestackhci.ProvisioningOsType.AZURE_LINUX,
///         },
///         "job_type": "DownloadOs",
///     },
///     resource_group_name="ArcInstance-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   edgeMachineJob:
///     type: azure-native:azurestackhci:EdgeMachineJob
///     properties:
///       edgeMachineName: machine1
///       jobsName: DownloadOs
///       properties:
///         deploymentMode: Deploy
///         downloadRequest:
///           osProfile:
///             gpgPubKey: LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t
///             imageHash: sha256:a8b1c2d3e4f5a6b7c8d9e0f1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d7e8f9a0b1
///             osImageLocation: https://aka.ms/aep/azlinux3.0
///             osName: AzureLinux
///             osType: AzureLinux
///             osVersion: '3.0'
///             vsrVersion: 1.0.0
///           target: AzureLinux
///         jobType: DownloadOs
///       resourceGroupName: ArcInstance-rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EdgeMachineJobs_CreateOrUpdate_ProvisionOs
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var edgeMachineJob = new AzureNative.AzureStackHCI.EdgeMachineJob("edgeMachineJob", new()
///     {
///         EdgeMachineName = "machine1",
///         JobsName = "ProvisionOs",
///         Properties = new AzureNative.AzureStackHCI.Inputs.ProvisionOsJobPropertiesArgs
///         {
///             DeploymentMode = AzureNative.AzureStackHCI.DeploymentMode.Deploy,
///             JobType = "ProvisionOs",
///             ProvisioningRequest = new AzureNative.AzureStackHCI.Inputs.ProvisioningRequestArgs
///             {
///                 CustomConfiguration = "eyJjdXN0b21Db25maWciOiAiZXhhbXBsZSBiYXNlNjQgZW5jb2RlZCBjb25maWcifQ==",
///                 DeviceConfiguration = new AzureNative.AzureStackHCI.Inputs.TargetDeviceConfigurationArgs
///                 {
///                     HostName = "634b9db8-83e1-46ed-b391-c1614e2d0097",
///                     Network = new AzureNative.AzureStackHCI.Inputs.NetworkConfigurationArgs
///                     {
///                         NetworkAdapters = new[]
///                         {
///                             new AzureNative.AzureStackHCI.Inputs.NetworkAdapterArgs
///                             {
///                                 DnsAddressArray = new[]
///                                 {
///                                     "8.8.8.8",
///                                 },
///                                 Gateway = "",
///                                 IpAddress = "",
///                                 IpAddressRange = new AzureNative.AzureStackHCI.Inputs.IpAddressRangeArgs
///                                 {
///                                     EndIp = "",
///                                     StartIp = "",
///                                 },
///                                 IpAssignmentType = AzureNative.AzureStackHCI.IpAssignmentType.Automatic,
///                                 SubnetMask = "",
///                                 VlanId = "0",
///                             },
///                         },
///                     },
///                     Storage = new AzureNative.AzureStackHCI.Inputs.StorageConfigurationArgs
///                     {
///                         PartitionSize = "30GB",
///                     },
///                     Time = new AzureNative.AzureStackHCI.Inputs.TimeConfigurationArgs
///                     {
///                         PrimaryTimeServer = "",
///                         SecondaryTimeServer = "",
///                         TimeZone = "UTC",
///                     },
///                     WebProxy = new AzureNative.AzureStackHCI.Inputs.WebProxyConfigurationArgs
///                     {
///                         BypassList = new() { },
///                         ConnectionUri = "https://microsoft.com/a",
///                         Port = "",
///                     },
///                 },
///                 OnboardingConfiguration = new AzureNative.AzureStackHCI.Inputs.OnboardingConfigurationArgs
///                 {
///                     ArcVirtualMachineId = "634b9db8-83e1-46ed-b391-c1614e2d0097",
///                     Location = "eastus",
///                     ResourceId = "/subscriptions/ff0aa6da-20f8-44fe-9aee-381c8e8a4aeb/resourceGroups/bhukumar-test-rg/providers/Microsoft.HybridCompute/machines/bkumar-t1",
///                     TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///                     Type = AzureNative.AzureStackHCI.OnboardingResourceType.HybridComputeMachine,
///                 },
///                 OsProfile = new AzureNative.AzureStackHCI.Inputs.OsProvisionProfileArgs
///                 {
///                     GpgPubKey = "LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t",
///                     ImageHash = "sha256:a1b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef123456",
///                     OperationType = AzureNative.AzureStackHCI.OSOperationType.Provision,
///                     OsImageLocation = "https://aka.ms/aep/azlinux3.0",
///                     OsName = "AzureLinux",
///                     OsType = "AzureLinux",
///                     OsVersion = "3.0",
///                     VsrVersion = "1.0.0",
///                 },
///                 Target = AzureNative.AzureStackHCI.ProvisioningOsType.AzureLinux,
///                 UserDetails = new[]
///                 {
///                     new AzureNative.AzureStackHCI.Inputs.UserDetailsArgs
///                     {
///                         SecretLocation = "https://bhukumar-test-kv.vault.azure.net/secrets/edgeuser/7b2d7db11bad4e1599cb6a0f4d2b2e00",
///                         SecretType = AzureNative.AzureStackHCI.SecretType.KeyVault,
///                         SshPubKey = new[]
///                         {
///                             "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7... edgeuser@example.com",
///                         },
///                         UserName = "edgeuser",
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "ArcInstance-rg",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewEdgeMachineJob(ctx, "edgeMachineJob", &azurestackhci.EdgeMachineJobArgs{
/// 			EdgeMachineName: pulumi.String("machine1"),
/// 			JobsName:        pulumi.String("ProvisionOs"),
/// 			Properties: &azurestackhci.ProvisionOsJobPropertiesArgs{
/// 				DeploymentMode: pulumi.String(azurestackhci.DeploymentModeDeploy),
/// 				JobType:        pulumi.String("ProvisionOs"),
/// 				ProvisioningRequest: &azurestackhci.ProvisioningRequestArgs{
/// 					CustomConfiguration: pulumi.String("eyJjdXN0b21Db25maWciOiAiZXhhbXBsZSBiYXNlNjQgZW5jb2RlZCBjb25maWcifQ=="),
/// 					DeviceConfiguration: &azurestackhci.TargetDeviceConfigurationArgs{
/// 						HostName: pulumi.String("634b9db8-83e1-46ed-b391-c1614e2d0097"),
/// 						Network: &azurestackhci.NetworkConfigurationArgs{
/// 							NetworkAdapters: azurestackhci.NetworkAdapterArray{
/// 								&azurestackhci.NetworkAdapterArgs{
/// 									DnsAddressArray: pulumi.StringArray{
/// 										pulumi.String("8.8.8.8"),
/// 									},
/// 									Gateway:   pulumi.String(""),
/// 									IpAddress: pulumi.String(""),
/// 									IpAddressRange: &azurestackhci.IpAddressRangeArgs{
/// 										EndIp:   pulumi.String(""),
/// 										StartIp: pulumi.String(""),
/// 									},
/// 									IpAssignmentType: pulumi.String(azurestackhci.IpAssignmentTypeAutomatic),
/// 									SubnetMask:       pulumi.String(""),
/// 									VlanId:           pulumi.String("0"),
/// 								},
/// 							},
/// 						},
/// 						Storage: &azurestackhci.StorageConfigurationArgs{
/// 							PartitionSize: pulumi.String("30GB"),
/// 						},
/// 						Time: &azurestackhci.TimeConfigurationArgs{
/// 							PrimaryTimeServer:   pulumi.String(""),
/// 							SecondaryTimeServer: pulumi.String(""),
/// 							TimeZone:            pulumi.String("UTC"),
/// 						},
/// 						WebProxy: &azurestackhci.WebProxyConfigurationArgs{
/// 							BypassList:    pulumi.StringArray{},
/// 							ConnectionUri: pulumi.String("https://microsoft.com/a"),
/// 							Port:          pulumi.String(""),
/// 						},
/// 					},
/// 					OnboardingConfiguration: &azurestackhci.OnboardingConfigurationArgs{
/// 						ArcVirtualMachineId: pulumi.String("634b9db8-83e1-46ed-b391-c1614e2d0097"),
/// 						Location:            pulumi.String("eastus"),
/// 						ResourceId:          pulumi.String("/subscriptions/ff0aa6da-20f8-44fe-9aee-381c8e8a4aeb/resourceGroups/bhukumar-test-rg/providers/Microsoft.HybridCompute/machines/bkumar-t1"),
/// 						TenantId:            pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 						Type:                pulumi.String(azurestackhci.OnboardingResourceTypeHybridComputeMachine),
/// 					},
/// 					OsProfile: &azurestackhci.OsProvisionProfileArgs{
/// 						GpgPubKey:       pulumi.String("LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t"),
/// 						ImageHash:       pulumi.String("sha256:a1b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef123456"),
/// 						OperationType:   pulumi.String(azurestackhci.OSOperationTypeProvision),
/// 						OsImageLocation: pulumi.String("https://aka.ms/aep/azlinux3.0"),
/// 						OsName:          pulumi.String("AzureLinux"),
/// 						OsType:          pulumi.String("AzureLinux"),
/// 						OsVersion:       pulumi.String("3.0"),
/// 						VsrVersion:      pulumi.String("1.0.0"),
/// 					},
/// 					Target: pulumi.String(azurestackhci.ProvisioningOsTypeAzureLinux),
/// 					UserDetails: azurestackhci.UserDetailsArray{
/// 						&azurestackhci.UserDetailsArgs{
/// 							SecretLocation: pulumi.String("https://bhukumar-test-kv.vault.azure.net/secrets/edgeuser/7b2d7db11bad4e1599cb6a0f4d2b2e00"),
/// 							SecretType:     pulumi.String(azurestackhci.SecretTypeKeyVault),
/// 							SshPubKey: pulumi.StringArray{
/// 								pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7... edgeuser@example.com"),
/// 							},
/// 							UserName: pulumi.String("edgeuser"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("ArcInstance-rg"),
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
/// import com.pulumi.azurenative.azurestackhci.EdgeMachineJob;
/// import com.pulumi.azurenative.azurestackhci.EdgeMachineJobArgs;
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
///         var edgeMachineJob = new EdgeMachineJob("edgeMachineJob", EdgeMachineJobArgs.builder()
///             .edgeMachineName("machine1")
///             .jobsName("ProvisionOs")
///             .properties(ProvisionOsJobPropertiesArgs.builder()
///                 .deploymentMode("Deploy")
///                 .jobType("ProvisionOs")
///                 .provisioningRequest(ProvisioningRequestArgs.builder()
///                     .customConfiguration("eyJjdXN0b21Db25maWciOiAiZXhhbXBsZSBiYXNlNjQgZW5jb2RlZCBjb25maWcifQ==")
///                     .deviceConfiguration(TargetDeviceConfigurationArgs.builder()
///                         .hostName("634b9db8-83e1-46ed-b391-c1614e2d0097")
///                         .network(NetworkConfigurationArgs.builder()
///                             .networkAdapters(NetworkAdapterArgs.builder()
///                                 .dnsAddressArray("8.8.8.8")
///                                 .gateway("")
///                                 .ipAddress("")
///                                 .ipAddressRange(IpAddressRangeArgs.builder()
///                                     .endIp("")
///                                     .startIp("")
///                                     .build())
///                                 .ipAssignmentType("Automatic")
///                                 .subnetMask("")
///                                 .vlanId("0")
///                                 .build())
///                             .build())
///                         .storage(StorageConfigurationArgs.builder()
///                             .partitionSize("30GB")
///                             .build())
///                         .time(TimeConfigurationArgs.builder()
///                             .primaryTimeServer("")
///                             .secondaryTimeServer("")
///                             .timeZone("UTC")
///                             .build())
///                         .webProxy(WebProxyConfigurationArgs.builder()
///                             .bypassList()
///                             .connectionUri("https://microsoft.com/a")
///                             .port("")
///                             .build())
///                         .build())
///                     .onboardingConfiguration(OnboardingConfigurationArgs.builder()
///                         .arcVirtualMachineId("634b9db8-83e1-46ed-b391-c1614e2d0097")
///                         .location("eastus")
///                         .resourceId("/subscriptions/ff0aa6da-20f8-44fe-9aee-381c8e8a4aeb/resourceGroups/bhukumar-test-rg/providers/Microsoft.HybridCompute/machines/bkumar-t1")
///                         .tenantId("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                         .type("HybridComputeMachine")
///                         .build())
///                     .osProfile(OsProvisionProfileArgs.builder()
///                         .gpgPubKey("LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t")
///                         .imageHash("sha256:a1b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef123456")
///                         .operationType("Provision")
///                         .osImageLocation("https://aka.ms/aep/azlinux3.0")
///                         .osName("AzureLinux")
///                         .osType("AzureLinux")
///                         .osVersion("3.0")
///                         .vsrVersion("1.0.0")
///                         .build())
///                     .target("AzureLinux")
///                     .userDetails(UserDetailsArgs.builder()
///                         .secretLocation("https://bhukumar-test-kv.vault.azure.net/secrets/edgeuser/7b2d7db11bad4e1599cb6a0f4d2b2e00")
///                         .secretType("KeyVault")
///                         .sshPubKey("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7... edgeuser@example.com")
///                         .userName("edgeuser")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("ArcInstance-rg")
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
/// const edgeMachineJob = new azure_native.azurestackhci.EdgeMachineJob("edgeMachineJob", {
///     edgeMachineName: "machine1",
///     jobsName: "ProvisionOs",
///     properties: {
///         deploymentMode: azure_native.azurestackhci.DeploymentMode.Deploy,
///         jobType: "ProvisionOs",
///         provisioningRequest: {
///             customConfiguration: "eyJjdXN0b21Db25maWciOiAiZXhhbXBsZSBiYXNlNjQgZW5jb2RlZCBjb25maWcifQ==",
///             deviceConfiguration: {
///                 hostName: "634b9db8-83e1-46ed-b391-c1614e2d0097",
///                 network: {
///                     networkAdapters: [{
///                         dnsAddressArray: ["8.8.8.8"],
///                         gateway: "",
///                         ipAddress: "",
///                         ipAddressRange: {
///                             endIp: "",
///                             startIp: "",
///                         },
///                         ipAssignmentType: azure_native.azurestackhci.IpAssignmentType.Automatic,
///                         subnetMask: "",
///                         vlanId: "0",
///                     }],
///                 },
///                 storage: {
///                     partitionSize: "30GB",
///                 },
///                 time: {
///                     primaryTimeServer: "",
///                     secondaryTimeServer: "",
///                     timeZone: "UTC",
///                 },
///                 webProxy: {
///                     bypassList: [],
///                     connectionUri: "https://microsoft.com/a",
///                     port: "",
///                 },
///             },
///             onboardingConfiguration: {
///                 arcVirtualMachineId: "634b9db8-83e1-46ed-b391-c1614e2d0097",
///                 location: "eastus",
///                 resourceId: "/subscriptions/ff0aa6da-20f8-44fe-9aee-381c8e8a4aeb/resourceGroups/bhukumar-test-rg/providers/Microsoft.HybridCompute/machines/bkumar-t1",
///                 tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 type: azure_native.azurestackhci.OnboardingResourceType.HybridComputeMachine,
///             },
///             osProfile: {
///                 gpgPubKey: "LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t",
///                 imageHash: "sha256:a1b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef123456",
///                 operationType: azure_native.azurestackhci.OSOperationType.Provision,
///                 osImageLocation: "https://aka.ms/aep/azlinux3.0",
///                 osName: "AzureLinux",
///                 osType: "AzureLinux",
///                 osVersion: "3.0",
///                 vsrVersion: "1.0.0",
///             },
///             target: azure_native.azurestackhci.ProvisioningOsType.AzureLinux,
///             userDetails: [{
///                 secretLocation: "https://bhukumar-test-kv.vault.azure.net/secrets/edgeuser/7b2d7db11bad4e1599cb6a0f4d2b2e00",
///                 secretType: azure_native.azurestackhci.SecretType.KeyVault,
///                 sshPubKey: ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7... edgeuser@example.com"],
///                 userName: "edgeuser",
///             }],
///         },
///     },
///     resourceGroupName: "ArcInstance-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// edge_machine_job = azure_native.azurestackhci.EdgeMachineJob("edgeMachineJob",
///     edge_machine_name="machine1",
///     jobs_name="ProvisionOs",
///     properties={
///         "deployment_mode": azure_native.azurestackhci.DeploymentMode.DEPLOY,
///         "job_type": "ProvisionOs",
///         "provisioning_request": {
///             "custom_configuration": "eyJjdXN0b21Db25maWciOiAiZXhhbXBsZSBiYXNlNjQgZW5jb2RlZCBjb25maWcifQ==",
///             "device_configuration": {
///                 "host_name": "634b9db8-83e1-46ed-b391-c1614e2d0097",
///                 "network": {
///                     "network_adapters": [{
///                         "dns_address_array": ["8.8.8.8"],
///                         "gateway": "",
///                         "ip_address": "",
///                         "ip_address_range": {
///                             "end_ip": "",
///                             "start_ip": "",
///                         },
///                         "ip_assignment_type": azure_native.azurestackhci.IpAssignmentType.AUTOMATIC,
///                         "subnet_mask": "",
///                         "vlan_id": "0",
///                     }],
///                 },
///                 "storage": {
///                     "partition_size": "30GB",
///                 },
///                 "time": {
///                     "primary_time_server": "",
///                     "secondary_time_server": "",
///                     "time_zone": "UTC",
///                 },
///                 "web_proxy": {
///                     "bypass_list": [],
///                     "connection_uri": "https://microsoft.com/a",
///                     "port": "",
///                 },
///             },
///             "onboarding_configuration": {
///                 "arc_virtual_machine_id": "634b9db8-83e1-46ed-b391-c1614e2d0097",
///                 "location": "eastus",
///                 "resource_id": "/subscriptions/ff0aa6da-20f8-44fe-9aee-381c8e8a4aeb/resourceGroups/bhukumar-test-rg/providers/Microsoft.HybridCompute/machines/bkumar-t1",
///                 "tenant_id": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 "type": azure_native.azurestackhci.OnboardingResourceType.HYBRID_COMPUTE_MACHINE,
///             },
///             "os_profile": {
///                 "gpg_pub_key": "LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t",
///                 "image_hash": "sha256:a1b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef123456",
///                 "operation_type": azure_native.azurestackhci.OSOperationType.PROVISION,
///                 "os_image_location": "https://aka.ms/aep/azlinux3.0",
///                 "os_name": "AzureLinux",
///                 "os_type": "AzureLinux",
///                 "os_version": "3.0",
///                 "vsr_version": "1.0.0",
///             },
///             "target": azure_native.azurestackhci.ProvisioningOsType.AZURE_LINUX,
///             "user_details": [{
///                 "secret_location": "https://bhukumar-test-kv.vault.azure.net/secrets/edgeuser/7b2d7db11bad4e1599cb6a0f4d2b2e00",
///                 "secret_type": azure_native.azurestackhci.SecretType.KEY_VAULT,
///                 "ssh_pub_key": ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7... edgeuser@example.com"],
///                 "user_name": "edgeuser",
///             }],
///         },
///     },
///     resource_group_name="ArcInstance-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   edgeMachineJob:
///     type: azure-native:azurestackhci:EdgeMachineJob
///     properties:
///       edgeMachineName: machine1
///       jobsName: ProvisionOs
///       properties:
///         deploymentMode: Deploy
///         jobType: ProvisionOs
///         provisioningRequest:
///           customConfiguration: eyJjdXN0b21Db25maWciOiAiZXhhbXBsZSBiYXNlNjQgZW5jb2RlZCBjb25maWcifQ==
///           deviceConfiguration:
///             hostName: 634b9db8-83e1-46ed-b391-c1614e2d0097
///             network:
///               networkAdapters:
///                 - dnsAddressArray:
///                     - 8.8.8.8
///                   gateway: ""
///                   ipAddress: ""
///                   ipAddressRange:
///                     endIp: ""
///                     startIp: ""
///                   ipAssignmentType: Automatic
///                   subnetMask: ""
///                   vlanId: '0'
///             storage:
///               partitionSize: 30GB
///             time:
///               primaryTimeServer: ""
///               secondaryTimeServer: ""
///               timeZone: UTC
///             webProxy:
///               bypassList: []
///               connectionUri: https://microsoft.com/a
///               port: ""
///           onboardingConfiguration:
///             arcVirtualMachineId: 634b9db8-83e1-46ed-b391-c1614e2d0097
///             location: eastus
///             resourceId: /subscriptions/ff0aa6da-20f8-44fe-9aee-381c8e8a4aeb/resourceGroups/bhukumar-test-rg/providers/Microsoft.HybridCompute/machines/bkumar-t1
///             tenantId: 72f988bf-86f1-41af-91ab-2d7cd011db47
///             type: HybridComputeMachine
///           osProfile:
///             gpgPubKey: LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t
///             imageHash: sha256:a1b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef123456
///             operationType: Provision
///             osImageLocation: https://aka.ms/aep/azlinux3.0
///             osName: AzureLinux
///             osType: AzureLinux
///             osVersion: '3.0'
///             vsrVersion: 1.0.0
///           target: AzureLinux
///           userDetails:
///             - secretLocation: https://bhukumar-test-kv.vault.azure.net/secrets/edgeuser/7b2d7db11bad4e1599cb6a0f4d2b2e00
///               secretType: KeyVault
///               sshPubKey:
///                 - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7... edgeuser@example.com
///               userName: edgeuser
///       resourceGroupName: ArcInstance-rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EdgeMachineJobs_CreateOrUpdate_RemoteSupport
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var edgeMachineJob = new AzureNative.AzureStackHCI.EdgeMachineJob("edgeMachineJob", new()
///     {
///         EdgeMachineName = "machine1",
///         JobsName = "RemoteSupport",
///         Properties = new AzureNative.AzureStackHCI.Inputs.EdgeMachineRemoteSupportJobPropertiesArgs
///         {
///             AccessLevel = AzureNative.AzureStackHCI.RemoteSupportAccessLevel.Diagnostics,
///             ExpirationTimestamp = "2024-01-29T10:43:27.9471574Z",
///             JobType = "RemoteSupport",
///             Type = AzureNative.AzureStackHCI.RemoteSupportType.Enable,
///         },
///         ResourceGroupName = "ArcInstance-rg",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewEdgeMachineJob(ctx, "edgeMachineJob", &azurestackhci.EdgeMachineJobArgs{
/// 			EdgeMachineName: pulumi.String("machine1"),
/// 			JobsName:        pulumi.String("RemoteSupport"),
/// 			Properties: &azurestackhci.EdgeMachineRemoteSupportJobPropertiesArgs{
/// 				AccessLevel:         pulumi.String(azurestackhci.RemoteSupportAccessLevelDiagnostics),
/// 				ExpirationTimestamp: pulumi.String("2024-01-29T10:43:27.9471574Z"),
/// 				JobType:             pulumi.String("RemoteSupport"),
/// 				Type:                pulumi.String(azurestackhci.RemoteSupportTypeEnable),
/// 			},
/// 			ResourceGroupName: pulumi.String("ArcInstance-rg"),
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
/// import com.pulumi.azurenative.azurestackhci.EdgeMachineJob;
/// import com.pulumi.azurenative.azurestackhci.EdgeMachineJobArgs;
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
///         var edgeMachineJob = new EdgeMachineJob("edgeMachineJob", EdgeMachineJobArgs.builder()
///             .edgeMachineName("machine1")
///             .jobsName("RemoteSupport")
///             .properties(EdgeMachineRemoteSupportJobPropertiesArgs.builder()
///                 .accessLevel("Diagnostics")
///                 .expirationTimestamp("2024-01-29T10:43:27.9471574Z")
///                 .jobType("RemoteSupport")
///                 .type("Enable")
///                 .build())
///             .resourceGroupName("ArcInstance-rg")
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
/// const edgeMachineJob = new azure_native.azurestackhci.EdgeMachineJob("edgeMachineJob", {
///     edgeMachineName: "machine1",
///     jobsName: "RemoteSupport",
///     properties: {
///         accessLevel: azure_native.azurestackhci.RemoteSupportAccessLevel.Diagnostics,
///         expirationTimestamp: "2024-01-29T10:43:27.9471574Z",
///         jobType: "RemoteSupport",
///         type: azure_native.azurestackhci.RemoteSupportType.Enable,
///     },
///     resourceGroupName: "ArcInstance-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// edge_machine_job = azure_native.azurestackhci.EdgeMachineJob("edgeMachineJob",
///     edge_machine_name="machine1",
///     jobs_name="RemoteSupport",
///     properties={
///         "access_level": azure_native.azurestackhci.RemoteSupportAccessLevel.DIAGNOSTICS,
///         "expiration_timestamp": "2024-01-29T10:43:27.9471574Z",
///         "job_type": "RemoteSupport",
///         "type": azure_native.azurestackhci.RemoteSupportType.ENABLE,
///     },
///     resource_group_name="ArcInstance-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   edgeMachineJob:
///     type: azure-native:azurestackhci:EdgeMachineJob
///     properties:
///       edgeMachineName: machine1
///       jobsName: RemoteSupport
///       properties:
///         accessLevel: Diagnostics
///         expirationTimestamp: 2024-01-29T10:43:27.9471574Z
///         jobType: RemoteSupport
///         type: Enable
///       resourceGroupName: ArcInstance-rg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EdgeMachineJobs_CreateOrUpdate_UpdateOs
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var edgeMachineJob = new AzureNative.AzureStackHCI.EdgeMachineJob("edgeMachineJob", new()
///     {
///         EdgeMachineName = "machine1",
///         JobsName = "UpdateOs",
///         Properties = new AzureNative.AzureStackHCI.Inputs.ProvisionOsJobPropertiesArgs
///         {
///             DeploymentMode = AzureNative.AzureStackHCI.DeploymentMode.Deploy,
///             JobType = "ProvisionOs",
///             ProvisioningRequest = new AzureNative.AzureStackHCI.Inputs.ProvisioningRequestArgs
///             {
///                 CustomConfiguration = "eyJjdXN0b21Db25maWciOiAiZXhhbXBsZSBiYXNlNjQgZW5jb2RlZCBjb25maWcifQ==",
///                 DeviceConfiguration = new AzureNative.AzureStackHCI.Inputs.TargetDeviceConfigurationArgs
///                 {
///                     HostName = "634b9db8-83e1-46ed-b391-c1614e2d0097",
///                     Network = new AzureNative.AzureStackHCI.Inputs.NetworkConfigurationArgs
///                     {
///                         NetworkAdapters = new[]
///                         {
///                             new AzureNative.AzureStackHCI.Inputs.NetworkAdapterArgs
///                             {
///                                 DnsAddressArray = new[]
///                                 {
///                                     "8.8.8.8",
///                                 },
///                                 Gateway = "",
///                                 IpAddress = "",
///                                 IpAddressRange = new AzureNative.AzureStackHCI.Inputs.IpAddressRangeArgs
///                                 {
///                                     EndIp = "",
///                                     StartIp = "",
///                                 },
///                                 IpAssignmentType = AzureNative.AzureStackHCI.IpAssignmentType.Automatic,
///                                 SubnetMask = "",
///                                 VlanId = "0",
///                             },
///                         },
///                     },
///                     Time = new AzureNative.AzureStackHCI.Inputs.TimeConfigurationArgs
///                     {
///                         PrimaryTimeServer = "",
///                         SecondaryTimeServer = "",
///                         TimeZone = "UTC",
///                     },
///                     WebProxy = new AzureNative.AzureStackHCI.Inputs.WebProxyConfigurationArgs
///                     {
///                         BypassList = new() { },
///                         ConnectionUri = "https://microsoft.com/a",
///                         Port = "",
///                     },
///                 },
///                 OnboardingConfiguration = new AzureNative.AzureStackHCI.Inputs.OnboardingConfigurationArgs
///                 {
///                     ArcVirtualMachineId = "634b9db8-83e1-46ed-b391-c1614e2d0097",
///                     Location = "eastus",
///                     ResourceId = "/subscriptions/ff0aa6da-20f8-44fe-9aee-381c8e8a4aeb/resourceGroups/bhukumar-test-rg/providers/Microsoft.HybridCompute/machines/bkumar-t1",
///                     TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///                     Type = AzureNative.AzureStackHCI.OnboardingResourceType.HybridComputeMachine,
///                 },
///                 OsProfile = new AzureNative.AzureStackHCI.Inputs.OsProvisionProfileArgs
///                 {
///                     GpgPubKey = "LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t",
///                     ImageHash = "sha256:b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef12345678",
///                     OperationType = AzureNative.AzureStackHCI.OSOperationType.Update,
///                     OsImageLocation = "https://aka.ms/aep/azlinux3.1",
///                     OsName = "AzureLinux",
///                     OsType = "AzureLinux",
///                     OsVersion = "3.1",
///                     VsrVersion = "1.1.0",
///                 },
///                 Target = AzureNative.AzureStackHCI.ProvisioningOsType.AzureLinux,
///                 UserDetails = new[]
///                 {
///                     new AzureNative.AzureStackHCI.Inputs.UserDetailsArgs
///                     {
///                         SecretLocation = "https://bhukumar-test-kv.vault.azure.net/secrets/edgeuser/7b2d7db11bad4e1599cb6a0f4d2b2e00",
///                         SecretType = AzureNative.AzureStackHCI.SecretType.KeyVault,
///                         SshPubKey = new[]
///                         {
///                             "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7... edgeuser@example.com",
///                         },
///                         UserName = "edgeuser",
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "ArcInstance-rg",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewEdgeMachineJob(ctx, "edgeMachineJob", &azurestackhci.EdgeMachineJobArgs{
/// 			EdgeMachineName: pulumi.String("machine1"),
/// 			JobsName:        pulumi.String("UpdateOs"),
/// 			Properties: &azurestackhci.ProvisionOsJobPropertiesArgs{
/// 				DeploymentMode: pulumi.String(azurestackhci.DeploymentModeDeploy),
/// 				JobType:        pulumi.String("ProvisionOs"),
/// 				ProvisioningRequest: &azurestackhci.ProvisioningRequestArgs{
/// 					CustomConfiguration: pulumi.String("eyJjdXN0b21Db25maWciOiAiZXhhbXBsZSBiYXNlNjQgZW5jb2RlZCBjb25maWcifQ=="),
/// 					DeviceConfiguration: &azurestackhci.TargetDeviceConfigurationArgs{
/// 						HostName: pulumi.String("634b9db8-83e1-46ed-b391-c1614e2d0097"),
/// 						Network: &azurestackhci.NetworkConfigurationArgs{
/// 							NetworkAdapters: azurestackhci.NetworkAdapterArray{
/// 								&azurestackhci.NetworkAdapterArgs{
/// 									DnsAddressArray: pulumi.StringArray{
/// 										pulumi.String("8.8.8.8"),
/// 									},
/// 									Gateway:   pulumi.String(""),
/// 									IpAddress: pulumi.String(""),
/// 									IpAddressRange: &azurestackhci.IpAddressRangeArgs{
/// 										EndIp:   pulumi.String(""),
/// 										StartIp: pulumi.String(""),
/// 									},
/// 									IpAssignmentType: pulumi.String(azurestackhci.IpAssignmentTypeAutomatic),
/// 									SubnetMask:       pulumi.String(""),
/// 									VlanId:           pulumi.String("0"),
/// 								},
/// 							},
/// 						},
/// 						Time: &azurestackhci.TimeConfigurationArgs{
/// 							PrimaryTimeServer:   pulumi.String(""),
/// 							SecondaryTimeServer: pulumi.String(""),
/// 							TimeZone:            pulumi.String("UTC"),
/// 						},
/// 						WebProxy: &azurestackhci.WebProxyConfigurationArgs{
/// 							BypassList:    pulumi.StringArray{},
/// 							ConnectionUri: pulumi.String("https://microsoft.com/a"),
/// 							Port:          pulumi.String(""),
/// 						},
/// 					},
/// 					OnboardingConfiguration: &azurestackhci.OnboardingConfigurationArgs{
/// 						ArcVirtualMachineId: pulumi.String("634b9db8-83e1-46ed-b391-c1614e2d0097"),
/// 						Location:            pulumi.String("eastus"),
/// 						ResourceId:          pulumi.String("/subscriptions/ff0aa6da-20f8-44fe-9aee-381c8e8a4aeb/resourceGroups/bhukumar-test-rg/providers/Microsoft.HybridCompute/machines/bkumar-t1"),
/// 						TenantId:            pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 						Type:                pulumi.String(azurestackhci.OnboardingResourceTypeHybridComputeMachine),
/// 					},
/// 					OsProfile: &azurestackhci.OsProvisionProfileArgs{
/// 						GpgPubKey:       pulumi.String("LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t"),
/// 						ImageHash:       pulumi.String("sha256:b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef12345678"),
/// 						OperationType:   pulumi.String(azurestackhci.OSOperationTypeUpdate),
/// 						OsImageLocation: pulumi.String("https://aka.ms/aep/azlinux3.1"),
/// 						OsName:          pulumi.String("AzureLinux"),
/// 						OsType:          pulumi.String("AzureLinux"),
/// 						OsVersion:       pulumi.String("3.1"),
/// 						VsrVersion:      pulumi.String("1.1.0"),
/// 					},
/// 					Target: pulumi.String(azurestackhci.ProvisioningOsTypeAzureLinux),
/// 					UserDetails: azurestackhci.UserDetailsArray{
/// 						&azurestackhci.UserDetailsArgs{
/// 							SecretLocation: pulumi.String("https://bhukumar-test-kv.vault.azure.net/secrets/edgeuser/7b2d7db11bad4e1599cb6a0f4d2b2e00"),
/// 							SecretType:     pulumi.String(azurestackhci.SecretTypeKeyVault),
/// 							SshPubKey: pulumi.StringArray{
/// 								pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7... edgeuser@example.com"),
/// 							},
/// 							UserName: pulumi.String("edgeuser"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("ArcInstance-rg"),
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
/// import com.pulumi.azurenative.azurestackhci.EdgeMachineJob;
/// import com.pulumi.azurenative.azurestackhci.EdgeMachineJobArgs;
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
///         var edgeMachineJob = new EdgeMachineJob("edgeMachineJob", EdgeMachineJobArgs.builder()
///             .edgeMachineName("machine1")
///             .jobsName("UpdateOs")
///             .properties(ProvisionOsJobPropertiesArgs.builder()
///                 .deploymentMode("Deploy")
///                 .jobType("ProvisionOs")
///                 .provisioningRequest(ProvisioningRequestArgs.builder()
///                     .customConfiguration("eyJjdXN0b21Db25maWciOiAiZXhhbXBsZSBiYXNlNjQgZW5jb2RlZCBjb25maWcifQ==")
///                     .deviceConfiguration(TargetDeviceConfigurationArgs.builder()
///                         .hostName("634b9db8-83e1-46ed-b391-c1614e2d0097")
///                         .network(NetworkConfigurationArgs.builder()
///                             .networkAdapters(NetworkAdapterArgs.builder()
///                                 .dnsAddressArray("8.8.8.8")
///                                 .gateway("")
///                                 .ipAddress("")
///                                 .ipAddressRange(IpAddressRangeArgs.builder()
///                                     .endIp("")
///                                     .startIp("")
///                                     .build())
///                                 .ipAssignmentType("Automatic")
///                                 .subnetMask("")
///                                 .vlanId("0")
///                                 .build())
///                             .build())
///                         .time(TimeConfigurationArgs.builder()
///                             .primaryTimeServer("")
///                             .secondaryTimeServer("")
///                             .timeZone("UTC")
///                             .build())
///                         .webProxy(WebProxyConfigurationArgs.builder()
///                             .bypassList()
///                             .connectionUri("https://microsoft.com/a")
///                             .port("")
///                             .build())
///                         .build())
///                     .onboardingConfiguration(OnboardingConfigurationArgs.builder()
///                         .arcVirtualMachineId("634b9db8-83e1-46ed-b391-c1614e2d0097")
///                         .location("eastus")
///                         .resourceId("/subscriptions/ff0aa6da-20f8-44fe-9aee-381c8e8a4aeb/resourceGroups/bhukumar-test-rg/providers/Microsoft.HybridCompute/machines/bkumar-t1")
///                         .tenantId("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                         .type("HybridComputeMachine")
///                         .build())
///                     .osProfile(OsProvisionProfileArgs.builder()
///                         .gpgPubKey("LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t")
///                         .imageHash("sha256:b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef12345678")
///                         .operationType("Update")
///                         .osImageLocation("https://aka.ms/aep/azlinux3.1")
///                         .osName("AzureLinux")
///                         .osType("AzureLinux")
///                         .osVersion("3.1")
///                         .vsrVersion("1.1.0")
///                         .build())
///                     .target("AzureLinux")
///                     .userDetails(UserDetailsArgs.builder()
///                         .secretLocation("https://bhukumar-test-kv.vault.azure.net/secrets/edgeuser/7b2d7db11bad4e1599cb6a0f4d2b2e00")
///                         .secretType("KeyVault")
///                         .sshPubKey("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7... edgeuser@example.com")
///                         .userName("edgeuser")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("ArcInstance-rg")
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
/// const edgeMachineJob = new azure_native.azurestackhci.EdgeMachineJob("edgeMachineJob", {
///     edgeMachineName: "machine1",
///     jobsName: "UpdateOs",
///     properties: {
///         deploymentMode: azure_native.azurestackhci.DeploymentMode.Deploy,
///         jobType: "ProvisionOs",
///         provisioningRequest: {
///             customConfiguration: "eyJjdXN0b21Db25maWciOiAiZXhhbXBsZSBiYXNlNjQgZW5jb2RlZCBjb25maWcifQ==",
///             deviceConfiguration: {
///                 hostName: "634b9db8-83e1-46ed-b391-c1614e2d0097",
///                 network: {
///                     networkAdapters: [{
///                         dnsAddressArray: ["8.8.8.8"],
///                         gateway: "",
///                         ipAddress: "",
///                         ipAddressRange: {
///                             endIp: "",
///                             startIp: "",
///                         },
///                         ipAssignmentType: azure_native.azurestackhci.IpAssignmentType.Automatic,
///                         subnetMask: "",
///                         vlanId: "0",
///                     }],
///                 },
///                 time: {
///                     primaryTimeServer: "",
///                     secondaryTimeServer: "",
///                     timeZone: "UTC",
///                 },
///                 webProxy: {
///                     bypassList: [],
///                     connectionUri: "https://microsoft.com/a",
///                     port: "",
///                 },
///             },
///             onboardingConfiguration: {
///                 arcVirtualMachineId: "634b9db8-83e1-46ed-b391-c1614e2d0097",
///                 location: "eastus",
///                 resourceId: "/subscriptions/ff0aa6da-20f8-44fe-9aee-381c8e8a4aeb/resourceGroups/bhukumar-test-rg/providers/Microsoft.HybridCompute/machines/bkumar-t1",
///                 tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 type: azure_native.azurestackhci.OnboardingResourceType.HybridComputeMachine,
///             },
///             osProfile: {
///                 gpgPubKey: "LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t",
///                 imageHash: "sha256:b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef12345678",
///                 operationType: azure_native.azurestackhci.OSOperationType.Update,
///                 osImageLocation: "https://aka.ms/aep/azlinux3.1",
///                 osName: "AzureLinux",
///                 osType: "AzureLinux",
///                 osVersion: "3.1",
///                 vsrVersion: "1.1.0",
///             },
///             target: azure_native.azurestackhci.ProvisioningOsType.AzureLinux,
///             userDetails: [{
///                 secretLocation: "https://bhukumar-test-kv.vault.azure.net/secrets/edgeuser/7b2d7db11bad4e1599cb6a0f4d2b2e00",
///                 secretType: azure_native.azurestackhci.SecretType.KeyVault,
///                 sshPubKey: ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7... edgeuser@example.com"],
///                 userName: "edgeuser",
///             }],
///         },
///     },
///     resourceGroupName: "ArcInstance-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// edge_machine_job = azure_native.azurestackhci.EdgeMachineJob("edgeMachineJob",
///     edge_machine_name="machine1",
///     jobs_name="UpdateOs",
///     properties={
///         "deployment_mode": azure_native.azurestackhci.DeploymentMode.DEPLOY,
///         "job_type": "ProvisionOs",
///         "provisioning_request": {
///             "custom_configuration": "eyJjdXN0b21Db25maWciOiAiZXhhbXBsZSBiYXNlNjQgZW5jb2RlZCBjb25maWcifQ==",
///             "device_configuration": {
///                 "host_name": "634b9db8-83e1-46ed-b391-c1614e2d0097",
///                 "network": {
///                     "network_adapters": [{
///                         "dns_address_array": ["8.8.8.8"],
///                         "gateway": "",
///                         "ip_address": "",
///                         "ip_address_range": {
///                             "end_ip": "",
///                             "start_ip": "",
///                         },
///                         "ip_assignment_type": azure_native.azurestackhci.IpAssignmentType.AUTOMATIC,
///                         "subnet_mask": "",
///                         "vlan_id": "0",
///                     }],
///                 },
///                 "time": {
///                     "primary_time_server": "",
///                     "secondary_time_server": "",
///                     "time_zone": "UTC",
///                 },
///                 "web_proxy": {
///                     "bypass_list": [],
///                     "connection_uri": "https://microsoft.com/a",
///                     "port": "",
///                 },
///             },
///             "onboarding_configuration": {
///                 "arc_virtual_machine_id": "634b9db8-83e1-46ed-b391-c1614e2d0097",
///                 "location": "eastus",
///                 "resource_id": "/subscriptions/ff0aa6da-20f8-44fe-9aee-381c8e8a4aeb/resourceGroups/bhukumar-test-rg/providers/Microsoft.HybridCompute/machines/bkumar-t1",
///                 "tenant_id": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 "type": azure_native.azurestackhci.OnboardingResourceType.HYBRID_COMPUTE_MACHINE,
///             },
///             "os_profile": {
///                 "gpg_pub_key": "LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t",
///                 "image_hash": "sha256:b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef12345678",
///                 "operation_type": azure_native.azurestackhci.OSOperationType.UPDATE,
///                 "os_image_location": "https://aka.ms/aep/azlinux3.1",
///                 "os_name": "AzureLinux",
///                 "os_type": "AzureLinux",
///                 "os_version": "3.1",
///                 "vsr_version": "1.1.0",
///             },
///             "target": azure_native.azurestackhci.ProvisioningOsType.AZURE_LINUX,
///             "user_details": [{
///                 "secret_location": "https://bhukumar-test-kv.vault.azure.net/secrets/edgeuser/7b2d7db11bad4e1599cb6a0f4d2b2e00",
///                 "secret_type": azure_native.azurestackhci.SecretType.KEY_VAULT,
///                 "ssh_pub_key": ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7... edgeuser@example.com"],
///                 "user_name": "edgeuser",
///             }],
///         },
///     },
///     resource_group_name="ArcInstance-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   edgeMachineJob:
///     type: azure-native:azurestackhci:EdgeMachineJob
///     properties:
///       edgeMachineName: machine1
///       jobsName: UpdateOs
///       properties:
///         deploymentMode: Deploy
///         jobType: ProvisionOs
///         provisioningRequest:
///           customConfiguration: eyJjdXN0b21Db25maWciOiAiZXhhbXBsZSBiYXNlNjQgZW5jb2RlZCBjb25maWcifQ==
///           deviceConfiguration:
///             hostName: 634b9db8-83e1-46ed-b391-c1614e2d0097
///             network:
///               networkAdapters:
///                 - dnsAddressArray:
///                     - 8.8.8.8
///                   gateway: ""
///                   ipAddress: ""
///                   ipAddressRange:
///                     endIp: ""
///                     startIp: ""
///                   ipAssignmentType: Automatic
///                   subnetMask: ""
///                   vlanId: '0'
///             time:
///               primaryTimeServer: ""
///               secondaryTimeServer: ""
///               timeZone: UTC
///             webProxy:
///               bypassList: []
///               connectionUri: https://microsoft.com/a
///               port: ""
///           onboardingConfiguration:
///             arcVirtualMachineId: 634b9db8-83e1-46ed-b391-c1614e2d0097
///             location: eastus
///             resourceId: /subscriptions/ff0aa6da-20f8-44fe-9aee-381c8e8a4aeb/resourceGroups/bhukumar-test-rg/providers/Microsoft.HybridCompute/machines/bkumar-t1
///             tenantId: 72f988bf-86f1-41af-91ab-2d7cd011db47
///             type: HybridComputeMachine
///           osProfile:
///             gpgPubKey: LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tXG5WZXJzaW9uOiBHbnVQRyB2MlxuXG5tUUVOQkZYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYXG4tLS0tLUVORCBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0t
///             imageHash: sha256:b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef12345678
///             operationType: Update
///             osImageLocation: https://aka.ms/aep/azlinux3.1
///             osName: AzureLinux
///             osType: AzureLinux
///             osVersion: '3.1'
///             vsrVersion: 1.1.0
///           target: AzureLinux
///           userDetails:
///             - secretLocation: https://bhukumar-test-kv.vault.azure.net/secrets/edgeuser/7b2d7db11bad4e1599cb6a0f4d2b2e00
///               secretType: KeyVault
///               sshPubKey:
///                 - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7... edgeuser@example.com
///               userName: edgeuser
///       resourceGroupName: ArcInstance-rg
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
/// $ pulumi import azure-native:azurestackhci:EdgeMachineJob UpdateOs /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/edgeMachines/{edgeMachineName}/jobs/{jobsName}
/// ```
class EdgeMachineJob extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<DownloadOsJobPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EdgeMachineJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EdgeMachineJob]. {@macro pulumi_azurestackhci_edge_machine_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EdgeMachineJob(
    String name, {
    EdgeMachineJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azurestackhci:EdgeMachineJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DownloadOsJobPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
