import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'load_balancer_args.dart';
import 'load_balancer_properties_response.dart';
import 'system_data_response.dart';

/// The LoadBalancer resource definition.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutLoadBalancer
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadBalancer = new AzureNative.AzureStackHCI.LoadBalancer("loadBalancer", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         LoadBalancerName = "test-lb",
///         Location = "West US2",
///         Properties = new AzureNative.AzureStackHCI.Inputs.LoadBalancerPropertiesArgs
///         {
///             BackendAddressPools = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.BackendAddressPoolArgs
///                 {
///                     Name = "web-backend",
///                     Properties = new AzureNative.AzureStackHCI.Inputs.BackendAddressPoolPropertiesArgs
///                     {
///                         LoadBalancerBackendAddresses = new[]
///                         {
///                             new AzureNative.AzureStackHCI.Inputs.LoadBalancerBackendAddressArgs
///                             {
///                                 Name = "web-server-1",
///                                 Properties = new AzureNative.AzureStackHCI.Inputs.LoadBalancerBackendAddressPropertiesArgs
///                                 {
///                                     AdminState = AzureNative.AzureStackHCI.LoadBalancerBackendAddressAdminState.Up,
///                                     NetworkInterfaceIPConfiguration = new AzureNative.AzureStackHCI.Inputs.IPConfigurationArmReferenceArgs
///                                     {
///                                         ResourceId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/web-server-1-nic/ipConfigurations/primary",
///                                     },
///                                 },
///                             },
///                             new AzureNative.AzureStackHCI.Inputs.LoadBalancerBackendAddressArgs
///                             {
///                                 Name = "web-server-2",
///                                 Properties = new AzureNative.AzureStackHCI.Inputs.LoadBalancerBackendAddressPropertiesArgs
///                                 {
///                                     AdminState = AzureNative.AzureStackHCI.LoadBalancerBackendAddressAdminState.Up,
///                                     NetworkInterfaceIPConfiguration = new AzureNative.AzureStackHCI.Inputs.IPConfigurationArmReferenceArgs
///                                     {
///                                         ResourceId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/web-server-2-nic/ipConfigurations/primary",
///                                     },
///                                 },
///                             },
///                         },
///                         VirtualNetwork = new AzureNative.AzureStackHCI.Inputs.VirtualNetworkArmReferenceArgs
///                         {
///                             ResourceId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/virtualNetworks/webVNet",
///                         },
///                     },
///                 },
///             },
///             FrontendIPConfigurations = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.FrontendIPConfigurationArgs
///                 {
///                     Name = "web-frontend",
///                     Properties = new AzureNative.AzureStackHCI.Inputs.FrontendIPConfigurationPropertiesArgs
///                     {
///                         PublicIPAddress = new AzureNative.AzureStackHCI.Inputs.PublicIPAddressArmReferenceArgs
///                         {
///                             ResourceId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/publicIPs/webPublicIP",
///                         },
///                     },
///                 },
///             },
///             LoadBalancingRules = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.LoadBalancerRuleArgs
///                 {
///                     Name = "http-rule",
///                     Properties = new AzureNative.AzureStackHCI.Inputs.LoadBalancerRulePropertiesArgs
///                     {
///                         BackendAddressPool = new AzureNative.AzureStackHCI.Inputs.LoadBalancerBackendAddressPoolReferenceArgs
///                         {
///                             Name = "web-backend",
///                         },
///                         BackendPort = 80,
///                         FrontendIPConfiguration = new AzureNative.AzureStackHCI.Inputs.LoadBalancerFrontendIPConfigurationReferenceArgs
///                         {
///                             Name = "web-frontend",
///                         },
///                         FrontendPort = 80,
///                         IdleTimeoutInMinutes = 4,
///                         LoadDistribution = AzureNative.AzureStackHCI.LoadBalancerRuleSessionPersistenceType.Default,
///                         Probe = new AzureNative.AzureStackHCI.Inputs.LoadBalancerProbeReferenceArgs
///                         {
///                             Name = "http-probe",
///                         },
///                         Protocol = AzureNative.AzureStackHCI.LoadBalancerRuleTransportProtocol.TCP,
///                     },
///                 },
///                 new AzureNative.AzureStackHCI.Inputs.LoadBalancerRuleArgs
///                 {
///                     Name = "https-rule",
///                     Properties = new AzureNative.AzureStackHCI.Inputs.LoadBalancerRulePropertiesArgs
///                     {
///                         BackendAddressPool = new AzureNative.AzureStackHCI.Inputs.LoadBalancerBackendAddressPoolReferenceArgs
///                         {
///                             Name = "web-backend",
///                         },
///                         BackendPort = 443,
///                         FrontendIPConfiguration = new AzureNative.AzureStackHCI.Inputs.LoadBalancerFrontendIPConfigurationReferenceArgs
///                         {
///                             Name = "web-frontend",
///                         },
///                         FrontendPort = 443,
///                         IdleTimeoutInMinutes = 4,
///                         LoadDistribution = AzureNative.AzureStackHCI.LoadBalancerRuleSessionPersistenceType.Default,
///                         Protocol = AzureNative.AzureStackHCI.LoadBalancerRuleTransportProtocol.TCP,
///                     },
///                 },
///             },
///             Probes = new[]
///             {
///                 new AzureNative.AzureStackHCI.Inputs.ProbeArgs
///                 {
///                     Name = "http-probe",
///                     Properties = new AzureNative.AzureStackHCI.Inputs.ProbePropertiesArgs
///                     {
///                         IntervalInSeconds = 15,
///                         NumberOfProbes = 2,
///                         Port = 80,
///                         Protocol = AzureNative.AzureStackHCI.LoadBalancerProbeProtocol.HTTP,
///                         RequestPath = "/health",
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "test-rg",
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
/// 		_, err := azurestackhci.NewLoadBalancer(ctx, "loadBalancer", &azurestackhci.LoadBalancerArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			LoadBalancerName: pulumi.String("test-lb"),
/// 			Location:         pulumi.String("West US2"),
/// 			Properties: &azurestackhci.LoadBalancerPropertiesArgs{
/// 				BackendAddressPools: azurestackhci.BackendAddressPoolArray{
/// 					&azurestackhci.BackendAddressPoolArgs{
/// 						Name: pulumi.String("web-backend"),
/// 						Properties: &azurestackhci.BackendAddressPoolPropertiesArgs{
/// 							LoadBalancerBackendAddresses: azurestackhci.LoadBalancerBackendAddressArray{
/// 								&azurestackhci.LoadBalancerBackendAddressArgs{
/// 									Name: pulumi.String("web-server-1"),
/// 									Properties: &azurestackhci.LoadBalancerBackendAddressPropertiesArgs{
/// 										AdminState: pulumi.String(azurestackhci.LoadBalancerBackendAddressAdminStateUp),
/// 										NetworkInterfaceIPConfiguration: &azurestackhci.IPConfigurationArmReferenceArgs{
/// 											ResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/web-server-1-nic/ipConfigurations/primary"),
/// 										},
/// 									},
/// 								},
/// 								&azurestackhci.LoadBalancerBackendAddressArgs{
/// 									Name: pulumi.String("web-server-2"),
/// 									Properties: &azurestackhci.LoadBalancerBackendAddressPropertiesArgs{
/// 										AdminState: pulumi.String(azurestackhci.LoadBalancerBackendAddressAdminStateUp),
/// 										NetworkInterfaceIPConfiguration: &azurestackhci.IPConfigurationArmReferenceArgs{
/// 											ResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/web-server-2-nic/ipConfigurations/primary"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							VirtualNetwork: &azurestackhci.VirtualNetworkArmReferenceArgs{
/// 								ResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/virtualNetworks/webVNet"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				FrontendIPConfigurations: azurestackhci.FrontendIPConfigurationArray{
/// 					&azurestackhci.FrontendIPConfigurationArgs{
/// 						Name: pulumi.String("web-frontend"),
/// 						Properties: &azurestackhci.FrontendIPConfigurationPropertiesArgs{
/// 							PublicIPAddress: &azurestackhci.PublicIPAddressArmReferenceArgs{
/// 								ResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/publicIPs/webPublicIP"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				LoadBalancingRules: azurestackhci.LoadBalancerRuleArray{
/// 					&azurestackhci.LoadBalancerRuleArgs{
/// 						Name: pulumi.String("http-rule"),
/// 						Properties: &azurestackhci.LoadBalancerRulePropertiesArgs{
/// 							BackendAddressPool: &azurestackhci.LoadBalancerBackendAddressPoolReferenceArgs{
/// 								Name: pulumi.String("web-backend"),
/// 							},
/// 							BackendPort: pulumi.Int(80),
/// 							FrontendIPConfiguration: &azurestackhci.LoadBalancerFrontendIPConfigurationReferenceArgs{
/// 								Name: pulumi.String("web-frontend"),
/// 							},
/// 							FrontendPort:         pulumi.Int(80),
/// 							IdleTimeoutInMinutes: pulumi.Int(4),
/// 							LoadDistribution:     pulumi.String(azurestackhci.LoadBalancerRuleSessionPersistenceTypeDefault),
/// 							Probe: &azurestackhci.LoadBalancerProbeReferenceArgs{
/// 								Name: pulumi.String("http-probe"),
/// 							},
/// 							Protocol: pulumi.String(azurestackhci.LoadBalancerRuleTransportProtocolTCP),
/// 						},
/// 					},
/// 					&azurestackhci.LoadBalancerRuleArgs{
/// 						Name: pulumi.String("https-rule"),
/// 						Properties: &azurestackhci.LoadBalancerRulePropertiesArgs{
/// 							BackendAddressPool: &azurestackhci.LoadBalancerBackendAddressPoolReferenceArgs{
/// 								Name: pulumi.String("web-backend"),
/// 							},
/// 							BackendPort: pulumi.Int(443),
/// 							FrontendIPConfiguration: &azurestackhci.LoadBalancerFrontendIPConfigurationReferenceArgs{
/// 								Name: pulumi.String("web-frontend"),
/// 							},
/// 							FrontendPort:         pulumi.Int(443),
/// 							IdleTimeoutInMinutes: pulumi.Int(4),
/// 							LoadDistribution:     pulumi.String(azurestackhci.LoadBalancerRuleSessionPersistenceTypeDefault),
/// 							Protocol:             pulumi.String(azurestackhci.LoadBalancerRuleTransportProtocolTCP),
/// 						},
/// 					},
/// 				},
/// 				Probes: azurestackhci.ProbeArray{
/// 					&azurestackhci.ProbeArgs{
/// 						Name: pulumi.String("http-probe"),
/// 						Properties: &azurestackhci.ProbePropertiesArgs{
/// 							IntervalInSeconds: pulumi.Int(15),
/// 							NumberOfProbes:    pulumi.Int(2),
/// 							Port:              pulumi.Int(80),
/// 							Protocol:          pulumi.String(azurestackhci.LoadBalancerProbeProtocolHTTP),
/// 							RequestPath:       pulumi.String("/health"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.azurestackhci.LoadBalancer;
/// import com.pulumi.azurenative.azurestackhci.LoadBalancerArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.LoadBalancerPropertiesArgs;
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
///         var loadBalancer = new LoadBalancer("loadBalancer", LoadBalancerArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .loadBalancerName("test-lb")
///             .location("West US2")
///             .properties(LoadBalancerPropertiesArgs.builder()
///                 .backendAddressPools(BackendAddressPoolArgs.builder()
///                     .name("web-backend")
///                     .properties(BackendAddressPoolPropertiesArgs.builder()
///                         .loadBalancerBackendAddresses(
///                             LoadBalancerBackendAddressArgs.builder()
///                                 .name("web-server-1")
///                                 .properties(LoadBalancerBackendAddressPropertiesArgs.builder()
///                                     .adminState("Up")
///                                     .networkInterfaceIPConfiguration(IPConfigurationArmReferenceArgs.builder()
///                                         .resourceId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/web-server-1-nic/ipConfigurations/primary")
///                                         .build())
///                                     .build())
///                                 .build(),
///                             LoadBalancerBackendAddressArgs.builder()
///                                 .name("web-server-2")
///                                 .properties(LoadBalancerBackendAddressPropertiesArgs.builder()
///                                     .adminState("Up")
///                                     .networkInterfaceIPConfiguration(IPConfigurationArmReferenceArgs.builder()
///                                         .resourceId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/web-server-2-nic/ipConfigurations/primary")
///                                         .build())
///                                     .build())
///                                 .build())
///                         .virtualNetwork(VirtualNetworkArmReferenceArgs.builder()
///                             .resourceId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/virtualNetworks/webVNet")
///                             .build())
///                         .build())
///                     .build())
///                 .frontendIPConfigurations(FrontendIPConfigurationArgs.builder()
///                     .name("web-frontend")
///                     .properties(FrontendIPConfigurationPropertiesArgs.builder()
///                         .publicIPAddress(PublicIPAddressArmReferenceArgs.builder()
///                             .resourceId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/publicIPs/webPublicIP")
///                             .build())
///                         .build())
///                     .build())
///                 .loadBalancingRules(
///                     LoadBalancerRuleArgs.builder()
///                         .name("http-rule")
///                         .properties(LoadBalancerRulePropertiesArgs.builder()
///                             .backendAddressPool(LoadBalancerBackendAddressPoolReferenceArgs.builder()
///                                 .name("web-backend")
///                                 .build())
///                             .backendPort(80)
///                             .frontendIPConfiguration(LoadBalancerFrontendIPConfigurationReferenceArgs.builder()
///                                 .name("web-frontend")
///                                 .build())
///                             .frontendPort(80)
///                             .idleTimeoutInMinutes(4)
///                             .loadDistribution("Default")
///                             .probe(LoadBalancerProbeReferenceArgs.builder()
///                                 .name("http-probe")
///                                 .build())
///                             .protocol("Tcp")
///                             .build())
///                         .build(),
///                     LoadBalancerRuleArgs.builder()
///                         .name("https-rule")
///                         .properties(LoadBalancerRulePropertiesArgs.builder()
///                             .backendAddressPool(LoadBalancerBackendAddressPoolReferenceArgs.builder()
///                                 .name("web-backend")
///                                 .build())
///                             .backendPort(443)
///                             .frontendIPConfiguration(LoadBalancerFrontendIPConfigurationReferenceArgs.builder()
///                                 .name("web-frontend")
///                                 .build())
///                             .frontendPort(443)
///                             .idleTimeoutInMinutes(4)
///                             .loadDistribution("Default")
///                             .protocol("Tcp")
///                             .build())
///                         .build())
///                 .probes(ProbeArgs.builder()
///                     .name("http-probe")
///                     .properties(ProbePropertiesArgs.builder()
///                         .intervalInSeconds(15)
///                         .numberOfProbes(2)
///                         .port(80)
///                         .protocol("Http")
///                         .requestPath("/health")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const loadBalancer = new azure_native.azurestackhci.LoadBalancer("loadBalancer", {
///     extendedLocation: {
///         name: "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     loadBalancerName: "test-lb",
///     location: "West US2",
///     properties: {
///         backendAddressPools: [{
///             name: "web-backend",
///             properties: {
///                 loadBalancerBackendAddresses: [
///                     {
///                         name: "web-server-1",
///                         properties: {
///                             adminState: azure_native.azurestackhci.LoadBalancerBackendAddressAdminState.Up,
///                             networkInterfaceIPConfiguration: {
///                                 resourceId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/web-server-1-nic/ipConfigurations/primary",
///                             },
///                         },
///                     },
///                     {
///                         name: "web-server-2",
///                         properties: {
///                             adminState: azure_native.azurestackhci.LoadBalancerBackendAddressAdminState.Up,
///                             networkInterfaceIPConfiguration: {
///                                 resourceId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/web-server-2-nic/ipConfigurations/primary",
///                             },
///                         },
///                     },
///                 ],
///                 virtualNetwork: {
///                     resourceId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/virtualNetworks/webVNet",
///                 },
///             },
///         }],
///         frontendIPConfigurations: [{
///             name: "web-frontend",
///             properties: {
///                 publicIPAddress: {
///                     resourceId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/publicIPs/webPublicIP",
///                 },
///             },
///         }],
///         loadBalancingRules: [
///             {
///                 name: "http-rule",
///                 properties: {
///                     backendAddressPool: {
///                         name: "web-backend",
///                     },
///                     backendPort: 80,
///                     frontendIPConfiguration: {
///                         name: "web-frontend",
///                     },
///                     frontendPort: 80,
///                     idleTimeoutInMinutes: 4,
///                     loadDistribution: azure_native.azurestackhci.LoadBalancerRuleSessionPersistenceType.Default,
///                     probe: {
///                         name: "http-probe",
///                     },
///                     protocol: azure_native.azurestackhci.LoadBalancerRuleTransportProtocol.TCP,
///                 },
///             },
///             {
///                 name: "https-rule",
///                 properties: {
///                     backendAddressPool: {
///                         name: "web-backend",
///                     },
///                     backendPort: 443,
///                     frontendIPConfiguration: {
///                         name: "web-frontend",
///                     },
///                     frontendPort: 443,
///                     idleTimeoutInMinutes: 4,
///                     loadDistribution: azure_native.azurestackhci.LoadBalancerRuleSessionPersistenceType.Default,
///                     protocol: azure_native.azurestackhci.LoadBalancerRuleTransportProtocol.TCP,
///                 },
///             },
///         ],
///         probes: [{
///             name: "http-probe",
///             properties: {
///                 intervalInSeconds: 15,
///                 numberOfProbes: 2,
///                 port: 80,
///                 protocol: azure_native.azurestackhci.LoadBalancerProbeProtocol.HTTP,
///                 requestPath: "/health",
///             },
///         }],
///     },
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_balancer = azure_native.azurestackhci.LoadBalancer("loadBalancer",
///     extended_location={
///         "name": "/subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     load_balancer_name="test-lb",
///     location="West US2",
///     properties={
///         "backend_address_pools": [{
///             "name": "web-backend",
///             "properties": {
///                 "load_balancer_backend_addresses": [
///                     {
///                         "name": "web-server-1",
///                         "properties": {
///                             "admin_state": azure_native.azurestackhci.LoadBalancerBackendAddressAdminState.UP,
///                             "network_interface_ip_configuration": {
///                                 "resource_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/web-server-1-nic/ipConfigurations/primary",
///                             },
///                         },
///                     },
///                     {
///                         "name": "web-server-2",
///                         "properties": {
///                             "admin_state": azure_native.azurestackhci.LoadBalancerBackendAddressAdminState.UP,
///                             "network_interface_ip_configuration": {
///                                 "resource_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/web-server-2-nic/ipConfigurations/primary",
///                             },
///                         },
///                     },
///                 ],
///                 "virtual_network": {
///                     "resource_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/virtualNetworks/webVNet",
///                 },
///             },
///         }],
///         "frontend_ip_configurations": [{
///             "name": "web-frontend",
///             "properties": {
///                 "public_ip_address": {
///                     "resource_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/publicIPs/webPublicIP",
///                 },
///             },
///         }],
///         "load_balancing_rules": [
///             {
///                 "name": "http-rule",
///                 "properties": {
///                     "backend_address_pool": {
///                         "name": "web-backend",
///                     },
///                     "backend_port": 80,
///                     "frontend_ip_configuration": {
///                         "name": "web-frontend",
///                     },
///                     "frontend_port": 80,
///                     "idle_timeout_in_minutes": 4,
///                     "load_distribution": azure_native.azurestackhci.LoadBalancerRuleSessionPersistenceType.DEFAULT,
///                     "probe": {
///                         "name": "http-probe",
///                     },
///                     "protocol": azure_native.azurestackhci.LoadBalancerRuleTransportProtocol.TCP,
///                 },
///             },
///             {
///                 "name": "https-rule",
///                 "properties": {
///                     "backend_address_pool": {
///                         "name": "web-backend",
///                     },
///                     "backend_port": 443,
///                     "frontend_ip_configuration": {
///                         "name": "web-frontend",
///                     },
///                     "frontend_port": 443,
///                     "idle_timeout_in_minutes": 4,
///                     "load_distribution": azure_native.azurestackhci.LoadBalancerRuleSessionPersistenceType.DEFAULT,
///                     "protocol": azure_native.azurestackhci.LoadBalancerRuleTransportProtocol.TCP,
///                 },
///             },
///         ],
///         "probes": [{
///             "name": "http-probe",
///             "properties": {
///                 "interval_in_seconds": 15,
///                 "number_of_probes": 2,
///                 "port": 80,
///                 "protocol": azure_native.azurestackhci.LoadBalancerProbeProtocol.HTTP,
///                 "request_path": "/health",
///             },
///         }],
///     },
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   loadBalancer:
///     type: azure-native:azurestackhci:LoadBalancer
///     properties:
///       extendedLocation:
///         name: /subscriptions/fd3c3665-1729-4b7b-9a38-238e83b0f98b/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       loadBalancerName: test-lb
///       location: West US2
///       properties:
///         backendAddressPools:
///           - name: web-backend
///             properties:
///               loadBalancerBackendAddresses:
///                 - name: web-server-1
///                   properties:
///                     adminState: Up
///                     networkInterfaceIPConfiguration:
///                       resourceId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/web-server-1-nic/ipConfigurations/primary
///                 - name: web-server-2
///                   properties:
///                     adminState: Up
///                     networkInterfaceIPConfiguration:
///                       resourceId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/networkInterfaces/web-server-2-nic/ipConfigurations/primary
///               virtualNetwork:
///                 resourceId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/virtualNetworks/webVNet
///         frontendIPConfigurations:
///           - name: web-frontend
///             properties:
///               publicIPAddress:
///                 resourceId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/azure-local-rg/providers/Microsoft.AzureStackHCI/publicIPs/webPublicIP
///         loadBalancingRules:
///           - name: http-rule
///             properties:
///               backendAddressPool:
///                 name: web-backend
///               backendPort: 80
///               frontendIPConfiguration:
///                 name: web-frontend
///               frontendPort: 80
///               idleTimeoutInMinutes: 4
///               loadDistribution: Default
///               probe:
///                 name: http-probe
///               protocol: Tcp
///           - name: https-rule
///             properties:
///               backendAddressPool:
///                 name: web-backend
///               backendPort: 443
///               frontendIPConfiguration:
///                 name: web-frontend
///               frontendPort: 443
///               idleTimeoutInMinutes: 4
///               loadDistribution: Default
///               protocol: Tcp
///         probes:
///           - name: http-probe
///             properties:
///               intervalInSeconds: 15
///               numberOfProbes: 2
///               port: 80
///               protocol: Http
///               requestPath: /health
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:azurestackhci:LoadBalancer test-lb /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/loadBalancers/{loadBalancerName}
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<LoadBalancerPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_azurestackhci_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LoadBalancerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
