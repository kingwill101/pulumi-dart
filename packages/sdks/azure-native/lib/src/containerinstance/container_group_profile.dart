import 'package:pulumi/pulumi.dart' as pulumi;
import 'confidential_compute_properties_response.dart';
import 'container_container_group_profile_response.dart';
import 'container_group_diagnostics_response.dart';
import 'container_group_profile_args.dart';
import 'deployment_extension_spec_response.dart';
import 'encryption_properties_response.dart';
import 'image_registry_credential_container_group_profile_response.dart';
import 'init_container_definition_container_group_profile_response.dart';
import 'ip_address_response.dart';
import 'volume_container_group_profile_response.dart';

/// A container group profile.
///
/// Uses Azure REST API version 2024-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConfidentialContainerGroupProfile
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerGroupProfile = new AzureNative.ContainerInstance.ContainerGroupProfile("containerGroupProfile", new()
///     {
///         ConfidentialComputeProperties = new AzureNative.ContainerInstance.Inputs.ConfidentialComputePropertiesArgs
///         {
///             CcePolicy = "eyJhbGxvd19hbGwiOiB0cnVlLCAiY29udGFpbmVycyI6IHsibGVuZ3RoIjogMCwgImVsZW1lbnRzIjogbnVsbH19",
///         },
///         ContainerGroupProfileName = "demo1",
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
/// 	containerinstance "github.com/pulumi/pulumi-azure-native-sdk/containerinstance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinstance.NewContainerGroupProfile(ctx, "containerGroupProfile", &containerinstance.ContainerGroupProfileArgs{
/// 			ConfidentialComputeProperties: &containerinstance.ConfidentialComputePropertiesArgs{
/// 				CcePolicy: pulumi.String("eyJhbGxvd19hbGwiOiB0cnVlLCAiY29udGFpbmVycyI6IHsibGVuZ3RoIjogMCwgImVsZW1lbnRzIjogbnVsbH19"),
/// 			},
/// 			ContainerGroupProfileName: pulumi.String("demo1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerinstance_containergroupprofile" "containerGroupProfile" {
///   confidential_compute_properties = {
///     cce_policy = "eyJhbGxvd19hbGwiOiB0cnVlLCAiY29udGFpbmVycyI6IHsibGVuZ3RoIjogMCwgImVsZW1lbnRzIjogbnVsbH19"
///   }
///   container_group_profile_name = "demo1"
///   containers {
///     command = []
///     image   = "confiimage"
///     name    = "accdemo"
///     ports {
///       port = 8000
///     }
///     resources = {
///       requests = {
///         cpu          = 1
///         memory_in_gb = 1.5
///       }
///     }
///     security_context = {
///       capabilities = {
///         add = ["CAP_NET_ADMIN"]
///       }
///       privileged = false
///     }
///   }
///   ip_address = {
///     ports = [{
///       "port"     = 8000
///       "protocol" = "TCP"
///     }]
///     type = "Public"
///   }
///   location            = "westeurope"
///   os_type             = "Linux"
///   resource_group_name = "demo"
///   sku                 = "Confidential"
///   zones               = ["1"]
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
/// import com.pulumi.azurenative.containerinstance.ContainerGroupProfile;
/// import com.pulumi.azurenative.containerinstance.ContainerGroupProfileArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ConfidentialComputePropertiesArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ContainerArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequirementsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequestsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.SecurityContextDefinitionArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.SecurityContextCapabilitiesDefinitionArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.IpAddressArgs;
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
///         var containerGroupProfile = new ContainerGroupProfile("containerGroupProfile", ContainerGroupProfileArgs.builder()
///             .confidentialComputeProperties(ConfidentialComputePropertiesArgs.builder()
///                 .ccePolicy("eyJhbGxvd19hbGwiOiB0cnVlLCAiY29udGFpbmVycyI6IHsibGVuZ3RoIjogMCwgImVsZW1lbnRzIjogbnVsbH19")
///                 .build())
///             .containerGroupProfileName("demo1")
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
/// const containerGroupProfile = new azure_native.containerinstance.ContainerGroupProfile("containerGroupProfile", {
///     confidentialComputeProperties: {
///         ccePolicy: "eyJhbGxvd19hbGwiOiB0cnVlLCAiY29udGFpbmVycyI6IHsibGVuZ3RoIjogMCwgImVsZW1lbnRzIjogbnVsbH19",
///     },
///     containerGroupProfileName: "demo1",
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
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_group_profile = azure_native.containerinstance.ContainerGroupProfile("containerGroupProfile",
///     confidential_compute_properties={
///         "cce_policy": "eyJhbGxvd19hbGwiOiB0cnVlLCAiY29udGFpbmVycyI6IHsibGVuZ3RoIjogMCwgImVsZW1lbnRzIjogbnVsbH19",
///     },
///     container_group_profile_name="demo1",
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
///                 "cpu": float(1),
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
///     sku=azure_native.containerinstance.ContainerGroupSku.CONFIDENTIAL,
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   containerGroupProfile:
///     type: azure-native:containerinstance:ContainerGroupProfile
///     properties:
///       confidentialComputeProperties:
///         ccePolicy: eyJhbGxvd19hbGwiOiB0cnVlLCAiY29udGFpbmVycyI6IHsibGVuZ3RoIjogMCwgImVsZW1lbnRzIjogbnVsbH19
///       containerGroupProfileName: demo1
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
///       zones:
///         - '1'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ContainerGroupProfileCreateWithExtensions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerGroupProfile = new AzureNative.ContainerInstance.ContainerGroupProfile("containerGroupProfile", new()
///     {
///         ContainerGroupProfileName = "demo1",
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
/// 	containerinstance "github.com/pulumi/pulumi-azure-native-sdk/containerinstance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinstance.NewContainerGroupProfile(ctx, "containerGroupProfile", &containerinstance.ContainerGroupProfileArgs{
/// 			ContainerGroupProfileName: pulumi.String("demo1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerinstance_containergroupprofile" "containerGroupProfile" {
///   container_group_profile_name = "demo1"
///   containers {
///     command = []
///     image   = "nginx"
///     name    = "demo1"
///     ports {
///       port = 80
///     }
///     resources = {
///       requests = {
///         cpu          = 1
///         memory_in_gb = 1.5
///       }
///     }
///   }
///   extensions {
///     extension_type = "kube-proxy"
///     name           = "kube-proxy"
///     protected_settings = {
///       "kubeConfig" = "<kubeconfig encoded string>"
///     }
///     settings = {
///       "clusterCidr" = "10.240.0.0/16"
///       "kubeVersion" = "v1.9.10"
///     }
///     version = "1.0"
///   }
///   extensions {
///     extension_type = "realtime-metrics"
///     name           = "vk-realtime-metrics"
///     version        = "1.0"
///   }
///   ip_address = {
///     ports = [{
///       "port"     = 80
///       "protocol" = "TCP"
///     }]
///     type = "Private"
///   }
///   location            = "eastus2"
///   os_type             = "Linux"
///   resource_group_name = "demo"
///   zones               = ["1"]
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
/// import com.pulumi.azurenative.containerinstance.ContainerGroupProfile;
/// import com.pulumi.azurenative.containerinstance.ContainerGroupProfileArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ContainerArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequirementsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequestsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.DeploymentExtensionSpecArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.IpAddressArgs;
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
///         var containerGroupProfile = new ContainerGroupProfile("containerGroupProfile", ContainerGroupProfileArgs.builder()
///             .containerGroupProfileName("demo1")
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
/// const containerGroupProfile = new azure_native.containerinstance.ContainerGroupProfile("containerGroupProfile", {
///     containerGroupProfileName: "demo1",
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
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_group_profile = azure_native.containerinstance.ContainerGroupProfile("containerGroupProfile",
///     container_group_profile_name="demo1",
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
///                 "cpu": float(1),
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
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   containerGroupProfile:
///     type: azure-native:containerinstance:ContainerGroupProfile
///     properties:
///       containerGroupProfileName: demo1
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
///       zones:
///         - '1'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ContainerGroupProfileWithEncryptionProperties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerGroupProfile = new AzureNative.ContainerInstance.ContainerGroupProfile("containerGroupProfile", new()
///     {
///         ContainerGroupProfileName = "demo1",
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
///         EncryptionProperties = new AzureNative.ContainerInstance.Inputs.EncryptionPropertiesArgs
///         {
///             Identity = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/container-group-identity",
///             KeyName = "test-key",
///             KeyVersion = "<key version>",
///             VaultBaseUrl = "https://testkeyvault.vault.azure.net",
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
///             Type = AzureNative.ContainerInstance.ContainerGroupIpAddressType.Public,
///         },
///         Location = "eastus2",
///         OsType = AzureNative.ContainerInstance.OperatingSystemTypes.Linux,
///         ResourceGroupName = "demo",
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
/// 	containerinstance "github.com/pulumi/pulumi-azure-native-sdk/containerinstance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinstance.NewContainerGroupProfile(ctx, "containerGroupProfile", &containerinstance.ContainerGroupProfileArgs{
/// 			ContainerGroupProfileName: pulumi.String("demo1"),
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
/// 			EncryptionProperties: &containerinstance.EncryptionPropertiesArgs{
/// 				Identity:     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/container-group-identity"),
/// 				KeyName:      pulumi.String("test-key"),
/// 				KeyVersion:   pulumi.String("<key version>"),
/// 				VaultBaseUrl: pulumi.String("https://testkeyvault.vault.azure.net"),
/// 			},
/// 			ImageRegistryCredentials: containerinstance.ImageRegistryCredentialArray{},
/// 			IpAddress: &containerinstance.IpAddressArgs{
/// 				Ports: containerinstance.PortArray{
/// 					&containerinstance.PortArgs{
/// 						Port:     pulumi.Int(80),
/// 						Protocol: pulumi.String(containerinstance.ContainerGroupNetworkProtocolTCP),
/// 					},
/// 				},
/// 				Type: pulumi.String(containerinstance.ContainerGroupIpAddressTypePublic),
/// 			},
/// 			Location:          pulumi.String("eastus2"),
/// 			OsType:            pulumi.String(containerinstance.OperatingSystemTypesLinux),
/// 			ResourceGroupName: pulumi.String("demo"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerinstance_containergroupprofile" "containerGroupProfile" {
///   container_group_profile_name = "demo1"
///   containers {
///     command = []
///     image   = "nginx"
///     name    = "demo1"
///     ports {
///       port = 80
///     }
///     resources = {
///       requests = {
///         cpu          = 1
///         memory_in_gb = 1.5
///       }
///     }
///   }
///   encryption_properties = {
///     identity       = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/container-group-identity"
///     key_name       = "test-key"
///     key_version    = "<key version>"
///     vault_base_url = "https://testkeyvault.vault.azure.net"
///   }
///   ip_address = {
///     ports = [{
///       "port"     = 80
///       "protocol" = "TCP"
///     }]
///     type = "Public"
///   }
///   location            = "eastus2"
///   os_type             = "Linux"
///   resource_group_name = "demo"
///   zones               = ["1"]
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
/// import com.pulumi.azurenative.containerinstance.ContainerGroupProfile;
/// import com.pulumi.azurenative.containerinstance.ContainerGroupProfileArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ContainerArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequirementsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequestsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.EncryptionPropertiesArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.IpAddressArgs;
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
///         var containerGroupProfile = new ContainerGroupProfile("containerGroupProfile", ContainerGroupProfileArgs.builder()
///             .containerGroupProfileName("demo1")
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
///             .encryptionProperties(EncryptionPropertiesArgs.builder()
///                 .identity("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/container-group-identity")
///                 .keyName("test-key")
///                 .keyVersion("<key version>")
///                 .vaultBaseUrl("https://testkeyvault.vault.azure.net")
///                 .build())
///             .imageRegistryCredentials()
///             .ipAddress(IpAddressArgs.builder()
///                 .ports(PortArgs.builder()
///                     .port(80)
///                     .protocol("TCP")
///                     .build())
///                 .type("Public")
///                 .build())
///             .location("eastus2")
///             .osType("Linux")
///             .resourceGroupName("demo")
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
/// const containerGroupProfile = new azure_native.containerinstance.ContainerGroupProfile("containerGroupProfile", {
///     containerGroupProfileName: "demo1",
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
///     encryptionProperties: {
///         identity: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/container-group-identity",
///         keyName: "test-key",
///         keyVersion: "<key version>",
///         vaultBaseUrl: "https://testkeyvault.vault.azure.net",
///     },
///     imageRegistryCredentials: [],
///     ipAddress: {
///         ports: [{
///             port: 80,
///             protocol: azure_native.containerinstance.ContainerGroupNetworkProtocol.TCP,
///         }],
///         type: azure_native.containerinstance.ContainerGroupIpAddressType.Public,
///     },
///     location: "eastus2",
///     osType: azure_native.containerinstance.OperatingSystemTypes.Linux,
///     resourceGroupName: "demo",
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_group_profile = azure_native.containerinstance.ContainerGroupProfile("containerGroupProfile",
///     container_group_profile_name="demo1",
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
///                 "cpu": float(1),
///                 "memory_in_gb": 1.5,
///             },
///         },
///     }],
///     encryption_properties={
///         "identity": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/container-group-identity",
///         "key_name": "test-key",
///         "key_version": "<key version>",
///         "vault_base_url": "https://testkeyvault.vault.azure.net",
///     },
///     image_registry_credentials=[],
///     ip_address={
///         "ports": [{
///             "port": 80,
///             "protocol": azure_native.containerinstance.ContainerGroupNetworkProtocol.TCP,
///         }],
///         "type": azure_native.containerinstance.ContainerGroupIpAddressType.PUBLIC,
///     },
///     location="eastus2",
///     os_type=azure_native.containerinstance.OperatingSystemTypes.LINUX,
///     resource_group_name="demo",
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   containerGroupProfile:
///     type: azure-native:containerinstance:ContainerGroupProfile
///     properties:
///       containerGroupProfileName: demo1
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
///       encryptionProperties:
///         identity: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/test-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/container-group-identity
///         keyName: test-key
///         keyVersion: <key version>
///         vaultBaseUrl: https://testkeyvault.vault.azure.net
///       imageRegistryCredentials: []
///       ipAddress:
///         ports:
///           - port: 80
///             protocol: TCP
///         type: Public
///       location: eastus2
///       osType: Linux
///       resourceGroupName: demo
///       zones:
///         - '1'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ContainerGroupProfilesCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerGroupProfile = new AzureNative.ContainerInstance.ContainerGroupProfile("containerGroupProfile", new()
///     {
///         ContainerGroupProfileName = "demo1",
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
///                         Gpu = new AzureNative.ContainerInstance.Inputs.GpuResourceArgs
///                         {
///                             Count = 1,
///                             Sku = AzureNative.ContainerInstance.GpuSku.K80,
///                         },
///                         MemoryInGB = 1.5,
///                     },
///                 },
///                 VolumeMounts = new[]
///                 {
///                     new AzureNative.ContainerInstance.Inputs.VolumeMountArgs
///                     {
///                         MountPath = "/mnt/volume1",
///                         Name = "volume1",
///                         ReadOnly = false,
///                     },
///                     new AzureNative.ContainerInstance.Inputs.VolumeMountArgs
///                     {
///                         MountPath = "/mnt/volume2",
///                         Name = "volume2",
///                         ReadOnly = false,
///                     },
///                     new AzureNative.ContainerInstance.Inputs.VolumeMountArgs
///                     {
///                         MountPath = "/mnt/volume3",
///                         Name = "volume3",
///                         ReadOnly = true,
///                     },
///                 },
///             },
///         },
///         Diagnostics = new AzureNative.ContainerInstance.Inputs.ContainerGroupDiagnosticsArgs
///         {
///             LogAnalytics = new AzureNative.ContainerInstance.Inputs.LogAnalyticsArgs
///             {
///                 LogType = AzureNative.ContainerInstance.LogAnalyticsLogType.ContainerInsights,
///                 Metadata =
///                 {
///                     { "pod-uuid", "test-metadata-value" },
///                 },
///                 WorkspaceId = "workspaceid",
///                 WorkspaceKey = "workspaceKey",
///                 WorkspaceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/microsoft.operationalinsights/workspaces/workspace",
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
///             Type = AzureNative.ContainerInstance.ContainerGroupIpAddressType.Public,
///         },
///         Location = "west us",
///         OsType = AzureNative.ContainerInstance.OperatingSystemTypes.Linux,
///         ResourceGroupName = "demo",
///         Volumes = new[]
///         {
///             new AzureNative.ContainerInstance.Inputs.VolumeArgs
///             {
///                 AzureFile = new AzureNative.ContainerInstance.Inputs.AzureFileVolumeArgs
///                 {
///                     ShareName = "shareName",
///                     StorageAccountKey = "accountKey",
///                     StorageAccountName = "accountName",
///                 },
///                 Name = "volume1",
///             },
///             new AzureNative.ContainerInstance.Inputs.VolumeArgs
///             {
///                 EmptyDir = null,
///                 Name = "volume2",
///             },
///             new AzureNative.ContainerInstance.Inputs.VolumeArgs
///             {
///                 Name = "volume3",
///                 Secret =
///                 {
///                     { "secretKey1", "SecretValue1InBase64" },
///                     { "secretKey2", "SecretValue2InBase64" },
///                 },
///             },
///         },
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
/// 	containerinstance "github.com/pulumi/pulumi-azure-native-sdk/containerinstance/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerinstance.NewContainerGroupProfile(ctx, "containerGroupProfile", &containerinstance.ContainerGroupProfileArgs{
/// 			ContainerGroupProfileName: pulumi.String("demo1"),
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
/// 							Cpu: pulumi.Float64(1),
/// 							Gpu: &containerinstance.GpuResourceArgs{
/// 								Count: pulumi.Int(1),
/// 								Sku:   pulumi.String(containerinstance.GpuSkuK80),
/// 							},
/// 							MemoryInGB: pulumi.Float64(1.5),
/// 						},
/// 					},
/// 					VolumeMounts: containerinstance.VolumeMountArray{
/// 						&containerinstance.VolumeMountArgs{
/// 							MountPath: pulumi.String("/mnt/volume1"),
/// 							Name:      pulumi.String("volume1"),
/// 							ReadOnly:  pulumi.Bool(false),
/// 						},
/// 						&containerinstance.VolumeMountArgs{
/// 							MountPath: pulumi.String("/mnt/volume2"),
/// 							Name:      pulumi.String("volume2"),
/// 							ReadOnly:  pulumi.Bool(false),
/// 						},
/// 						&containerinstance.VolumeMountArgs{
/// 							MountPath: pulumi.String("/mnt/volume3"),
/// 							Name:      pulumi.String("volume3"),
/// 							ReadOnly:  pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Diagnostics: &containerinstance.ContainerGroupDiagnosticsArgs{
/// 				LogAnalytics: &containerinstance.LogAnalyticsArgs{
/// 					LogType: pulumi.String(containerinstance.LogAnalyticsLogTypeContainerInsights),
/// 					Metadata: pulumi.StringMap{
/// 						"pod-uuid": pulumi.String("test-metadata-value"),
/// 					},
/// 					WorkspaceId:         pulumi.String("workspaceid"),
/// 					WorkspaceKey:        pulumi.String("workspaceKey"),
/// 					WorkspaceResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/microsoft.operationalinsights/workspaces/workspace"),
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
/// 				Type: pulumi.String(containerinstance.ContainerGroupIpAddressTypePublic),
/// 			},
/// 			Location:          pulumi.String("west us"),
/// 			OsType:            pulumi.String(containerinstance.OperatingSystemTypesLinux),
/// 			ResourceGroupName: pulumi.String("demo"),
/// 			Volumes: containerinstance.VolumeArray{
/// 				&containerinstance.VolumeArgs{
/// 					AzureFile: &containerinstance.AzureFileVolumeArgs{
/// 						ShareName:          pulumi.String("shareName"),
/// 						StorageAccountKey:  pulumi.String("accountKey"),
/// 						StorageAccountName: pulumi.String("accountName"),
/// 					},
/// 					Name: pulumi.String("volume1"),
/// 				},
/// 				&containerinstance.VolumeArgs{
/// 					EmptyDir: pulumi.Any(map[string]interface{}{}),
/// 					Name:     pulumi.String("volume2"),
/// 				},
/// 				&containerinstance.VolumeArgs{
/// 					Name: pulumi.String("volume3"),
/// 					Secret: pulumi.StringMap{
/// 						"secretKey1": pulumi.String("SecretValue1InBase64"),
/// 						"secretKey2": pulumi.String("SecretValue2InBase64"),
/// 					},
/// 				},
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerinstance_containergroupprofile" "containerGroupProfile" {
///   container_group_profile_name = "demo1"
///   containers {
///     command = []
///     image   = "nginx"
///     name    = "demo1"
///     ports {
///       port = 80
///     }
///     resources = {
///       requests = {
///         cpu = 1
///         gpu = {
///           count = 1
///           sku   = "K80"
///         }
///         memory_in_gb = 1.5
///       }
///     }
///     volume_mounts {
///       mount_path = "/mnt/volume1"
///       name       = "volume1"
///       read_only  = false
///     }
///     volume_mounts {
///       mount_path = "/mnt/volume2"
///       name       = "volume2"
///       read_only  = false
///     }
///     volume_mounts {
///       mount_path = "/mnt/volume3"
///       name       = "volume3"
///       read_only  = true
///     }
///   }
///   diagnostics = {
///     log_analytics = {
///       log_type = "ContainerInsights"
///       metadata = {
///         "pod-uuid" = "test-metadata-value"
///       }
///       workspace_id          = "workspaceid"
///       workspace_key         = "workspaceKey"
///       workspace_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/microsoft.operationalinsights/workspaces/workspace"
///     }
///   }
///   ip_address = {
///     ports = [{
///       "port"     = 80
///       "protocol" = "TCP"
///     }]
///     type = "Public"
///   }
///   location            = "west us"
///   os_type             = "Linux"
///   resource_group_name = "demo"
///   volumes {
///     azure_file = {
///       share_name           = "shareName"
///       storage_account_key  = "accountKey"
///       storage_account_name = "accountName"
///     }
///     name = "volume1"
///   }
///   volumes {
///     empty_dir = {}
///     name      = "volume2"
///   }
///   volumes {
///     name = "volume3"
///     secret = {
///       "secretKey1" = "SecretValue1InBase64"
///       "secretKey2" = "SecretValue2InBase64"
///     }
///   }
///   zones = ["1"]
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
/// import com.pulumi.azurenative.containerinstance.ContainerGroupProfile;
/// import com.pulumi.azurenative.containerinstance.ContainerGroupProfileArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ContainerArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequirementsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequestsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.GpuResourceArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ContainerGroupDiagnosticsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.LogAnalyticsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.IpAddressArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.VolumeArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.AzureFileVolumeArgs;
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
///         var containerGroupProfile = new ContainerGroupProfile("containerGroupProfile", ContainerGroupProfileArgs.builder()
///             .containerGroupProfileName("demo1")
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
///                         .gpu(GpuResourceArgs.builder()
///                             .count(1)
///                             .sku("K80")
///                             .build())
///                         .memoryInGB(1.5)
///                         .build())
///                     .build())
///                 .volumeMounts(
///                     VolumeMountArgs.builder()
///                         .mountPath("/mnt/volume1")
///                         .name("volume1")
///                         .readOnly(false)
///                         .build(),
///                     VolumeMountArgs.builder()
///                         .mountPath("/mnt/volume2")
///                         .name("volume2")
///                         .readOnly(false)
///                         .build(),
///                     VolumeMountArgs.builder()
///                         .mountPath("/mnt/volume3")
///                         .name("volume3")
///                         .readOnly(true)
///                         .build())
///                 .build())
///             .diagnostics(ContainerGroupDiagnosticsArgs.builder()
///                 .logAnalytics(LogAnalyticsArgs.builder()
///                     .logType("ContainerInsights")
///                     .metadata(Map.of("pod-uuid", "test-metadata-value"))
///                     .workspaceId("workspaceid")
///                     .workspaceKey("workspaceKey")
///                     .workspaceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/microsoft.operationalinsights/workspaces/workspace")
///                     .build())
///                 .build())
///             .imageRegistryCredentials()
///             .ipAddress(IpAddressArgs.builder()
///                 .ports(PortArgs.builder()
///                     .port(80)
///                     .protocol("TCP")
///                     .build())
///                 .type("Public")
///                 .build())
///             .location("west us")
///             .osType("Linux")
///             .resourceGroupName("demo")
///             .volumes(
///                 VolumeArgs.builder()
///                     .azureFile(AzureFileVolumeArgs.builder()
///                         .shareName("shareName")
///                         .storageAccountKey("accountKey")
///                         .storageAccountName("accountName")
///                         .build())
///                     .name("volume1")
///                     .build(),
///                 VolumeArgs.builder()
///                     .emptyDir(Map.ofEntries(
///                     ))
///                     .name("volume2")
///                     .build(),
///                 VolumeArgs.builder()
///                     .name("volume3")
///                     .secret(Map.ofEntries(
///                         Map.entry("secretKey1", "SecretValue1InBase64"),
///                         Map.entry("secretKey2", "SecretValue2InBase64")
///                     ))
///                     .build())
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
/// const containerGroupProfile = new azure_native.containerinstance.ContainerGroupProfile("containerGroupProfile", {
///     containerGroupProfileName: "demo1",
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
///                 gpu: {
///                     count: 1,
///                     sku: azure_native.containerinstance.GpuSku.K80,
///                 },
///                 memoryInGB: 1.5,
///             },
///         },
///         volumeMounts: [
///             {
///                 mountPath: "/mnt/volume1",
///                 name: "volume1",
///                 readOnly: false,
///             },
///             {
///                 mountPath: "/mnt/volume2",
///                 name: "volume2",
///                 readOnly: false,
///             },
///             {
///                 mountPath: "/mnt/volume3",
///                 name: "volume3",
///                 readOnly: true,
///             },
///         ],
///     }],
///     diagnostics: {
///         logAnalytics: {
///             logType: azure_native.containerinstance.LogAnalyticsLogType.ContainerInsights,
///             metadata: {
///                 "pod-uuid": "test-metadata-value",
///             },
///             workspaceId: "workspaceid",
///             workspaceKey: "workspaceKey",
///             workspaceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/microsoft.operationalinsights/workspaces/workspace",
///         },
///     },
///     imageRegistryCredentials: [],
///     ipAddress: {
///         ports: [{
///             port: 80,
///             protocol: azure_native.containerinstance.ContainerGroupNetworkProtocol.TCP,
///         }],
///         type: azure_native.containerinstance.ContainerGroupIpAddressType.Public,
///     },
///     location: "west us",
///     osType: azure_native.containerinstance.OperatingSystemTypes.Linux,
///     resourceGroupName: "demo",
///     volumes: [
///         {
///             azureFile: {
///                 shareName: "shareName",
///                 storageAccountKey: "accountKey",
///                 storageAccountName: "accountName",
///             },
///             name: "volume1",
///         },
///         {
///             emptyDir: {},
///             name: "volume2",
///         },
///         {
///             name: "volume3",
///             secret: {
///                 secretKey1: "SecretValue1InBase64",
///                 secretKey2: "SecretValue2InBase64",
///             },
///         },
///     ],
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_group_profile = azure_native.containerinstance.ContainerGroupProfile("containerGroupProfile",
///     container_group_profile_name="demo1",
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
///                 "cpu": float(1),
///                 "gpu": {
///                     "count": 1,
///                     "sku": azure_native.containerinstance.GpuSku.K80,
///                 },
///                 "memory_in_gb": 1.5,
///             },
///         },
///         "volume_mounts": [
///             {
///                 "mount_path": "/mnt/volume1",
///                 "name": "volume1",
///                 "read_only": False,
///             },
///             {
///                 "mount_path": "/mnt/volume2",
///                 "name": "volume2",
///                 "read_only": False,
///             },
///             {
///                 "mount_path": "/mnt/volume3",
///                 "name": "volume3",
///                 "read_only": True,
///             },
///         ],
///     }],
///     diagnostics={
///         "log_analytics": {
///             "log_type": azure_native.containerinstance.LogAnalyticsLogType.CONTAINER_INSIGHTS,
///             "metadata": {
///                 "pod-uuid": "test-metadata-value",
///             },
///             "workspace_id": "workspaceid",
///             "workspace_key": "workspaceKey",
///             "workspace_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/microsoft.operationalinsights/workspaces/workspace",
///         },
///     },
///     image_registry_credentials=[],
///     ip_address={
///         "ports": [{
///             "port": 80,
///             "protocol": azure_native.containerinstance.ContainerGroupNetworkProtocol.TCP,
///         }],
///         "type": azure_native.containerinstance.ContainerGroupIpAddressType.PUBLIC,
///     },
///     location="west us",
///     os_type=azure_native.containerinstance.OperatingSystemTypes.LINUX,
///     resource_group_name="demo",
///     volumes=[
///         {
///             "azure_file": {
///                 "share_name": "shareName",
///                 "storage_account_key": "accountKey",
///                 "storage_account_name": "accountName",
///             },
///             "name": "volume1",
///         },
///         {
///             "empty_dir": {},
///             "name": "volume2",
///         },
///         {
///             "name": "volume3",
///             "secret": {
///                 "secretKey1": "SecretValue1InBase64",
///                 "secretKey2": "SecretValue2InBase64",
///             },
///         },
///     ],
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   containerGroupProfile:
///     type: azure-native:containerinstance:ContainerGroupProfile
///     properties:
///       containerGroupProfileName: demo1
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
///               gpu:
///                 count: 1
///                 sku: K80
///               memoryInGB: 1.5
///           volumeMounts:
///             - mountPath: /mnt/volume1
///               name: volume1
///               readOnly: false
///             - mountPath: /mnt/volume2
///               name: volume2
///               readOnly: false
///             - mountPath: /mnt/volume3
///               name: volume3
///               readOnly: true
///       diagnostics:
///         logAnalytics:
///           logType: ContainerInsights
///           metadata:
///             pod-uuid: test-metadata-value
///           workspaceId: workspaceid
///           workspaceKey: workspaceKey
///           workspaceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/rg/providers/microsoft.operationalinsights/workspaces/workspace
///       imageRegistryCredentials: []
///       ipAddress:
///         ports:
///           - port: 80
///             protocol: TCP
///         type: Public
///       location: west us
///       osType: Linux
///       resourceGroupName: demo
///       volumes:
///         - azureFile:
///             shareName: shareName
///             storageAccountKey: accountKey
///             storageAccountName: accountName
///           name: volume1
///         - emptyDir: {}
///           name: volume2
///         - name: volume3
///           secret:
///             secretKey1: SecretValue1InBase64
///             secretKey2: SecretValue2InBase64
///       zones:
///         - '1'
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
///     var containerGroupProfile = new AzureNative.ContainerInstance.ContainerGroupProfile("containerGroupProfile", new()
///     {
///         ContainerGroupProfileName = "demo1",
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
/// 		_, err := containerinstance.NewContainerGroupProfile(ctx, "containerGroupProfile", &containerinstance.ContainerGroupProfileArgs{
/// 			ContainerGroupProfileName: pulumi.String("demo1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_containerinstance_containergroupprofile" "containerGroupProfile" {
///   container_group_profile_name = "demo1"
///   containers {
///     command = ["/bin/sh", "-c", "sleep 10"]
///     image   = "alpine:latest"
///     name    = "test-container-001"
///     resources = {
///       requests = {
///         cpu          = 1
///         memory_in_gb = 1
///       }
///     }
///   }
///   location            = "eastus"
///   os_type             = "Linux"
///   priority            = "Spot"
///   resource_group_name = "demo"
///   restart_policy      = "Never"
///   sku                 = "Standard"
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
/// import com.pulumi.azurenative.containerinstance.ContainerGroupProfile;
/// import com.pulumi.azurenative.containerinstance.ContainerGroupProfileArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ContainerArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequirementsArgs;
/// import com.pulumi.azurenative.containerinstance.inputs.ResourceRequestsArgs;
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
///         var containerGroupProfile = new ContainerGroupProfile("containerGroupProfile", ContainerGroupProfileArgs.builder()
///             .containerGroupProfileName("demo1")
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
/// const containerGroupProfile = new azure_native.containerinstance.ContainerGroupProfile("containerGroupProfile", {
///     containerGroupProfileName: "demo1",
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
/// container_group_profile = azure_native.containerinstance.ContainerGroupProfile("containerGroupProfile",
///     container_group_profile_name="demo1",
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
///                 "cpu": float(1),
///                 "memory_in_gb": float(1),
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
///   containerGroupProfile:
///     type: azure-native:containerinstance:ContainerGroupProfile
///     properties:
///       containerGroupProfileName: demo1
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
/// $ pulumi import azure-native:containerinstance:ContainerGroupProfile demo1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerInstance/containerGroupProfiles/{containerGroupProfileName}
/// ```
class ContainerGroupProfile extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The properties for confidential container group
  late final pulumi.Output<ConfidentialComputePropertiesResponse?> confidentialComputeProperties;
  /// The containers within the container group.
  late final pulumi.Output<List<ContainerContainerGroupProfileResponse>> containers;
  /// The diagnostic information for a container group.
  late final pulumi.Output<ContainerGroupDiagnosticsResponse?> diagnostics;
  /// The encryption properties for a container group.
  late final pulumi.Output<EncryptionPropertiesResponse?> encryptionProperties;
  /// extensions used by virtual kubelet
  late final pulumi.Output<List<DeploymentExtensionSpecResponse>?> extensions;
  /// The image registry credentials by which the container group is created from.
  late final pulumi.Output<List<ImageRegistryCredentialContainerGroupProfileResponse>?> imageRegistryCredentials;
  /// The init containers for a container group.
  late final pulumi.Output<List<InitContainerDefinitionContainerGroupProfileResponse>?> initContainers;
  /// The IP address type of the container group.
  late final pulumi.Output<IpAddressResponse?> ipAddress;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The operating system type required by the containers in the container group.
  late final pulumi.Output<String> osType;
  /// The priority of the container group.
  late final pulumi.Output<String?> priority;
  /// Restart policy for all containers within the container group.
  /// - `Always` Always restart
  /// - `OnFailure` Restart on failure
  /// - `Never` Never restart
  late final pulumi.Output<String?> restartPolicy;
  /// The container group profile current revision number. This only appears in the response.
  late final pulumi.Output<int> revision;
  /// The SKU for a container group.
  late final pulumi.Output<String?> sku;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The resource type.
  late final pulumi.Output<String> type;
  /// The list of volumes that can be mounted by containers in this container group.
  late final pulumi.Output<List<VolumeContainerGroupProfileResponse>?> volumes;
  /// The zones for the container group.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [ContainerGroupProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerGroupProfile]. {@macro pulumi_containerinstance_container_group_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerGroupProfile(
    String name, {
    ContainerGroupProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerinstance:ContainerGroupProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    confidentialComputeProperties = registerOutput<ConfidentialComputePropertiesResponse?>('confidentialComputeProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfidentialComputePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    containers = registerOutput<List<ContainerContainerGroupProfileResponse>>('containers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerContainerGroupProfileResponse>(guardedValue, (value) => ContainerContainerGroupProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    diagnostics = registerOutput<ContainerGroupDiagnosticsResponse?>('diagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerGroupDiagnosticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encryptionProperties = registerOutput<EncryptionPropertiesResponse?>('encryptionProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extensions = registerOutput<List<DeploymentExtensionSpecResponse>?>('extensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeploymentExtensionSpecResponse>(guardedValue, (value) => DeploymentExtensionSpecResponse.fromMap((value as Map).cast<String, dynamic>())); });
    imageRegistryCredentials = registerOutput<List<ImageRegistryCredentialContainerGroupProfileResponse>?>('imageRegistryCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageRegistryCredentialContainerGroupProfileResponse>(guardedValue, (value) => ImageRegistryCredentialContainerGroupProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    initContainers = registerOutput<List<InitContainerDefinitionContainerGroupProfileResponse>?>('initContainers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InitContainerDefinitionContainerGroupProfileResponse>(guardedValue, (value) => InitContainerDefinitionContainerGroupProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    ipAddress = registerOutput<IpAddressResponse?>('ipAddress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IpAddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String>('osType');
    priority = registerOutput<String?>('priority');
    restartPolicy = registerOutput<String?>('restartPolicy');
    revision = registerOutput<int>('revision');
    sku = registerOutput<String?>('sku');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    volumes = registerOutput<List<VolumeContainerGroupProfileResponse>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeContainerGroupProfileResponse>(guardedValue, (value) => VolumeContainerGroupProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [ContainerGroupProfile] resource.
  ContainerGroupProfile.reference(String urn)
    : super(
        'azure-native:containerinstance:ContainerGroupProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    confidentialComputeProperties = registerOutput<ConfidentialComputePropertiesResponse?>('confidentialComputeProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfidentialComputePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    containers = registerOutput<List<ContainerContainerGroupProfileResponse>>('containers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ContainerContainerGroupProfileResponse>(guardedValue, (value) => ContainerContainerGroupProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    diagnostics = registerOutput<ContainerGroupDiagnosticsResponse?>('diagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContainerGroupDiagnosticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encryptionProperties = registerOutput<EncryptionPropertiesResponse?>('encryptionProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    extensions = registerOutput<List<DeploymentExtensionSpecResponse>?>('extensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeploymentExtensionSpecResponse>(guardedValue, (value) => DeploymentExtensionSpecResponse.fromMap((value as Map).cast<String, dynamic>())); });
    imageRegistryCredentials = registerOutput<List<ImageRegistryCredentialContainerGroupProfileResponse>?>('imageRegistryCredentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageRegistryCredentialContainerGroupProfileResponse>(guardedValue, (value) => ImageRegistryCredentialContainerGroupProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    initContainers = registerOutput<List<InitContainerDefinitionContainerGroupProfileResponse>?>('initContainers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<InitContainerDefinitionContainerGroupProfileResponse>(guardedValue, (value) => InitContainerDefinitionContainerGroupProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    ipAddress = registerOutput<IpAddressResponse?>('ipAddress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IpAddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String>('osType');
    priority = registerOutput<String?>('priority');
    restartPolicy = registerOutput<String?>('restartPolicy');
    revision = registerOutput<int>('revision');
    sku = registerOutput<String?>('sku');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    volumes = registerOutput<List<VolumeContainerGroupProfileResponse>?>('volumes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeContainerGroupProfileResponse>(guardedValue, (value) => VolumeContainerGroupProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
