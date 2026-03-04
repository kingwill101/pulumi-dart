import 'package:pulumi/pulumi.dart' as pulumi;
import 'confidential_compute_properties_response.dart';
import 'container_group_args.dart';
import 'container_group_diagnostics_response.dart';
import 'container_group_identity_response.dart';
import 'container_group_profile_reference_definition_response.dart';
import 'container_group_properties_response_instance_view.dart';
import 'dns_configuration_response.dart';
import 'encryption_properties_response.dart';
import 'ip_address_response.dart';
import 'standby_pool_profile_definition_response.dart';

/// A container group.
///
/// Uses Azure REST API version 2024-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2024-09-01-preview, 2024-10-01-preview, 2024-11-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerinstance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfidentialContainerGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerGroup = new AzureNative.ContainerInstance.ContainerGroup("containerGroup", new()
///     {
///         ConfidentialComputeProperties = new AzureNative.ContainerInstance.Inputs.ConfidentialComputePropertiesArgs
///         {
///             CcePolicy = "eyJhbGxvd19hbGwiOiB0cnVlLCAiY29udGFpbmVycyI6IHsibGVuZ3RoIjogMCwgImVsZW1lbnRzIjogbnVsbH19",
///         },
///         ContainerGroupName = "demo1",
///         Containers = new[]
///         {
///             new AzureNative.ContainerInstance.Inputs.ContainerArgs
///             {
///                 Command = new() { },
///                 EnvironmentVariables = new() { },
///                 Image = "confiimage",
///                 Name = "accdemo",
///                 Ports = new[]
///                 {
///                     new AzureNative.ContainerInstance.Inputs.ContainerPortArgs
///                     {
///                         Port = 8000,
///                     },
///                 },
///                 Resources = new AzureNative.ContainerInstance.Inputs.ResourceRequirementsArgs
///                 {
///                     Requests = new AzureNative.ContainerInstance.Inputs.ResourceRequestsArgs
///                     {
///                         Cpu = 1,
///                         MemoryInGB = 1.5,
///                     },
///                 },
///                 SecurityContext = new AzureNative.ContainerInstance.Inputs.SecurityContextDefinitionArgs
///                 {
///                     Capabilities = new AzureNative.ContainerInstance.Inputs.SecurityContextCapabilitiesDefinitionArgs
///                     {
///                         Add = new[]
///                         {
///                             "CAP_NET_ADMIN",
///                         },
///                     },
///                     Privileged = false,
///                 },
///             },
///         },
///         ImageRegistryCredentials = new[] {},
///         IpAddress = new AzureNative.ContainerInstance.Inputs.IpAddressArgs
///         {
///             Ports = new[]
///             {
///                 new AzureNative.ContainerInstance.Inputs.PortArgs
///                 {
///                     Port = 8000,
///                     Protocol = AzureNative.ContainerInstance.ContainerGroupNetworkProtocol.TCP,
///                 },
///             },
///             Type = AzureNative.ContainerInstance.ContainerGroupIpAddressType.Public,
///         },
///         Location = "westeurope",
///         OsType = AzureNative.ContainerInstance.OperatingSystemTypes.Linux,
///         ResourceGroupName = "demo",
///         Sku = AzureNative.ContainerInstance.ContainerGroupSku.Confidential,
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
/// 	containerinstance "github.com/pulumi/pulumi-azure-native-sdk/containerinstance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinstance.NewContainerGroup(ctx, "containerGroup", &containerinstance.ContainerGroupArgs{
/// 			ConfidentialComputeProperties: &containerinstance.ConfidentialComputePropertiesArgs{
/// 				CcePolicy: pulumi.String("eyJhbGxvd19hbGwiOiB0cnVlLCAiY29udGFpbmVycyI6IHsibGVuZ3RoIjogMCwgImVsZW1lbnRzIjogbnVsbH19"),
/// 			},
/// 			ContainerGroupName: pulumi.String("demo1"),
/// 			Containers: containerinstance.ContainerArray{
/// 				&containerinstance.ContainerArgs{
/// 					Command:              pulumi.StringArray{},
/// 					EnvironmentVariables: containerinstance.EnvironmentVariableArray{},
/// 					Image:                pulumi.String("confiimage"),
/// 					Name:                 pulumi.String("accdemo"),
/// 					Ports: containerinstance.ContainerPortArray{
/// 						&containerinstance.ContainerPortArgs{
/// 							Port: pulumi.Int(8000),
/// 						},
/// 					},
/// 					Resources: &containerinstance.ResourceRequirementsArgs{
/// 						Requests: &containerinstance.ResourceRequestsArgs{
/// 							Cpu:        pulumi.Float64(1),
/// 							MemoryInGB: pulumi.Float64(1.5),
/// 						},
/// 					},
/// 					SecurityContext: &containerinstance.SecurityContextDefinitionArgs{
/// 						Capabilities: &containerinstance.SecurityContextCapabilitiesDefinitionArgs{
/// 							Add: pulumi.StringArray{
/// 								pulumi.String("CAP_NET_ADMIN"),
/// 							},
/// 						},
/// 						Privileged: pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			ImageRegistryCredentials: containerinstance.ImageRegistryCredentialArray{},
/// 			IpAddress: &containerinstance.IpAddressArgs{
/// 				Ports: containerinstance.PortArray{
/// 					&containerinstance.PortArgs{
/// 						Port:     pulumi.Int(8000),
/// 						Protocol: pulumi.String(containerinstance.ContainerGroupNetworkProtocolTCP),
/// 					},
/// 				},
/// 				Type: pulumi.String(containerinstance.ContainerGroupIpAddressTypePublic),
/// 			},
/// 			Location:          pulumi.String("westeurope"),
/// 			OsType:            pulumi.String(containerinstance.OperatingSystemTypesLinux),
/// 			ResourceGroupName: pulumi.String("demo"),
/// 			Sku:               pulumi.String(containerinstance.ContainerGroupSkuConfidential),
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
/// import com.pulumi.azurenative.containerinstance.ContainerGroup;
/// import com.pulumi.azurenative.containerinstance.ContainerGroupArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ConfidentialComputePropertiesArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ContainerArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequirementsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequestsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.SecurityContextDefinitionArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.SecurityContextCapabilitiesDefinitionArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.IpAddressArgs;
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
///         var containerGroup = new ContainerGroup("containerGroup", ContainerGroupArgs.builder()
///             .confidentialComputeProperties(ConfidentialComputePropertiesArgs.builder()
///                 .ccePolicy("eyJhbGxvd19hbGwiOiB0cnVlLCAiY29udGFpbmVycyI6IHsibGVuZ3RoIjogMCwgImVsZW1lbnRzIjogbnVsbH19")
///                 .build())
///             .containerGroupName("demo1")
///             .containers(ContainerArgs.builder()
///                 .command()
///                 .environmentVariables()
///                 .image("confiimage")
///                 .name("accdemo")
///                 .ports(ContainerPortArgs.builder()
///                     .port(8000)
///                     .build())
///                 .resources(ResourceRequirementsArgs.builder()
///                     .requests(ResourceRequestsArgs.builder()
///                         .cpu(1.0)
///                         .memoryInGB(1.5)
///                         .build())
///                     .build())
///                 .securityContext(SecurityContextDefinitionArgs.builder()
///                     .capabilities(SecurityContextCapabilitiesDefinitionArgs.builder()
///                         .add("CAP_NET_ADMIN")
///                         .build())
///                     .privileged(false)
///                     .build())
///                 .build())
///             .imageRegistryCredentials()
///             .ipAddress(IpAddressArgs.builder()
///                 .ports(PortArgs.builder()
///                     .port(8000)
///                     .protocol("TCP")
///                     .build())
///                 .type("Public")
///                 .build())
///             .location("westeurope")
///             .osType("Linux")
///             .resourceGroupName("demo")
///             .sku("Confidential")
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
/// const containerGroup = new azure_native.containerinstance.ContainerGroup("containerGroup", {
///     confidentialComputeProperties: {
///         ccePolicy: "eyJhbGxvd19hbGwiOiB0cnVlLCAiY29udGFpbmVycyI6IHsibGVuZ3RoIjogMCwgImVsZW1lbnRzIjogbnVsbH19",
///     },
///     containerGroupName: "demo1",
///     containers: [{
///         command: [],
///         environmentVariables: [],
///         image: "confiimage",
///         name: "accdemo",
///         ports: [{
///             port: 8000,
///         }],
///         resources: {
///             requests: {
///                 cpu: 1,
///                 memoryInGB: 1.5,
///             },
///         },
///         securityContext: {
///             capabilities: {
///                 add: ["CAP_NET_ADMIN"],
///             },
///             privileged: false,
///         },
///     }],
///     imageRegistryCredentials: [],
///     ipAddress: {
///         ports: [{
///             port: 8000,
///             protocol: azure_native.containerinstance.ContainerGroupNetworkProtocol.TCP,
///         }],
///         type: azure_native.containerinstance.ContainerGroupIpAddressType.Public,
///     },
///     location: "westeurope",
///     osType: azure_native.containerinstance.OperatingSystemTypes.Linux,
///     resourceGroupName: "demo",
///     sku: azure_native.containerinstance.ContainerGroupSku.Confidential,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_group = azure_native.containerinstance.ContainerGroup("containerGroup",
///     confidential_compute_properties={
///         "cce_policy": "eyJhbGxvd19hbGwiOiB0cnVlLCAiY29udGFpbmVycyI6IHsibGVuZ3RoIjogMCwgImVsZW1lbnRzIjogbnVsbH19",
///     },
///     container_group_name="demo1",
///     containers=[{
///         "command": [],
///         "environment_variables": [],
///         "image": "confiimage",
///         "name": "accdemo",
///         "ports": [{
///             "port": 8000,
///         }],
///         "resources": {
///             "requests": {
///                 "cpu": 1,
///                 "memory_in_gb": 1.5,
///             },
///         },
///         "security_context": {
///             "capabilities": {
///                 "add": ["CAP_NET_ADMIN"],
///             },
///             "privileged": False,
///         },
///     }],
///     image_registry_credentials=[],
///     ip_address={
///         "ports": [{
///             "port": 8000,
///             "protocol": azure_native.containerinstance.ContainerGroupNetworkProtocol.TCP,
///         }],
///         "type": azure_native.containerinstance.ContainerGroupIpAddressType.PUBLIC,
///     },
///     location="westeurope",
///     os_type=azure_native.containerinstance.OperatingSystemTypes.LINUX,
///     resource_group_name="demo",
///     sku=azure_native.containerinstance.ContainerGroupSku.CONFIDENTIAL)
///
/// ```
///
/// ```yaml
/// resources:
///   containerGroup:
///     type: azure-native:containerinstance:ContainerGroup
///     properties:
///       confidentialComputeProperties:
///         ccePolicy: eyJhbGxvd19hbGwiOiB0cnVlLCAiY29udGFpbmVycyI6IHsibGVuZ3RoIjogMCwgImVsZW1lbnRzIjogbnVsbH19
///       containerGroupName: demo1
///       containers:
///         - command: []
///           environmentVariables: []
///           image: confiimage
///           name: accdemo
///           ports:
///             - port: 8000
///           resources:
///             requests:
///               cpu: 1
///               memoryInGB: 1.5
///           securityContext:
///             capabilities:
///               add:
///                 - CAP_NET_ADMIN
///             privileged: false
///       imageRegistryCredentials: []
///       ipAddress:
///         ports:
///           - port: 8000
///             protocol: TCP
///         type: Public
///       location: westeurope
///       osType: Linux
///       resourceGroupName: demo
///       sku: Confidential
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ContainerGroupCreateOrUpdateWithStandbyPool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerGroup = new AzureNative.ContainerInstance.ContainerGroup("containerGroup", new()
///     {
///         ContainerGroupName = "demo1",
///         ContainerGroupProfile = new AzureNative.ContainerInstance.Inputs.ContainerGroupProfileReferenceDefinitionArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/demo/providers/Microsoft.ContainerInstance/containerGroupProfiles/democgp",
///             Revision = 1,
///         },
///         Containers = new[]
///         {
///             new AzureNative.ContainerInstance.Inputs.ContainerArgs
///             {
///                 ConfigMap = new AzureNative.ContainerInstance.Inputs.ConfigMapArgs
///                 {
///                     KeyValuePairs =
///                     {
///                         { "Newkey", "value" },
///                     },
///                 },
///                 Name = "demo1",
///             },
///         },
///         Location = "west us",
///         ResourceGroupName = "demo",
///         StandbyPoolProfile = new AzureNative.ContainerInstance.Inputs.StandbyPoolProfileDefinitionArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/demo/providers/Microsoft.StandbyPool/standbyContainerGroupPools/demopool",
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
/// 	containerinstance "github.com/pulumi/pulumi-azure-native-sdk/containerinstance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinstance.NewContainerGroup(ctx, "containerGroup", &containerinstance.ContainerGroupArgs{
/// 			ContainerGroupName: pulumi.String("demo1"),
/// 			ContainerGroupProfile: &containerinstance.ContainerGroupProfileReferenceDefinitionArgs{
/// 				Id:       pulumi.String("/subscriptions/subid/resourceGroups/demo/providers/Microsoft.ContainerInstance/containerGroupProfiles/democgp"),
/// 				Revision: pulumi.Int(1),
/// 			},
/// 			Containers: containerinstance.ContainerArray{
/// 				&containerinstance.ContainerArgs{
/// 					ConfigMap: &containerinstance.ConfigMapArgs{
/// 						KeyValuePairs: pulumi.StringMap{
/// 							"Newkey": pulumi.String("value"),
/// 						},
/// 					},
/// 					Name: pulumi.String("demo1"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("west us"),
/// 			ResourceGroupName: pulumi.String("demo"),
/// 			StandbyPoolProfile: &containerinstance.StandbyPoolProfileDefinitionArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/demo/providers/Microsoft.StandbyPool/standbyContainerGroupPools/demopool"),
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
/// import com.pulumi.azurenative.containerinstance.ContainerGroup;
/// import com.pulumi.azurenative.containerinstance.ContainerGroupArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ContainerGroupProfileReferenceDefinitionArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ContainerArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ConfigMapArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.StandbyPoolProfileDefinitionArgs;
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
///         var containerGroup = new ContainerGroup("containerGroup", ContainerGroupArgs.builder()
///             .containerGroupName("demo1")
///             .containerGroupProfile(ContainerGroupProfileReferenceDefinitionArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/demo/providers/Microsoft.ContainerInstance/containerGroupProfiles/democgp")
///                 .revision(1)
///                 .build())
///             .containers(ContainerArgs.builder()
///                 .configMap(ConfigMapArgs.builder()
///                     .keyValuePairs(Map.of("Newkey", "value"))
///                     .build())
///                 .name("demo1")
///                 .build())
///             .location("west us")
///             .resourceGroupName("demo")
///             .standbyPoolProfile(StandbyPoolProfileDefinitionArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/demo/providers/Microsoft.StandbyPool/standbyContainerGroupPools/demopool")
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
/// const containerGroup = new azure_native.containerinstance.ContainerGroup("containerGroup", {
///     containerGroupName: "demo1",
///     containerGroupProfile: {
///         id: "/subscriptions/subid/resourceGroups/demo/providers/Microsoft.ContainerInstance/containerGroupProfiles/democgp",
///         revision: 1,
///     },
///     containers: [{
///         configMap: {
///             keyValuePairs: {
///                 Newkey: "value",
///             },
///         },
///         name: "demo1",
///     }],
///     location: "west us",
///     resourceGroupName: "demo",
///     standbyPoolProfile: {
///         id: "/subscriptions/subid/resourceGroups/demo/providers/Microsoft.StandbyPool/standbyContainerGroupPools/demopool",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_group = azure_native.containerinstance.ContainerGroup("containerGroup",
///     container_group_name="demo1",
///     container_group_profile={
///         "id": "/subscriptions/subid/resourceGroups/demo/providers/Microsoft.ContainerInstance/containerGroupProfiles/democgp",
///         "revision": 1,
///     },
///     containers=[{
///         "config_map": {
///             "key_value_pairs": {
///                 "Newkey": "value",
///             },
///         },
///         "name": "demo1",
///     }],
///     location="west us",
///     resource_group_name="demo",
///     standby_pool_profile={
///         "id": "/subscriptions/subid/resourceGroups/demo/providers/Microsoft.StandbyPool/standbyContainerGroupPools/demopool",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   containerGroup:
///     type: azure-native:containerinstance:ContainerGroup
///     properties:
///       containerGroupName: demo1
///       containerGroupProfile:
///         id: /subscriptions/subid/resourceGroups/demo/providers/Microsoft.ContainerInstance/containerGroupProfiles/democgp
///         revision: 1
///       containers:
///         - configMap:
///             keyValuePairs:
///               Newkey: value
///           name: demo1
///       location: west us
///       resourceGroupName: demo
///       standbyPoolProfile:
///         id: /subscriptions/subid/resourceGroups/demo/providers/Microsoft.StandbyPool/standbyContainerGroupPools/demopool
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ContainerGroupCreateWithExtensions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerGroup = new AzureNative.ContainerInstance.ContainerGroup("containerGroup", new()
///     {
///         ContainerGroupName = "demo1",
///         Containers = new[]
///         {
///             new AzureNative.ContainerInstance.Inputs.ContainerArgs
///             {
///                 Command = new() { },
///                 EnvironmentVariables = new() { },
///                 Image = "nginx",
///                 Name = "demo1",
///                 Ports = new[]
///                 {
///                     new AzureNative.ContainerInstance.Inputs.ContainerPortArgs
///                     {
///                         Port = 80,
///                     },
///                 },
///                 Resources = new AzureNative.ContainerInstance.Inputs.ResourceRequirementsArgs
///                 {
///                     Requests = new AzureNative.ContainerInstance.Inputs.ResourceRequestsArgs
///                     {
///                         Cpu = 1,
///                         MemoryInGB = 1.5,
///                     },
///                 },
///             },
///         },
///         Extensions = new[]
///         {
///             new AzureNative.ContainerInstance.Inputs.DeploymentExtensionSpecArgs
///             {
///                 ExtensionType = "kube-proxy",
///                 Name = "kube-proxy",
///                 ProtectedSettings = new Dictionary<string, object?>
///                 {
///                     ["kubeConfig"] = "<kubeconfig encoded string>",
///                 },
///                 Settings = new Dictionary<string, object?>
///                 {
///                     ["clusterCidr"] = "10.240.0.0/16",
///                     ["kubeVersion"] = "v1.9.10",
///                 },
///                 Version = "1.0",
///             },
///             new AzureNative.ContainerInstance.Inputs.DeploymentExtensionSpecArgs
///             {
///                 ExtensionType = "realtime-metrics",
///                 Name = "vk-realtime-metrics",
///                 Version = "1.0",
///             },
///         },
///         ImageRegistryCredentials = new[] {},
///         IpAddress = new AzureNative.ContainerInstance.Inputs.IpAddressArgs
///         {
///             Ports = new[]
///             {
///                 new AzureNative.ContainerInstance.Inputs.PortArgs
///                 {
///                     Port = 80,
///                     Protocol = AzureNative.ContainerInstance.ContainerGroupNetworkProtocol.TCP,
///                 },
///             },
///             Type = AzureNative.ContainerInstance.ContainerGroupIpAddressType.Private,
///         },
///         Location = "eastus2",
///         OsType = AzureNative.ContainerInstance.OperatingSystemTypes.Linux,
///         ResourceGroupName = "demo",
///         SubnetIds = new[]
///         {
///             new AzureNative.ContainerInstance.Inputs.ContainerGroupSubnetIdArgs
///             {
///                 Id = "/subscriptions/00000000-0000-0000-0000-00000000/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-rg-vnet/subnets/test-subnet",
///             },
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
/// 	containerinstance "github.com/pulumi/pulumi-azure-native-sdk/containerinstance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinstance.NewContainerGroup(ctx, "containerGroup", &containerinstance.ContainerGroupArgs{
/// 			ContainerGroupName: pulumi.String("demo1"),
/// 			Containers: containerinstance.ContainerArray{
/// 				&containerinstance.ContainerArgs{
/// 					Command:              pulumi.StringArray{},
/// 					EnvironmentVariables: containerinstance.EnvironmentVariableArray{},
/// 					Image:                pulumi.String("nginx"),
/// 					Name:                 pulumi.String("demo1"),
/// 					Ports: containerinstance.ContainerPortArray{
/// 						&containerinstance.ContainerPortArgs{
/// 							Port: pulumi.Int(80),
/// 						},
/// 					},
/// 					Resources: &containerinstance.ResourceRequirementsArgs{
/// 						Requests: &containerinstance.ResourceRequestsArgs{
/// 							Cpu:        pulumi.Float64(1),
/// 							MemoryInGB: pulumi.Float64(1.5),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Extensions: containerinstance.DeploymentExtensionSpecArray{
/// 				&containerinstance.DeploymentExtensionSpecArgs{
/// 					ExtensionType: pulumi.String("kube-proxy"),
/// 					Name:          pulumi.String("kube-proxy"),
/// 					ProtectedSettings: pulumi.Any(map[string]interface{}{
/// 						"kubeConfig": "<kubeconfig encoded string>",
/// 					}),
/// 					Settings: pulumi.Any(map[string]interface{}{
/// 						"clusterCidr": "10.240.0.0/16",
/// 						"kubeVersion": "v1.9.10",
/// 					}),
/// 					Version: pulumi.String("1.0"),
/// 				},
/// 				&containerinstance.DeploymentExtensionSpecArgs{
/// 					ExtensionType: pulumi.String("realtime-metrics"),
/// 					Name:          pulumi.String("vk-realtime-metrics"),
/// 					Version:       pulumi.String("1.0"),
/// 				},
/// 			},
/// 			ImageRegistryCredentials: containerinstance.ImageRegistryCredentialArray{},
/// 			IpAddress: &containerinstance.IpAddressArgs{
/// 				Ports: containerinstance.PortArray{
/// 					&containerinstance.PortArgs{
/// 						Port:     pulumi.Int(80),
/// 						Protocol: pulumi.String(containerinstance.ContainerGroupNetworkProtocolTCP),
/// 					},
/// 				},
/// 				Type: pulumi.String(containerinstance.ContainerGroupIpAddressTypePrivate),
/// 			},
/// 			Location:          pulumi.String("eastus2"),
/// 			OsType:            pulumi.String(containerinstance.OperatingSystemTypesLinux),
/// 			ResourceGroupName: pulumi.String("demo"),
/// 			SubnetIds: containerinstance.ContainerGroupSubnetIdArray{
/// 				&containerinstance.ContainerGroupSubnetIdArgs{
/// 					Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-00000000/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-rg-vnet/subnets/test-subnet"),
/// 				},
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
/// import com.pulumi.azurenative.containerinstance.ContainerGroup;
/// import com.pulumi.azurenative.containerinstance.ContainerGroupArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ContainerArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequirementsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequestsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.DeploymentExtensionSpecArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.IpAddressArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ContainerGroupSubnetIdArgs;
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
///         var containerGroup = new ContainerGroup("containerGroup", ContainerGroupArgs.builder()
///             .containerGroupName("demo1")
///             .containers(ContainerArgs.builder()
///                 .command()
///                 .environmentVariables()
///                 .image("nginx")
///                 .name("demo1")
///                 .ports(ContainerPortArgs.builder()
///                     .port(80)
///                     .build())
///                 .resources(ResourceRequirementsArgs.builder()
///                     .requests(ResourceRequestsArgs.builder()
///                         .cpu(1.0)
///                         .memoryInGB(1.5)
///                         .build())
///                     .build())
///                 .build())
///             .extensions(
///                 DeploymentExtensionSpecArgs.builder()
///                     .extensionType("kube-proxy")
///                     .name("kube-proxy")
///                     .protectedSettings(Map.of("kubeConfig", "<kubeconfig encoded string>"))
///                     .settings(Map.ofEntries(
///                         Map.entry("clusterCidr", "10.240.0.0/16"),
///                         Map.entry("kubeVersion", "v1.9.10")
///                     ))
///                     .version("1.0")
///                     .build(),
///                 DeploymentExtensionSpecArgs.builder()
///                     .extensionType("realtime-metrics")
///                     .name("vk-realtime-metrics")
///                     .version("1.0")
///                     .build())
///             .imageRegistryCredentials()
///             .ipAddress(IpAddressArgs.builder()
///                 .ports(PortArgs.builder()
///                     .port(80)
///                     .protocol("TCP")
///                     .build())
///                 .type("Private")
///                 .build())
///             .location("eastus2")
///             .osType("Linux")
///             .resourceGroupName("demo")
///             .subnetIds(ContainerGroupSubnetIdArgs.builder()
///                 .id("/subscriptions/00000000-0000-0000-0000-00000000/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-rg-vnet/subnets/test-subnet")
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
/// const containerGroup = new azure_native.containerinstance.ContainerGroup("containerGroup", {
///     containerGroupName: "demo1",
///     containers: [{
///         command: [],
///         environmentVariables: [],
///         image: "nginx",
///         name: "demo1",
///         ports: [{
///             port: 80,
///         }],
///         resources: {
///             requests: {
///                 cpu: 1,
///                 memoryInGB: 1.5,
///             },
///         },
///     }],
///     extensions: [
///         {
///             extensionType: "kube-proxy",
///             name: "kube-proxy",
///             protectedSettings: {
///                 kubeConfig: "<kubeconfig encoded string>",
///             },
///             settings: {
///                 clusterCidr: "10.240.0.0/16",
///                 kubeVersion: "v1.9.10",
///             },
///             version: "1.0",
///         },
///         {
///             extensionType: "realtime-metrics",
///             name: "vk-realtime-metrics",
///             version: "1.0",
///         },
///     ],
///     imageRegistryCredentials: [],
///     ipAddress: {
///         ports: [{
///             port: 80,
///             protocol: azure_native.containerinstance.ContainerGroupNetworkProtocol.TCP,
///         }],
///         type: azure_native.containerinstance.ContainerGroupIpAddressType.Private,
///     },
///     location: "eastus2",
///     osType: azure_native.containerinstance.OperatingSystemTypes.Linux,
///     resourceGroupName: "demo",
///     subnetIds: [{
///         id: "/subscriptions/00000000-0000-0000-0000-00000000/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-rg-vnet/subnets/test-subnet",
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_group = azure_native.containerinstance.ContainerGroup("containerGroup",
///     container_group_name="demo1",
///     containers=[{
///         "command": [],
///         "environment_variables": [],
///         "image": "nginx",
///         "name": "demo1",
///         "ports": [{
///             "port": 80,
///         }],
///         "resources": {
///             "requests": {
///                 "cpu": 1,
///                 "memory_in_gb": 1.5,
///             },
///         },
///     }],
///     extensions=[
///         {
///             "extension_type": "kube-proxy",
///             "name": "kube-proxy",
///             "protected_settings": {
///                 "kubeConfig": "<kubeconfig encoded string>",
///             },
///             "settings": {
///                 "clusterCidr": "10.240.0.0/16",
///                 "kubeVersion": "v1.9.10",
///             },
///             "version": "1.0",
///         },
///         {
///             "extension_type": "realtime-metrics",
///             "name": "vk-realtime-metrics",
///             "version": "1.0",
///         },
///     ],
///     image_registry_credentials=[],
///     ip_address={
///         "ports": [{
///             "port": 80,
///             "protocol": azure_native.containerinstance.ContainerGroupNetworkProtocol.TCP,
///         }],
///         "type": azure_native.containerinstance.ContainerGroupIpAddressType.PRIVATE,
///     },
///     location="eastus2",
///     os_type=azure_native.containerinstance.OperatingSystemTypes.LINUX,
///     resource_group_name="demo",
///     subnet_ids=[{
///         "id": "/subscriptions/00000000-0000-0000-0000-00000000/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-rg-vnet/subnets/test-subnet",
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   containerGroup:
///     type: azure-native:containerinstance:ContainerGroup
///     properties:
///       containerGroupName: demo1
///       containers:
///         - command: []
///           environmentVariables: []
///           image: nginx
///           name: demo1
///           ports:
///             - port: 80
///           resources:
///             requests:
///               cpu: 1
///               memoryInGB: 1.5
///       extensions:
///         - extensionType: kube-proxy
///           name: kube-proxy
///           protectedSettings:
///             kubeConfig: <kubeconfig encoded string>
///           settings:
///             clusterCidr: 10.240.0.0/16
///             kubeVersion: v1.9.10
///           version: '1.0'
///         - extensionType: realtime-metrics
///           name: vk-realtime-metrics
///           version: '1.0'
///       imageRegistryCredentials: []
///       ipAddress:
///         ports:
///           - port: 80
///             protocol: TCP
///         type: Private
///       location: eastus2
///       osType: Linux
///       resourceGroupName: demo
///       subnetIds:
///         - id: /subscriptions/00000000-0000-0000-0000-00000000/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-rg-vnet/subnets/test-subnet
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ContainerGroupsCreateWithPriority
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerGroup = new AzureNative.ContainerInstance.ContainerGroup("containerGroup", new()
///     {
///         ContainerGroupName = "demo1",
///         Containers = new[]
///         {
///             new AzureNative.ContainerInstance.Inputs.ContainerArgs
///             {
///                 Command = new[]
///                 {
///                     "/bin/sh",
///                     "-c",
///                     "sleep 10",
///                 },
///                 Image = "alpine:latest",
///                 Name = "test-container-001",
///                 Resources = new AzureNative.ContainerInstance.Inputs.ResourceRequirementsArgs
///                 {
///                     Requests = new AzureNative.ContainerInstance.Inputs.ResourceRequestsArgs
///                     {
///                         Cpu = 1,
///                         MemoryInGB = 1,
///                     },
///                 },
///             },
///         },
///         Location = "eastus",
///         OsType = AzureNative.ContainerInstance.OperatingSystemTypes.Linux,
///         Priority = AzureNative.ContainerInstance.ContainerGroupPriority.Spot,
///         ResourceGroupName = "demo",
///         RestartPolicy = AzureNative.ContainerInstance.ContainerGroupRestartPolicy.Never,
///         Sku = AzureNative.ContainerInstance.ContainerGroupSku.Standard,
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
/// 	containerinstance "github.com/pulumi/pulumi-azure-native-sdk/containerinstance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinstance.NewContainerGroup(ctx, "containerGroup", &containerinstance.ContainerGroupArgs{
/// 			ContainerGroupName: pulumi.String("demo1"),
/// 			Containers: containerinstance.ContainerArray{
/// 				&containerinstance.ContainerArgs{
/// 					Command: pulumi.StringArray{
/// 						pulumi.String("/bin/sh"),
/// 						pulumi.String("-c"),
/// 						pulumi.String("sleep 10"),
/// 					},
/// 					Image: pulumi.String("alpine:latest"),
/// 					Name:  pulumi.String("test-container-001"),
/// 					Resources: &containerinstance.ResourceRequirementsArgs{
/// 						Requests: &containerinstance.ResourceRequestsArgs{
/// 							Cpu:        pulumi.Float64(1),
/// 							MemoryInGB: pulumi.Float64(1),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			OsType:            pulumi.String(containerinstance.OperatingSystemTypesLinux),
/// 			Priority:          pulumi.String(containerinstance.ContainerGroupPrioritySpot),
/// 			ResourceGroupName: pulumi.String("demo"),
/// 			RestartPolicy:     pulumi.String(containerinstance.ContainerGroupRestartPolicyNever),
/// 			Sku:               pulumi.String(containerinstance.ContainerGroupSkuStandard),
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
/// import com.pulumi.azurenative.containerinstance.ContainerGroup;
/// import com.pulumi.azurenative.containerinstance.ContainerGroupArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ContainerArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequirementsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequestsArgs;
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
///         var containerGroup = new ContainerGroup("containerGroup", ContainerGroupArgs.builder()
///             .containerGroupName("demo1")
///             .containers(ContainerArgs.builder()
///                 .command(
///                     "/bin/sh",
///                     "-c",
///                     "sleep 10")
///                 .image("alpine:latest")
///                 .name("test-container-001")
///                 .resources(ResourceRequirementsArgs.builder()
///                     .requests(ResourceRequestsArgs.builder()
///                         .cpu(1.0)
///                         .memoryInGB(1.0)
///                         .build())
///                     .build())
///                 .build())
///             .location("eastus")
///             .osType("Linux")
///             .priority("Spot")
///             .resourceGroupName("demo")
///             .restartPolicy("Never")
///             .sku("Standard")
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
/// const containerGroup = new azure_native.containerinstance.ContainerGroup("containerGroup", {
///     containerGroupName: "demo1",
///     containers: [{
///         command: [
///             "/bin/sh",
///             "-c",
///             "sleep 10",
///         ],
///         image: "alpine:latest",
///         name: "test-container-001",
///         resources: {
///             requests: {
///                 cpu: 1,
///                 memoryInGB: 1,
///             },
///         },
///     }],
///     location: "eastus",
///     osType: azure_native.containerinstance.OperatingSystemTypes.Linux,
///     priority: azure_native.containerinstance.ContainerGroupPriority.Spot,
///     resourceGroupName: "demo",
///     restartPolicy: azure_native.containerinstance.ContainerGroupRestartPolicy.Never,
///     sku: azure_native.containerinstance.ContainerGroupSku.Standard,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_group = azure_native.containerinstance.ContainerGroup("containerGroup",
///     container_group_name="demo1",
///     containers=[{
///         "command": [
///             "/bin/sh",
///             "-c",
///             "sleep 10",
///         ],
///         "image": "alpine:latest",
///         "name": "test-container-001",
///         "resources": {
///             "requests": {
///                 "cpu": 1,
///                 "memory_in_gb": 1,
///             },
///         },
///     }],
///     location="eastus",
///     os_type=azure_native.containerinstance.OperatingSystemTypes.LINUX,
///     priority=azure_native.containerinstance.ContainerGroupPriority.SPOT,
///     resource_group_name="demo",
///     restart_policy=azure_native.containerinstance.ContainerGroupRestartPolicy.NEVER,
///     sku=azure_native.containerinstance.ContainerGroupSku.STANDARD)
///
/// ```
///
/// ```yaml
/// resources:
///   containerGroup:
///     type: azure-native:containerinstance:ContainerGroup
///     properties:
///       containerGroupName: demo1
///       containers:
///         - command:
///             - /bin/sh
///             - -c
///             - sleep 10
///           image: alpine:latest
///           name: test-container-001
///           resources:
///             requests:
///               cpu: 1
///               memoryInGB: 1
///       location: eastus
///       osType: Linux
///       priority: Spot
///       resourceGroupName: demo
///       restartPolicy: Never
///       sku: Standard
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
/// $ pulumi import azure-native:containerinstance:ContainerGroup demo1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerInstance/containerGroups/{containerGroupName}
/// ```
class ContainerGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The properties for confidential container group
  late final pulumi.Output<ConfidentialComputePropertiesResponse?>
  confidentialComputeProperties;

  /// The reference container group profile properties.
  late final pulumi.Output<ContainerGroupProfileReferenceDefinitionResponse?>
  containerGroupProfile;

  /// The containers within the container group.
  late final pulumi.Output<List<Map<String, dynamic>>> containers;

  /// The diagnostic information for a container group.
  late final pulumi.Output<ContainerGroupDiagnosticsResponse?> diagnostics;

  /// The DNS config information for a container group.
  late final pulumi.Output<DnsConfigurationResponse?> dnsConfig;

  /// The encryption properties for a container group.
  late final pulumi.Output<EncryptionPropertiesResponse?> encryptionProperties;

  /// extensions used by virtual kubelet
  late final pulumi.Output<List<Map<String, dynamic>>?> extensions;

  /// The identity of the container group, if configured.
  late final pulumi.Output<ContainerGroupIdentityResponse?> identity;

  /// The image registry credentials by which the container group is created from.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  imageRegistryCredentials;

  /// The init containers for a container group.
  late final pulumi.Output<List<Map<String, dynamic>>?> initContainers;

  /// The instance view of the container group. Only valid in response.
  late final pulumi.Output<ContainerGroupPropertiesResponseInstanceView>
  instanceView;

  /// The IP address type of the container group.
  late final pulumi.Output<IpAddressResponse?> ipAddress;

  /// The flag indicating whether the container group is created by standby pool.
  late final pulumi.Output<bool> isCreatedFromStandbyPool;

  /// The resource location.
  late final pulumi.Output<String?> location;

  /// The resource name.
  late final pulumi.Output<String> name;

  /// The operating system type required by the containers in the container group.
  late final pulumi.Output<String?> osType;

  /// The priority of the container group.
  late final pulumi.Output<String?> priority;

  /// The provisioning state of the container group. This only appears in the response.
  late final pulumi.Output<String> provisioningState;

  /// Restart policy for all containers within the container group.
  /// - `Always` Always restart
  /// - `OnFailure` Restart on failure
  /// - `Never` Never restart
  late final pulumi.Output<String?> restartPolicy;

  /// The SKU for a container group.
  late final pulumi.Output<String?> sku;

  /// The reference standby pool profile properties.
  late final pulumi.Output<StandbyPoolProfileDefinitionResponse?>
  standbyPoolProfile;

  /// The subnet resource IDs for a container group.
  late final pulumi.Output<List<Map<String, dynamic>>?> subnetIds;

  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The resource type.
  late final pulumi.Output<String> type;

  /// The list of volumes that can be mounted by containers in this container group.
  late final pulumi.Output<List<Map<String, dynamic>>?> volumes;

  /// The zones for the container group.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [ContainerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerGroup]. {@macro pulumi_containerinstance_container_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerGroup(
    String name, {
    ContainerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:containerinstance:ContainerGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    confidentialComputeProperties =
        registerOutput<ConfidentialComputePropertiesResponse?>(
          'confidentialComputeProperties',
        );
    containerGroupProfile =
        registerOutput<ContainerGroupProfileReferenceDefinitionResponse?>(
          'containerGroupProfile',
        );
    containers = registerOutput<List<Map<String, dynamic>>>('containers');
    diagnostics = registerOutput<ContainerGroupDiagnosticsResponse?>(
      'diagnostics',
    );
    dnsConfig = registerOutput<DnsConfigurationResponse?>('dnsConfig');
    encryptionProperties = registerOutput<EncryptionPropertiesResponse?>(
      'encryptionProperties',
    );
    extensions = registerOutput<List<Map<String, dynamic>>?>('extensions');
    identity = registerOutput<ContainerGroupIdentityResponse?>('identity');
    imageRegistryCredentials = registerOutput<List<Map<String, dynamic>>?>(
      'imageRegistryCredentials',
    );
    initContainers = registerOutput<List<Map<String, dynamic>>?>(
      'initContainers',
    );
    instanceView = registerOutput<ContainerGroupPropertiesResponseInstanceView>(
      'instanceView',
    );
    ipAddress = registerOutput<IpAddressResponse?>('ipAddress');
    isCreatedFromStandbyPool = registerOutput<bool>('isCreatedFromStandbyPool');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String?>('osType');
    priority = registerOutput<String?>('priority');
    provisioningState = registerOutput<String>('provisioningState');
    restartPolicy = registerOutput<String?>('restartPolicy');
    sku = registerOutput<String?>('sku');
    standbyPoolProfile = registerOutput<StandbyPoolProfileDefinitionResponse?>(
      'standbyPoolProfile',
    );
    subnetIds = registerOutput<List<Map<String, dynamic>>?>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    volumes = registerOutput<List<Map<String, dynamic>>?>('volumes');
    zones = registerOutput<List<String>?>('zones');
  }
}
