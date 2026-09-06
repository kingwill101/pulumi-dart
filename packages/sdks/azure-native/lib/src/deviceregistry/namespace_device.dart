import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_status_response.dart';
import 'extended_location_response.dart';
import 'messaging_endpoints_response.dart';
import 'namespace_device_args.dart';
import 'system_data_response.dart';

/// Device definition.
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-10-01, 2025-11-01-preview, 2026-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native deviceregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create edge enabled device with UsernamesPassword inbound authentication.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var namespaceDevice = new AzureNative.DeviceRegistry.NamespaceDevice("namespaceDevice", new()
///     {
///         Attributes = new Dictionary<string, object?>
///         {
///             ["deviceCategory"] = 16,
///             ["deviceOwner"] = "IT",
///             ["deviceType"] = "sensor",
///         },
///         DeviceName = "namespace-device-on-edge",
///         Enabled = true,
///         Endpoints = new AzureNative.DeviceRegistry.Inputs.MessagingEndpointsArgs
///         {
///             Inbound =
///             {
///                 { "theOnlyOPCUABroker", new AzureNative.DeviceRegistry.Inputs.InboundEndpointsArgs
///                 {
///                     Address = "opc.tcp://192.168.86.23:51211/UA/SampleServer",
///                     Authentication = new AzureNative.DeviceRegistry.Inputs.HostAuthenticationArgs
///                     {
///                         Method = AzureNative.DeviceRegistry.AuthenticationMethod.UsernamePassword,
///                         UsernamePasswordCredentials = new AzureNative.DeviceRegistry.Inputs.UsernamePasswordCredentialsArgs
///                         {
///                             PasswordSecretName = "pwd-ref",
///                             UsernameSecretName = "user-ref",
///                         },
///                     },
///                     EndpointType = "microsoft.opcua/v1",
///                     Version = "2",
///                 } },
///             },
///         },
///         ExtendedLocation = new AzureNative.DeviceRegistry.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///             Type = "CustomLocation",
///         },
///         ExternalDeviceId = "unique-edge-device-identifier",
///         Location = "West Europe",
///         NamespaceName = "adr-namespace-gbk0925-n01",
///         ResourceGroupName = "myResourceGroup",
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
/// 	deviceregistry "github.com/pulumi/pulumi-azure-native-sdk/deviceregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceregistry.NewNamespaceDevice(ctx, "namespaceDevice", &deviceregistry.NamespaceDeviceArgs{
/// 			Attributes: pulumi.Any(map[string]interface{}{
/// 				"deviceCategory": 16,
/// 				"deviceOwner":    "IT",
/// 				"deviceType":     "sensor",
/// 			}),
/// 			DeviceName: pulumi.String("namespace-device-on-edge"),
/// 			Enabled:    pulumi.Bool(true),
/// 			Endpoints: &deviceregistry.MessagingEndpointsArgs{
/// 				Inbound: deviceregistry.InboundEndpointsMap{
/// 					"theOnlyOPCUABroker": &deviceregistry.InboundEndpointsArgs{
/// 						Address: pulumi.String("opc.tcp://192.168.86.23:51211/UA/SampleServer"),
/// 						Authentication: &deviceregistry.HostAuthenticationArgs{
/// 							Method: pulumi.String(deviceregistry.AuthenticationMethodUsernamePassword),
/// 							UsernamePasswordCredentials: &deviceregistry.UsernamePasswordCredentialsArgs{
/// 								PasswordSecretName: pulumi.String("pwd-ref"),
/// 								UsernameSecretName: pulumi.String("user-ref"),
/// 							},
/// 						},
/// 						EndpointType: pulumi.String("microsoft.opcua/v1"),
/// 						Version:      pulumi.String("2"),
/// 					},
/// 				},
/// 			},
/// 			ExtendedLocation: &deviceregistry.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			ExternalDeviceId:  pulumi.String("unique-edge-device-identifier"),
/// 			Location:          pulumi.String("West Europe"),
/// 			NamespaceName:     pulumi.String("adr-namespace-gbk0925-n01"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_deviceregistry_namespacedevice" "namespaceDevice" {
///   attributes = {
///     "deviceCategory" = 16
///     "deviceOwner"    = "IT"
///     "deviceType"     = "sensor"
///   }
///   device_name = "namespace-device-on-edge"
///   enabled     = true
///   endpoints = {
///     inbound = {
///       "theOnlyOPCUABroker" = {
///         address = "opc.tcp://192.168.86.23:51211/UA/SampleServer"
///         authentication = {
///           method = "UsernamePassword"
///           username_password_credentials = {
///             password_secret_name = "pwd-ref"
///             username_secret_name = "user-ref"
///           }
///         }
///         endpoint_type = "microsoft.opcua/v1"
///         version       = "2"
///       }
///     }
///   }
///   extended_location = {
///     name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"
///     type = "CustomLocation"
///   }
///   external_device_id  = "unique-edge-device-identifier"
///   location            = "West Europe"
///   namespace_name      = "adr-namespace-gbk0925-n01"
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.deviceregistry.NamespaceDevice;
/// import com.pulumi.azurenative.deviceregistry.NamespaceDeviceArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.MessagingEndpointsArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.ExtendedLocationArgs;
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
///         var namespaceDevice = new NamespaceDevice("namespaceDevice", NamespaceDeviceArgs.builder()
///             .attributes(Map.ofEntries(
///                 Map.entry("deviceCategory", 16),
///                 Map.entry("deviceOwner", "IT"),
///                 Map.entry("deviceType", "sensor")
///             ))
///             .deviceName("namespace-device-on-edge")
///             .enabled(true)
///             .endpoints(MessagingEndpointsArgs.builder()
///                 .inbound(Map.of("theOnlyOPCUABroker", InboundEndpointsArgs.builder()
///                     .address("opc.tcp://192.168.86.23:51211/UA/SampleServer")
///                     .authentication(HostAuthenticationArgs.builder()
///                         .method("UsernamePassword")
///                         .usernamePasswordCredentials(UsernamePasswordCredentialsArgs.builder()
///                             .passwordSecretName("pwd-ref")
///                             .usernameSecretName("user-ref")
///                             .build())
///                         .build())
///                     .endpointType("microsoft.opcua/v1")
///                     .version("2")
///                     .build()))
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1")
///                 .type("CustomLocation")
///                 .build())
///             .externalDeviceId("unique-edge-device-identifier")
///             .location("West Europe")
///             .namespaceName("adr-namespace-gbk0925-n01")
///             .resourceGroupName("myResourceGroup")
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
/// const namespaceDevice = new azure_native.deviceregistry.NamespaceDevice("namespaceDevice", {
///     attributes: {
///         deviceCategory: 16,
///         deviceOwner: "IT",
///         deviceType: "sensor",
///     },
///     deviceName: "namespace-device-on-edge",
///     enabled: true,
///     endpoints: {
///         inbound: {
///             theOnlyOPCUABroker: {
///                 address: "opc.tcp://192.168.86.23:51211/UA/SampleServer",
///                 authentication: {
///                     method: azure_native.deviceregistry.AuthenticationMethod.UsernamePassword,
///                     usernamePasswordCredentials: {
///                         passwordSecretName: "pwd-ref",
///                         usernameSecretName: "user-ref",
///                     },
///                 },
///                 endpointType: "microsoft.opcua/v1",
///                 version: "2",
///             },
///         },
///     },
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         type: "CustomLocation",
///     },
///     externalDeviceId: "unique-edge-device-identifier",
///     location: "West Europe",
///     namespaceName: "adr-namespace-gbk0925-n01",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace_device = azure_native.deviceregistry.NamespaceDevice("namespaceDevice",
///     attributes={
///         "deviceCategory": 16,
///         "deviceOwner": "IT",
///         "deviceType": "sensor",
///     },
///     device_name="namespace-device-on-edge",
///     enabled=True,
///     endpoints={
///         "inbound": {
///             "theOnlyOPCUABroker": {
///                 "address": "opc.tcp://192.168.86.23:51211/UA/SampleServer",
///                 "authentication": {
///                     "method": azure_native.deviceregistry.AuthenticationMethod.USERNAME_PASSWORD,
///                     "username_password_credentials": {
///                         "password_secret_name": "pwd-ref",
///                         "username_secret_name": "user-ref",
///                     },
///                 },
///                 "endpoint_type": "microsoft.opcua/v1",
///                 "version": "2",
///             },
///         },
///     },
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         "type": "CustomLocation",
///     },
///     external_device_id="unique-edge-device-identifier",
///     location="West Europe",
///     namespace_name="adr-namespace-gbk0925-n01",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   namespaceDevice:
///     type: azure-native:deviceregistry:NamespaceDevice
///     properties:
///       attributes:
///         deviceCategory: 16
///         deviceOwner: IT
///         deviceType: sensor
///       deviceName: namespace-device-on-edge
///       enabled: true
///       endpoints:
///         inbound:
///           theOnlyOPCUABroker:
///             address: opc.tcp://192.168.86.23:51211/UA/SampleServer
///             authentication:
///               method: UsernamePassword
///               usernamePasswordCredentials:
///                 passwordSecretName: pwd-ref
///                 usernameSecretName: user-ref
///             endpointType: microsoft.opcua/v1
///             version: '2'
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1
///         type: CustomLocation
///       externalDeviceId: unique-edge-device-identifier
///       location: West Europe
///       namespaceName: adr-namespace-gbk0925-n01
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create edge enabled device with anonymous host authentication.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var namespaceDevice = new AzureNative.DeviceRegistry.NamespaceDevice("namespaceDevice", new()
///     {
///         Attributes = new Dictionary<string, object?>
///         {
///             ["deviceCategory"] = 16,
///             ["deviceOwner"] = "OT",
///             ["deviceType"] = "dough-maker",
///         },
///         DeviceName = "namespace-device-on-edge",
///         Enabled = true,
///         Endpoints = new AzureNative.DeviceRegistry.Inputs.MessagingEndpointsArgs
///         {
///             Inbound =
///             {
///                 { "theOnlyOPCUABroker", new AzureNative.DeviceRegistry.Inputs.InboundEndpointsArgs
///                 {
///                     Address = "opc.tcp://192.168.86.23:51211/UA/SampleServer",
///                     Authentication = new AzureNative.DeviceRegistry.Inputs.HostAuthenticationArgs
///                     {
///                         Method = AzureNative.DeviceRegistry.AuthenticationMethod.Anonymous,
///                     },
///                     EndpointType = "microsoft.opcua/v1",
///                     Version = "2",
///                 } },
///             },
///         },
///         ExtendedLocation = new AzureNative.DeviceRegistry.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///             Type = "CustomLocation",
///         },
///         ExternalDeviceId = "unique-edge-device-identifier",
///         Location = "West Europe",
///         NamespaceName = "adr-namespace-gbk0925-n01",
///         ResourceGroupName = "myResourceGroup",
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
/// 	deviceregistry "github.com/pulumi/pulumi-azure-native-sdk/deviceregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceregistry.NewNamespaceDevice(ctx, "namespaceDevice", &deviceregistry.NamespaceDeviceArgs{
/// 			Attributes: pulumi.Any(map[string]interface{}{
/// 				"deviceCategory": 16,
/// 				"deviceOwner":    "OT",
/// 				"deviceType":     "dough-maker",
/// 			}),
/// 			DeviceName: pulumi.String("namespace-device-on-edge"),
/// 			Enabled:    pulumi.Bool(true),
/// 			Endpoints: &deviceregistry.MessagingEndpointsArgs{
/// 				Inbound: deviceregistry.InboundEndpointsMap{
/// 					"theOnlyOPCUABroker": &deviceregistry.InboundEndpointsArgs{
/// 						Address: pulumi.String("opc.tcp://192.168.86.23:51211/UA/SampleServer"),
/// 						Authentication: &deviceregistry.HostAuthenticationArgs{
/// 							Method: pulumi.String(deviceregistry.AuthenticationMethodAnonymous),
/// 						},
/// 						EndpointType: pulumi.String("microsoft.opcua/v1"),
/// 						Version:      pulumi.String("2"),
/// 					},
/// 				},
/// 			},
/// 			ExtendedLocation: &deviceregistry.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			ExternalDeviceId:  pulumi.String("unique-edge-device-identifier"),
/// 			Location:          pulumi.String("West Europe"),
/// 			NamespaceName:     pulumi.String("adr-namespace-gbk0925-n01"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_deviceregistry_namespacedevice" "namespaceDevice" {
///   attributes = {
///     "deviceCategory" = 16
///     "deviceOwner"    = "OT"
///     "deviceType"     = "dough-maker"
///   }
///   device_name = "namespace-device-on-edge"
///   enabled     = true
///   endpoints = {
///     inbound = {
///       "theOnlyOPCUABroker" = {
///         address = "opc.tcp://192.168.86.23:51211/UA/SampleServer"
///         authentication = {
///           method = "Anonymous"
///         }
///         endpoint_type = "microsoft.opcua/v1"
///         version       = "2"
///       }
///     }
///   }
///   extended_location = {
///     name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"
///     type = "CustomLocation"
///   }
///   external_device_id  = "unique-edge-device-identifier"
///   location            = "West Europe"
///   namespace_name      = "adr-namespace-gbk0925-n01"
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.deviceregistry.NamespaceDevice;
/// import com.pulumi.azurenative.deviceregistry.NamespaceDeviceArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.MessagingEndpointsArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.ExtendedLocationArgs;
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
///         var namespaceDevice = new NamespaceDevice("namespaceDevice", NamespaceDeviceArgs.builder()
///             .attributes(Map.ofEntries(
///                 Map.entry("deviceCategory", 16),
///                 Map.entry("deviceOwner", "OT"),
///                 Map.entry("deviceType", "dough-maker")
///             ))
///             .deviceName("namespace-device-on-edge")
///             .enabled(true)
///             .endpoints(MessagingEndpointsArgs.builder()
///                 .inbound(Map.of("theOnlyOPCUABroker", InboundEndpointsArgs.builder()
///                     .address("opc.tcp://192.168.86.23:51211/UA/SampleServer")
///                     .authentication(HostAuthenticationArgs.builder()
///                         .method("Anonymous")
///                         .build())
///                     .endpointType("microsoft.opcua/v1")
///                     .version("2")
///                     .build()))
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1")
///                 .type("CustomLocation")
///                 .build())
///             .externalDeviceId("unique-edge-device-identifier")
///             .location("West Europe")
///             .namespaceName("adr-namespace-gbk0925-n01")
///             .resourceGroupName("myResourceGroup")
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
/// const namespaceDevice = new azure_native.deviceregistry.NamespaceDevice("namespaceDevice", {
///     attributes: {
///         deviceCategory: 16,
///         deviceOwner: "OT",
///         deviceType: "dough-maker",
///     },
///     deviceName: "namespace-device-on-edge",
///     enabled: true,
///     endpoints: {
///         inbound: {
///             theOnlyOPCUABroker: {
///                 address: "opc.tcp://192.168.86.23:51211/UA/SampleServer",
///                 authentication: {
///                     method: azure_native.deviceregistry.AuthenticationMethod.Anonymous,
///                 },
///                 endpointType: "microsoft.opcua/v1",
///                 version: "2",
///             },
///         },
///     },
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         type: "CustomLocation",
///     },
///     externalDeviceId: "unique-edge-device-identifier",
///     location: "West Europe",
///     namespaceName: "adr-namespace-gbk0925-n01",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace_device = azure_native.deviceregistry.NamespaceDevice("namespaceDevice",
///     attributes={
///         "deviceCategory": 16,
///         "deviceOwner": "OT",
///         "deviceType": "dough-maker",
///     },
///     device_name="namespace-device-on-edge",
///     enabled=True,
///     endpoints={
///         "inbound": {
///             "theOnlyOPCUABroker": {
///                 "address": "opc.tcp://192.168.86.23:51211/UA/SampleServer",
///                 "authentication": {
///                     "method": azure_native.deviceregistry.AuthenticationMethod.ANONYMOUS,
///                 },
///                 "endpoint_type": "microsoft.opcua/v1",
///                 "version": "2",
///             },
///         },
///     },
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         "type": "CustomLocation",
///     },
///     external_device_id="unique-edge-device-identifier",
///     location="West Europe",
///     namespace_name="adr-namespace-gbk0925-n01",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   namespaceDevice:
///     type: azure-native:deviceregistry:NamespaceDevice
///     properties:
///       attributes:
///         deviceCategory: 16
///         deviceOwner: OT
///         deviceType: dough-maker
///       deviceName: namespace-device-on-edge
///       enabled: true
///       endpoints:
///         inbound:
///           theOnlyOPCUABroker:
///             address: opc.tcp://192.168.86.23:51211/UA/SampleServer
///             authentication:
///               method: Anonymous
///             endpointType: microsoft.opcua/v1
///             version: '2'
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1
///         type: CustomLocation
///       externalDeviceId: unique-edge-device-identifier
///       location: West Europe
///       namespaceName: adr-namespace-gbk0925-n01
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create edge enabled device with x509 inbound authentication.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var namespaceDevice = new AzureNative.DeviceRegistry.NamespaceDevice("namespaceDevice", new()
///     {
///         Attributes = new Dictionary<string, object?>
///         {
///             ["deviceCategory"] = 16,
///             ["deviceOwner"] = "OT",
///             ["deviceType"] = "OPCUAServers",
///         },
///         DeviceName = "namespace-device-on-edge",
///         Enabled = true,
///         Endpoints = new AzureNative.DeviceRegistry.Inputs.MessagingEndpointsArgs
///         {
///             Inbound =
///             {
///                 { "theV1OPCUAEndpoint", new AzureNative.DeviceRegistry.Inputs.InboundEndpointsArgs
///                 {
///                     Address = "opc.tcp://192.168.86.23:51211/UA/SampleServer",
///                     Authentication = new AzureNative.DeviceRegistry.Inputs.HostAuthenticationArgs
///                     {
///                         Method = AzureNative.DeviceRegistry.AuthenticationMethod.Certificate,
///                         X509Credentials = new AzureNative.DeviceRegistry.Inputs.X509CredentialsArgs
///                         {
///                             CertificateSecretName = "cert-secret",
///                         },
///                     },
///                     EndpointType = "microsoft.opcua/v1",
///                     Version = "2",
///                 } },
///                 { "theV2OPCUAEndpoint", new AzureNative.DeviceRegistry.Inputs.InboundEndpointsArgs
///                 {
///                     Address = "opc.tcp://192.168.86.23:51211/UA/SampleServer",
///                     Authentication = new AzureNative.DeviceRegistry.Inputs.HostAuthenticationArgs
///                     {
///                         Method = AzureNative.DeviceRegistry.AuthenticationMethod.Certificate,
///                         X509Credentials = new AzureNative.DeviceRegistry.Inputs.X509CredentialsArgs
///                         {
///                             CertificateSecretName = "cert-secret",
///                         },
///                     },
///                     EndpointType = "microsoft.opcua/v1",
///                     TrustSettings = new AzureNative.DeviceRegistry.Inputs.TrustSettingsArgs
///                     {
///                         TrustList = "trust-secret-reference",
///                     },
///                     Version = "2",
///                 } },
///             },
///         },
///         ExtendedLocation = new AzureNative.DeviceRegistry.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///             Type = "CustomLocation",
///         },
///         ExternalDeviceId = "unique-edge-device-identifier",
///         Location = "West Europe",
///         NamespaceName = "adr-namespace-gbk0925-n01",
///         ResourceGroupName = "myResourceGroup",
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
/// 	deviceregistry "github.com/pulumi/pulumi-azure-native-sdk/deviceregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceregistry.NewNamespaceDevice(ctx, "namespaceDevice", &deviceregistry.NamespaceDeviceArgs{
/// 			Attributes: pulumi.Any(map[string]interface{}{
/// 				"deviceCategory": 16,
/// 				"deviceOwner":    "OT",
/// 				"deviceType":     "OPCUAServers",
/// 			}),
/// 			DeviceName: pulumi.String("namespace-device-on-edge"),
/// 			Enabled:    pulumi.Bool(true),
/// 			Endpoints: &deviceregistry.MessagingEndpointsArgs{
/// 				Inbound: deviceregistry.InboundEndpointsMap{
/// 					"theV1OPCUAEndpoint": &deviceregistry.InboundEndpointsArgs{
/// 						Address: pulumi.String("opc.tcp://192.168.86.23:51211/UA/SampleServer"),
/// 						Authentication: &deviceregistry.HostAuthenticationArgs{
/// 							Method: pulumi.String(deviceregistry.AuthenticationMethodCertificate),
/// 							X509Credentials: &deviceregistry.X509CredentialsArgs{
/// 								CertificateSecretName: pulumi.String("cert-secret"),
/// 							},
/// 						},
/// 						EndpointType: pulumi.String("microsoft.opcua/v1"),
/// 						Version:      pulumi.String("2"),
/// 					},
/// 					"theV2OPCUAEndpoint": &deviceregistry.InboundEndpointsArgs{
/// 						Address: pulumi.String("opc.tcp://192.168.86.23:51211/UA/SampleServer"),
/// 						Authentication: &deviceregistry.HostAuthenticationArgs{
/// 							Method: pulumi.String(deviceregistry.AuthenticationMethodCertificate),
/// 							X509Credentials: &deviceregistry.X509CredentialsArgs{
/// 								CertificateSecretName: pulumi.String("cert-secret"),
/// 							},
/// 						},
/// 						EndpointType: pulumi.String("microsoft.opcua/v1"),
/// 						TrustSettings: &deviceregistry.TrustSettingsArgs{
/// 							TrustList: pulumi.String("trust-secret-reference"),
/// 						},
/// 						Version: pulumi.String("2"),
/// 					},
/// 				},
/// 			},
/// 			ExtendedLocation: &deviceregistry.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			ExternalDeviceId:  pulumi.String("unique-edge-device-identifier"),
/// 			Location:          pulumi.String("West Europe"),
/// 			NamespaceName:     pulumi.String("adr-namespace-gbk0925-n01"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_deviceregistry_namespacedevice" "namespaceDevice" {
///   attributes = {
///     "deviceCategory" = 16
///     "deviceOwner"    = "OT"
///     "deviceType"     = "OPCUAServers"
///   }
///   device_name = "namespace-device-on-edge"
///   enabled     = true
///   endpoints = {
///     inbound = {
///       "theV1OPCUAEndpoint" = {
///         address = "opc.tcp://192.168.86.23:51211/UA/SampleServer"
///         authentication = {
///           method = "Certificate"
///           x509_credentials = {
///             certificate_secret_name = "cert-secret"
///           }
///         }
///         endpoint_type = "microsoft.opcua/v1"
///         version       = "2"
///       }
///       "theV2OPCUAEndpoint" = {
///         address = "opc.tcp://192.168.86.23:51211/UA/SampleServer"
///         authentication = {
///           method = "Certificate"
///           x509_credentials = {
///             certificate_secret_name = "cert-secret"
///           }
///         }
///         endpoint_type = "microsoft.opcua/v1"
///         trust_settings = {
///           trust_list = "trust-secret-reference"
///         }
///         version = "2"
///       }
///     }
///   }
///   extended_location = {
///     name = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1"
///     type = "CustomLocation"
///   }
///   external_device_id  = "unique-edge-device-identifier"
///   location            = "West Europe"
///   namespace_name      = "adr-namespace-gbk0925-n01"
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.deviceregistry.NamespaceDevice;
/// import com.pulumi.azurenative.deviceregistry.NamespaceDeviceArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.MessagingEndpointsArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.ExtendedLocationArgs;
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
///         var namespaceDevice = new NamespaceDevice("namespaceDevice", NamespaceDeviceArgs.builder()
///             .attributes(Map.ofEntries(
///                 Map.entry("deviceCategory", 16),
///                 Map.entry("deviceOwner", "OT"),
///                 Map.entry("deviceType", "OPCUAServers")
///             ))
///             .deviceName("namespace-device-on-edge")
///             .enabled(true)
///             .endpoints(MessagingEndpointsArgs.builder()
///                 .inbound(Map.ofEntries(
///                     Map.entry("theV1OPCUAEndpoint", InboundEndpointsArgs.builder()
///                         .address("opc.tcp://192.168.86.23:51211/UA/SampleServer")
///                         .authentication(HostAuthenticationArgs.builder()
///                             .method("Certificate")
///                             .x509Credentials(X509CredentialsArgs.builder()
///                                 .certificateSecretName("cert-secret")
///                                 .build())
///                             .build())
///                         .endpointType("microsoft.opcua/v1")
///                         .version("2")
///                         .build()),
///                     Map.entry("theV2OPCUAEndpoint", InboundEndpointsArgs.builder()
///                         .address("opc.tcp://192.168.86.23:51211/UA/SampleServer")
///                         .authentication(HostAuthenticationArgs.builder()
///                             .method("Certificate")
///                             .x509Credentials(X509CredentialsArgs.builder()
///                                 .certificateSecretName("cert-secret")
///                                 .build())
///                             .build())
///                         .endpointType("microsoft.opcua/v1")
///                         .trustSettings(TrustSettingsArgs.builder()
///                             .trustList("trust-secret-reference")
///                             .build())
///                         .version("2")
///                         .build())
///                 ))
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1")
///                 .type("CustomLocation")
///                 .build())
///             .externalDeviceId("unique-edge-device-identifier")
///             .location("West Europe")
///             .namespaceName("adr-namespace-gbk0925-n01")
///             .resourceGroupName("myResourceGroup")
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
/// const namespaceDevice = new azure_native.deviceregistry.NamespaceDevice("namespaceDevice", {
///     attributes: {
///         deviceCategory: 16,
///         deviceOwner: "OT",
///         deviceType: "OPCUAServers",
///     },
///     deviceName: "namespace-device-on-edge",
///     enabled: true,
///     endpoints: {
///         inbound: {
///             theV1OPCUAEndpoint: {
///                 address: "opc.tcp://192.168.86.23:51211/UA/SampleServer",
///                 authentication: {
///                     method: azure_native.deviceregistry.AuthenticationMethod.Certificate,
///                     x509Credentials: {
///                         certificateSecretName: "cert-secret",
///                     },
///                 },
///                 endpointType: "microsoft.opcua/v1",
///                 version: "2",
///             },
///             theV2OPCUAEndpoint: {
///                 address: "opc.tcp://192.168.86.23:51211/UA/SampleServer",
///                 authentication: {
///                     method: azure_native.deviceregistry.AuthenticationMethod.Certificate,
///                     x509Credentials: {
///                         certificateSecretName: "cert-secret",
///                     },
///                 },
///                 endpointType: "microsoft.opcua/v1",
///                 trustSettings: {
///                     trustList: "trust-secret-reference",
///                 },
///                 version: "2",
///             },
///         },
///     },
///     extendedLocation: {
///         name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         type: "CustomLocation",
///     },
///     externalDeviceId: "unique-edge-device-identifier",
///     location: "West Europe",
///     namespaceName: "adr-namespace-gbk0925-n01",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace_device = azure_native.deviceregistry.NamespaceDevice("namespaceDevice",
///     attributes={
///         "deviceCategory": 16,
///         "deviceOwner": "OT",
///         "deviceType": "OPCUAServers",
///     },
///     device_name="namespace-device-on-edge",
///     enabled=True,
///     endpoints={
///         "inbound": {
///             "theV1OPCUAEndpoint": {
///                 "address": "opc.tcp://192.168.86.23:51211/UA/SampleServer",
///                 "authentication": {
///                     "method": azure_native.deviceregistry.AuthenticationMethod.CERTIFICATE,
///                     "x509_credentials": {
///                         "certificate_secret_name": "cert-secret",
///                     },
///                 },
///                 "endpoint_type": "microsoft.opcua/v1",
///                 "version": "2",
///             },
///             "theV2OPCUAEndpoint": {
///                 "address": "opc.tcp://192.168.86.23:51211/UA/SampleServer",
///                 "authentication": {
///                     "method": azure_native.deviceregistry.AuthenticationMethod.CERTIFICATE,
///                     "x509_credentials": {
///                         "certificate_secret_name": "cert-secret",
///                     },
///                 },
///                 "endpoint_type": "microsoft.opcua/v1",
///                 "trust_settings": {
///                     "trust_list": "trust-secret-reference",
///                 },
///                 "version": "2",
///             },
///         },
///     },
///     extended_location={
///         "name": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1",
///         "type": "CustomLocation",
///     },
///     external_device_id="unique-edge-device-identifier",
///     location="West Europe",
///     namespace_name="adr-namespace-gbk0925-n01",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   namespaceDevice:
///     type: azure-native:deviceregistry:NamespaceDevice
///     properties:
///       attributes:
///         deviceCategory: 16
///         deviceOwner: OT
///         deviceType: OPCUAServers
///       deviceName: namespace-device-on-edge
///       enabled: true
///       endpoints:
///         inbound:
///           theV1OPCUAEndpoint:
///             address: opc.tcp://192.168.86.23:51211/UA/SampleServer
///             authentication:
///               method: Certificate
///               x509Credentials:
///                 certificateSecretName: cert-secret
///             endpointType: microsoft.opcua/v1
///             version: '2'
///           theV2OPCUAEndpoint:
///             address: opc.tcp://192.168.86.23:51211/UA/SampleServer
///             authentication:
///               method: Certificate
///               x509Credentials:
///                 certificateSecretName: cert-secret
///             endpointType: microsoft.opcua/v1
///             trustSettings:
///               trustList: trust-secret-reference
///             version: '2'
///       extendedLocation:
///         name: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/myResourceGroup/providers/microsoft.extendedlocation/customlocations/location1
///         type: CustomLocation
///       externalDeviceId: unique-edge-device-identifier
///       location: West Europe
///       namespaceName: adr-namespace-gbk0925-n01
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrReplace_NamespaceDevices
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var namespaceDevice = new AzureNative.DeviceRegistry.NamespaceDevice("namespaceDevice", new()
///     {
///         Attributes = new Dictionary<string, object?>
///         {
///             ["deviceCategory"] = 16,
///             ["deviceOwner"] = "IT",
///             ["deviceType"] = "sensor",
///         },
///         DeviceName = "dev-namespace-gbk0925-n01",
///         Enabled = true,
///         Endpoints = new AzureNative.DeviceRegistry.Inputs.MessagingEndpointsArgs
///         {
///             Outbound = new AzureNative.DeviceRegistry.Inputs.OutboundEndpointsArgs
///             {
///                 Assigned =
///                 {
///                     { "eventGridEndpoint", new AzureNative.DeviceRegistry.Inputs.DeviceMessagingEndpointArgs
///                     {
///                         Address = "https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events",
///                         EndpointType = "Microsoft.EventGrid",
///                     } },
///                 },
///             },
///         },
///         ExternalDeviceId = "adr-smart-device3-7a848b15-af47-40a7-8c06-a3f43314d44f",
///         Location = "West Europe",
///         NamespaceName = "adr-namespace-gbk0925-n01",
///         ResourceGroupName = "myResourceGroup",
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
/// 	deviceregistry "github.com/pulumi/pulumi-azure-native-sdk/deviceregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := deviceregistry.NewNamespaceDevice(ctx, "namespaceDevice", &deviceregistry.NamespaceDeviceArgs{
/// 			Attributes: pulumi.Any(map[string]interface{}{
/// 				"deviceCategory": 16,
/// 				"deviceOwner":    "IT",
/// 				"deviceType":     "sensor",
/// 			}),
/// 			DeviceName: pulumi.String("dev-namespace-gbk0925-n01"),
/// 			Enabled:    pulumi.Bool(true),
/// 			Endpoints: &deviceregistry.MessagingEndpointsArgs{
/// 				Outbound: &deviceregistry.OutboundEndpointsArgs{
/// 					Assigned: deviceregistry.DeviceMessagingEndpointMap{
/// 						"eventGridEndpoint": &deviceregistry.DeviceMessagingEndpointArgs{
/// 							Address:      pulumi.String("https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events"),
/// 							EndpointType: pulumi.String("Microsoft.EventGrid"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ExternalDeviceId:  pulumi.String("adr-smart-device3-7a848b15-af47-40a7-8c06-a3f43314d44f"),
/// 			Location:          pulumi.String("West Europe"),
/// 			NamespaceName:     pulumi.String("adr-namespace-gbk0925-n01"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_deviceregistry_namespacedevice" "namespaceDevice" {
///   attributes = {
///     "deviceCategory" = 16
///     "deviceOwner"    = "IT"
///     "deviceType"     = "sensor"
///   }
///   device_name = "dev-namespace-gbk0925-n01"
///   enabled     = true
///   endpoints = {
///     outbound = {
///       assigned = {
///         "eventGridEndpoint" = {
///           address       = "https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events"
///           endpoint_type = "Microsoft.EventGrid"
///         }
///       }
///     }
///   }
///   external_device_id  = "adr-smart-device3-7a848b15-af47-40a7-8c06-a3f43314d44f"
///   location            = "West Europe"
///   namespace_name      = "adr-namespace-gbk0925-n01"
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.deviceregistry.NamespaceDevice;
/// import com.pulumi.azurenative.deviceregistry.NamespaceDeviceArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.MessagingEndpointsArgs;
/// import com.pulumi.azurenative.deviceregistry.inputs.OutboundEndpointsArgs;
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
///         var namespaceDevice = new NamespaceDevice("namespaceDevice", NamespaceDeviceArgs.builder()
///             .attributes(Map.ofEntries(
///                 Map.entry("deviceCategory", 16),
///                 Map.entry("deviceOwner", "IT"),
///                 Map.entry("deviceType", "sensor")
///             ))
///             .deviceName("dev-namespace-gbk0925-n01")
///             .enabled(true)
///             .endpoints(MessagingEndpointsArgs.builder()
///                 .outbound(OutboundEndpointsArgs.builder()
///                     .assigned(Map.of("eventGridEndpoint", DeviceMessagingEndpointArgs.builder()
///                         .address("https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events")
///                         .endpointType("Microsoft.EventGrid")
///                         .build()))
///                     .build())
///                 .build())
///             .externalDeviceId("adr-smart-device3-7a848b15-af47-40a7-8c06-a3f43314d44f")
///             .location("West Europe")
///             .namespaceName("adr-namespace-gbk0925-n01")
///             .resourceGroupName("myResourceGroup")
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
/// const namespaceDevice = new azure_native.deviceregistry.NamespaceDevice("namespaceDevice", {
///     attributes: {
///         deviceCategory: 16,
///         deviceOwner: "IT",
///         deviceType: "sensor",
///     },
///     deviceName: "dev-namespace-gbk0925-n01",
///     enabled: true,
///     endpoints: {
///         outbound: {
///             assigned: {
///                 eventGridEndpoint: {
///                     address: "https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events",
///                     endpointType: "Microsoft.EventGrid",
///                 },
///             },
///         },
///     },
///     externalDeviceId: "adr-smart-device3-7a848b15-af47-40a7-8c06-a3f43314d44f",
///     location: "West Europe",
///     namespaceName: "adr-namespace-gbk0925-n01",
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace_device = azure_native.deviceregistry.NamespaceDevice("namespaceDevice",
///     attributes={
///         "deviceCategory": 16,
///         "deviceOwner": "IT",
///         "deviceType": "sensor",
///     },
///     device_name="dev-namespace-gbk0925-n01",
///     enabled=True,
///     endpoints={
///         "outbound": {
///             "assigned": {
///                 "eventGridEndpoint": {
///                     "address": "https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events",
///                     "endpoint_type": "Microsoft.EventGrid",
///                 },
///             },
///         },
///     },
///     external_device_id="adr-smart-device3-7a848b15-af47-40a7-8c06-a3f43314d44f",
///     location="West Europe",
///     namespace_name="adr-namespace-gbk0925-n01",
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   namespaceDevice:
///     type: azure-native:deviceregistry:NamespaceDevice
///     properties:
///       attributes:
///         deviceCategory: 16
///         deviceOwner: IT
///         deviceType: sensor
///       deviceName: dev-namespace-gbk0925-n01
///       enabled: true
///       endpoints:
///         outbound:
///           assigned:
///             eventGridEndpoint:
///               address: https://myeventgridtopic.westeurope-1.eventgrid.azure.net/api/events
///               endpointType: Microsoft.EventGrid
///       externalDeviceId: adr-smart-device3-7a848b15-af47-40a7-8c06-a3f43314d44f
///       location: West Europe
///       namespaceName: adr-namespace-gbk0925-n01
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:deviceregistry:NamespaceDevice adr-smart-device3-7a848b15-af47-40a7-8c06-a3f43314d44f /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DeviceRegistry/namespaces/{namespaceName}/devices/{deviceName}
/// ```
class NamespaceDevice extends pulumi.CustomResource {
  /// A set of key-value pairs that contain custom attributes set by the customer.
  late final pulumi.Output<dynamic> attributes;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Reference to a device. Populated only if the device had been created from discovery flow. Discovered device name must be provided.
  late final pulumi.Output<String?> discoveredDeviceRef;
  /// Indicates if the resource is enabled or not.
  late final pulumi.Output<bool?> enabled;
  /// Property bag containing the device's unassigned and assigned endpoints.
  late final pulumi.Output<MessagingEndpointsResponse?> endpoints;
  /// Resource Tag.
  late final pulumi.Output<String> etag;
  /// The extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The Device ID provided by the customer.
  late final pulumi.Output<String?> externalDeviceId;
  /// A timestamp (in UTC) that is updated each time the resource is modified.
  late final pulumi.Output<String> lastTransitionTime;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Device manufacturer.
  late final pulumi.Output<String?> manufacturer;
  /// Device model.
  late final pulumi.Output<String?> model;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Device operating system.
  late final pulumi.Output<String?> operatingSystem;
  /// Device operating system version.
  late final pulumi.Output<String?> operatingSystemVersion;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Device status updates.
  late final pulumi.Output<DeviceStatusResponse> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// A unique identifier for the device.
  late final pulumi.Output<String> uuid;
  /// An integer that is incremented each time the resource is modified.
  late final pulumi.Output<double> version;

  /// Creates a new [NamespaceDevice].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceDevice]. {@macro pulumi_deviceregistry_namespace_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceDevice(
    String name, {
    NamespaceDeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:deviceregistry:NamespaceDevice',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attributes = registerOutput<dynamic>('attributes');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    discoveredDeviceRef = registerOutput<String?>('discoveredDeviceRef');
    enabled = registerOutput<bool?>('enabled');
    endpoints = registerOutput<MessagingEndpointsResponse?>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MessagingEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    externalDeviceId = registerOutput<String?>('externalDeviceId');
    lastTransitionTime = registerOutput<String>('lastTransitionTime');
    location = registerOutput<String>('location');
    manufacturer = registerOutput<String?>('manufacturer');
    model = registerOutput<String?>('model');
    this.name = registerOutput<String>('name');
    operatingSystem = registerOutput<String?>('operatingSystem');
    operatingSystemVersion = registerOutput<String?>('operatingSystemVersion');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<DeviceStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
    version = registerOutput<double>('version');
  }

  /// Creates a typed reference to an existing [NamespaceDevice] resource.
  NamespaceDevice.reference(String urn)
    : super(
        'azure-native:deviceregistry:NamespaceDevice',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    attributes = registerOutput<dynamic>('attributes');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    discoveredDeviceRef = registerOutput<String?>('discoveredDeviceRef');
    enabled = registerOutput<bool?>('enabled');
    endpoints = registerOutput<MessagingEndpointsResponse?>('endpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MessagingEndpointsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    externalDeviceId = registerOutput<String?>('externalDeviceId');
    lastTransitionTime = registerOutput<String>('lastTransitionTime');
    location = registerOutput<String>('location');
    manufacturer = registerOutput<String?>('manufacturer');
    model = registerOutput<String?>('model');
    this.name = registerOutput<String>('name');
    operatingSystem = registerOutput<String?>('operatingSystem');
    operatingSystemVersion = registerOutput<String?>('operatingSystemVersion');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<DeviceStatusResponse>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeviceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
    version = registerOutput<double>('version');
  }
}
