import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_pools_settings_response.dart';
import 'front_door_args.dart';

/// Front Door represents a collection of backend endpoints to route traffic to along with rules that specify how traffic is sent there.
///
/// Uses Azure REST API version 2021-06-01.
///
/// Other available API versions: 2019-04-01, 2019-05-01, 2020-01-01, 2020-04-01, 2020-05-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native frontdoor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update specific Front Door
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var frontDoor = new AzureNative.FrontDoor.FrontDoor("frontDoor", new()
///     {
///         BackendPools = new[]
///         {
///             new AzureNative.FrontDoor.Inputs.BackendPoolArgs
///             {
///                 Backends = new[]
///                 {
///                     new AzureNative.FrontDoor.Inputs.BackendArgs
///                     {
///                         Address = "w3.contoso.com",
///                         HttpPort = 80,
///                         HttpsPort = 443,
///                         Priority = 2,
///                         Weight = 1,
///                     },
///                     new AzureNative.FrontDoor.Inputs.BackendArgs
///                     {
///                         Address = "contoso.com.website-us-west-2.othercloud.net",
///                         HttpPort = 80,
///                         HttpsPort = 443,
///                         Priority = 1,
///                         PrivateLinkApprovalMessage = "Please approve the connection request for this Private Link",
///                         PrivateLinkLocation = "eastus",
///                         PrivateLinkResourceId = "/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/privateLinkServices/pls1",
///                         Weight = 2,
///                     },
///                     new AzureNative.FrontDoor.Inputs.BackendArgs
///                     {
///                         Address = "10.0.1.5",
///                         HttpPort = 80,
///                         HttpsPort = 443,
///                         Priority = 1,
///                         PrivateLinkAlias = "APPSERVER.d84e61f0-0870-4d24-9746-7438fa0019d1.westus2.azure.privatelinkservice",
///                         PrivateLinkApprovalMessage = "Please approve this request to connect to the Private Link",
///                         Weight = 1,
///                     },
///                 },
///                 HealthProbeSettings = new AzureNative.FrontDoor.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/healthProbeSettings/healthProbeSettings1",
///                 },
///                 LoadBalancingSettings = new AzureNative.FrontDoor.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/loadBalancingSettings/loadBalancingSettings1",
///                 },
///                 Name = "backendPool1",
///             },
///         },
///         BackendPoolsSettings = new AzureNative.FrontDoor.Inputs.BackendPoolsSettingsArgs
///         {
///             EnforceCertificateNameCheck = AzureNative.FrontDoor.EnforceCertificateNameCheckEnabledState.Enabled,
///             SendRecvTimeoutSeconds = 60,
///         },
///         EnabledState = AzureNative.FrontDoor.FrontDoorEnabledState.Enabled,
///         FrontDoorName = "frontDoor1",
///         FrontendEndpoints = new[]
///         {
///             new AzureNative.FrontDoor.Inputs.FrontendEndpointArgs
///             {
///                 HostName = "www.contoso.com",
///                 Name = "frontendEndpoint1",
///                 SessionAffinityEnabledState = AzureNative.FrontDoor.SessionAffinityEnabledState.Enabled,
///                 SessionAffinityTtlSeconds = 60,
///                 WebApplicationFirewallPolicyLink = new AzureNative.FrontDoor.Inputs.FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLinkArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/policy1",
///                 },
///             },
///             new AzureNative.FrontDoor.Inputs.FrontendEndpointArgs
///             {
///                 HostName = "frontDoor1.azurefd.net",
///                 Name = "default",
///             },
///         },
///         HealthProbeSettings = new[]
///         {
///             new AzureNative.FrontDoor.Inputs.HealthProbeSettingsModelArgs
///             {
///                 EnabledState = AzureNative.FrontDoor.HealthProbeEnabled.Enabled,
///                 HealthProbeMethod = AzureNative.FrontDoor.FrontDoorHealthProbeMethod.HEAD,
///                 IntervalInSeconds = 120,
///                 Name = "healthProbeSettings1",
///                 Path = "/",
///                 Protocol = AzureNative.FrontDoor.FrontDoorProtocol.Http,
///             },
///         },
///         LoadBalancingSettings = new[]
///         {
///             new AzureNative.FrontDoor.Inputs.LoadBalancingSettingsModelArgs
///             {
///                 Name = "loadBalancingSettings1",
///                 SampleSize = 4,
///                 SuccessfulSamplesRequired = 2,
///             },
///         },
///         Location = "westus",
///         ResourceGroupName = "rg1",
///         RoutingRules = new[]
///         {
///             new AzureNative.FrontDoor.Inputs.RoutingRuleArgs
///             {
///                 AcceptedProtocols = new[]
///                 {
///                     AzureNative.FrontDoor.FrontDoorProtocol.Http,
///                 },
///                 EnabledState = AzureNative.FrontDoor.RoutingRuleEnabledState.Enabled,
///                 FrontendEndpoints = new[]
///                 {
///                     new AzureNative.FrontDoor.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/frontendEndpoints/frontendEndpoint1",
///                     },
///                     new AzureNative.FrontDoor.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/frontendEndpoints/default",
///                     },
///                 },
///                 Name = "routingRule1",
///                 PatternsToMatch = new[]
///                 {
///                     "/*",
///                 },
///                 RouteConfiguration = new AzureNative.FrontDoor.Inputs.ForwardingConfigurationArgs
///                 {
///                     BackendPool = new AzureNative.FrontDoor.Inputs.SubResourceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/backendPools/backendPool1",
///                     },
///                     OdataType = "#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration",
///                 },
///                 RulesEngine = new AzureNative.FrontDoor.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/rulesEngines/rulesEngine1",
///                 },
///                 WebApplicationFirewallPolicyLink = new AzureNative.FrontDoor.Inputs.RoutingRuleUpdateParametersWebApplicationFirewallPolicyLinkArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/policy1",
///                 },
///             },
///         },
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
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
/// 	frontdoor "github.com/pulumi/pulumi-azure-native-sdk/frontdoor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := frontdoor.NewFrontDoor(ctx, "frontDoor", &frontdoor.FrontDoorArgs{
/// 			BackendPools: frontdoor.BackendPoolArray{
/// 				&frontdoor.BackendPoolArgs{
/// 					Backends: frontdoor.BackendArray{
/// 						&frontdoor.BackendArgs{
/// 							Address:   pulumi.String("w3.contoso.com"),
/// 							HttpPort:  pulumi.Int(80),
/// 							HttpsPort: pulumi.Int(443),
/// 							Priority:  pulumi.Int(2),
/// 							Weight:    pulumi.Int(1),
/// 						},
/// 						&frontdoor.BackendArgs{
/// 							Address:                    pulumi.String("contoso.com.website-us-west-2.othercloud.net"),
/// 							HttpPort:                   pulumi.Int(80),
/// 							HttpsPort:                  pulumi.Int(443),
/// 							Priority:                   pulumi.Int(1),
/// 							PrivateLinkApprovalMessage: pulumi.String("Please approve the connection request for this Private Link"),
/// 							PrivateLinkLocation:        pulumi.String("eastus"),
/// 							PrivateLinkResourceId:      pulumi.String("/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/privateLinkServices/pls1"),
/// 							Weight:                     pulumi.Int(2),
/// 						},
/// 						&frontdoor.BackendArgs{
/// 							Address:                    pulumi.String("10.0.1.5"),
/// 							HttpPort:                   pulumi.Int(80),
/// 							HttpsPort:                  pulumi.Int(443),
/// 							Priority:                   pulumi.Int(1),
/// 							PrivateLinkAlias:           pulumi.String("APPSERVER.d84e61f0-0870-4d24-9746-7438fa0019d1.westus2.azure.privatelinkservice"),
/// 							PrivateLinkApprovalMessage: pulumi.String("Please approve this request to connect to the Private Link"),
/// 							Weight:                     pulumi.Int(1),
/// 						},
/// 					},
/// 					HealthProbeSettings: &frontdoor.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/healthProbeSettings/healthProbeSettings1"),
/// 					},
/// 					LoadBalancingSettings: &frontdoor.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/loadBalancingSettings/loadBalancingSettings1"),
/// 					},
/// 					Name: pulumi.String("backendPool1"),
/// 				},
/// 			},
/// 			BackendPoolsSettings: &frontdoor.BackendPoolsSettingsArgs{
/// 				EnforceCertificateNameCheck: pulumi.String(frontdoor.EnforceCertificateNameCheckEnabledStateEnabled),
/// 				SendRecvTimeoutSeconds:      pulumi.Int(60),
/// 			},
/// 			EnabledState:  pulumi.String(frontdoor.FrontDoorEnabledStateEnabled),
/// 			FrontDoorName: pulumi.String("frontDoor1"),
/// 			FrontendEndpoints: frontdoor.FrontendEndpointArray{
/// 				&frontdoor.FrontendEndpointArgs{
/// 					HostName:                    pulumi.String("www.contoso.com"),
/// 					Name:                        pulumi.String("frontendEndpoint1"),
/// 					SessionAffinityEnabledState: pulumi.String(frontdoor.SessionAffinityEnabledStateEnabled),
/// 					SessionAffinityTtlSeconds:   pulumi.Int(60),
/// 					WebApplicationFirewallPolicyLink: &frontdoor.FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLinkArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/policy1"),
/// 					},
/// 				},
/// 				&frontdoor.FrontendEndpointArgs{
/// 					HostName: pulumi.String("frontDoor1.azurefd.net"),
/// 					Name:     pulumi.String("default"),
/// 				},
/// 			},
/// 			HealthProbeSettings: frontdoor.HealthProbeSettingsModelArray{
/// 				&frontdoor.HealthProbeSettingsModelArgs{
/// 					EnabledState:      pulumi.String(frontdoor.HealthProbeEnabledEnabled),
/// 					HealthProbeMethod: pulumi.String(frontdoor.FrontDoorHealthProbeMethodHEAD),
/// 					IntervalInSeconds: pulumi.Int(120),
/// 					Name:              pulumi.String("healthProbeSettings1"),
/// 					Path:              pulumi.String("/"),
/// 					Protocol:          pulumi.String(frontdoor.FrontDoorProtocolHttp),
/// 				},
/// 			},
/// 			LoadBalancingSettings: frontdoor.LoadBalancingSettingsModelArray{
/// 				&frontdoor.LoadBalancingSettingsModelArgs{
/// 					Name:                      pulumi.String("loadBalancingSettings1"),
/// 					SampleSize:                pulumi.Int(4),
/// 					SuccessfulSamplesRequired: pulumi.Int(2),
/// 				},
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			RoutingRules: frontdoor.RoutingRuleArray{
/// 				&frontdoor.RoutingRuleArgs{
/// 					AcceptedProtocols: pulumi.StringArray{
/// 						pulumi.String(frontdoor.FrontDoorProtocolHttp),
/// 					},
/// 					EnabledState: pulumi.String(frontdoor.RoutingRuleEnabledStateEnabled),
/// 					FrontendEndpoints: frontdoor.SubResourceArray{
/// 						&frontdoor.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/frontendEndpoints/frontendEndpoint1"),
/// 						},
/// 						&frontdoor.SubResourceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/frontendEndpoints/default"),
/// 						},
/// 					},
/// 					Name: pulumi.String("routingRule1"),
/// 					PatternsToMatch: pulumi.StringArray{
/// 						pulumi.String("/*"),
/// 					},
/// 					RouteConfiguration: frontdoor.ForwardingConfiguration{
/// 						BackendPool: frontdoor.SubResource{
/// 							Id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/backendPools/backendPool1",
/// 						},
/// 						OdataType: "#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration",
/// 					},
/// 					RulesEngine: &frontdoor.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/rulesEngines/rulesEngine1"),
/// 					},
/// 					WebApplicationFirewallPolicyLink: &frontdoor.RoutingRuleUpdateParametersWebApplicationFirewallPolicyLinkArgs{
/// 						Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/policy1"),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
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
/// import com.pulumi.azurenative.frontdoor.FrontDoor;
/// import com.pulumi.azurenative.frontdoor.FrontDoorArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.BackendPoolArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.BackendPoolsSettingsArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.FrontendEndpointArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLinkArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.HealthProbeSettingsModelArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.LoadBalancingSettingsModelArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.RoutingRuleArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.RoutingRuleUpdateParametersWebApplicationFirewallPolicyLinkArgs;
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
///         var frontDoor = new FrontDoor("frontDoor", FrontDoorArgs.builder()
///             .backendPools(BackendPoolArgs.builder()
///                 .backends(
///                     BackendArgs.builder()
///                         .address("w3.contoso.com")
///                         .httpPort(80)
///                         .httpsPort(443)
///                         .priority(2)
///                         .weight(1)
///                         .build(),
///                     BackendArgs.builder()
///                         .address("contoso.com.website-us-west-2.othercloud.net")
///                         .httpPort(80)
///                         .httpsPort(443)
///                         .priority(1)
///                         .privateLinkApprovalMessage("Please approve the connection request for this Private Link")
///                         .privateLinkLocation("eastus")
///                         .privateLinkResourceId("/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/privateLinkServices/pls1")
///                         .weight(2)
///                         .build(),
///                     BackendArgs.builder()
///                         .address("10.0.1.5")
///                         .httpPort(80)
///                         .httpsPort(443)
///                         .priority(1)
///                         .privateLinkAlias("APPSERVER.d84e61f0-0870-4d24-9746-7438fa0019d1.westus2.azure.privatelinkservice")
///                         .privateLinkApprovalMessage("Please approve this request to connect to the Private Link")
///                         .weight(1)
///                         .build())
///                 .healthProbeSettings(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/healthProbeSettings/healthProbeSettings1")
///                     .build())
///                 .loadBalancingSettings(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/loadBalancingSettings/loadBalancingSettings1")
///                     .build())
///                 .name("backendPool1")
///                 .build())
///             .backendPoolsSettings(BackendPoolsSettingsArgs.builder()
///                 .enforceCertificateNameCheck("Enabled")
///                 .sendRecvTimeoutSeconds(60)
///                 .build())
///             .enabledState("Enabled")
///             .frontDoorName("frontDoor1")
///             .frontendEndpoints(
///                 FrontendEndpointArgs.builder()
///                     .hostName("www.contoso.com")
///                     .name("frontendEndpoint1")
///                     .sessionAffinityEnabledState("Enabled")
///                     .sessionAffinityTtlSeconds(60)
///                     .webApplicationFirewallPolicyLink(FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLinkArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/policy1")
///                         .build())
///                     .build(),
///                 FrontendEndpointArgs.builder()
///                     .hostName("frontDoor1.azurefd.net")
///                     .name("default")
///                     .build())
///             .healthProbeSettings(HealthProbeSettingsModelArgs.builder()
///                 .enabledState("Enabled")
///                 .healthProbeMethod("HEAD")
///                 .intervalInSeconds(120)
///                 .name("healthProbeSettings1")
///                 .path("/")
///                 .protocol("Http")
///                 .build())
///             .loadBalancingSettings(LoadBalancingSettingsModelArgs.builder()
///                 .name("loadBalancingSettings1")
///                 .sampleSize(4)
///                 .successfulSamplesRequired(2)
///                 .build())
///             .location("westus")
///             .resourceGroupName("rg1")
///             .routingRules(RoutingRuleArgs.builder()
///                 .acceptedProtocols("Http")
///                 .enabledState("Enabled")
///                 .frontendEndpoints(
///                     SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/frontendEndpoints/frontendEndpoint1")
///                         .build(),
///                     SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/frontendEndpoints/default")
///                         .build())
///                 .name("routingRule1")
///                 .patternsToMatch("/*")
///                 .routeConfiguration(ForwardingConfigurationArgs.builder()
///                     .backendPool(SubResourceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/backendPools/backendPool1")
///                         .build())
///                     .odataType("#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration")
///                     .build())
///                 .rulesEngine(SubResourceArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/rulesEngines/rulesEngine1")
///                     .build())
///                 .webApplicationFirewallPolicyLink(RoutingRuleUpdateParametersWebApplicationFirewallPolicyLinkArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/policy1")
///                     .build())
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
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
/// const frontDoor = new azure_native.frontdoor.FrontDoor("frontDoor", {
///     backendPools: [{
///         backends: [
///             {
///                 address: "w3.contoso.com",
///                 httpPort: 80,
///                 httpsPort: 443,
///                 priority: 2,
///                 weight: 1,
///             },
///             {
///                 address: "contoso.com.website-us-west-2.othercloud.net",
///                 httpPort: 80,
///                 httpsPort: 443,
///                 priority: 1,
///                 privateLinkApprovalMessage: "Please approve the connection request for this Private Link",
///                 privateLinkLocation: "eastus",
///                 privateLinkResourceId: "/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/privateLinkServices/pls1",
///                 weight: 2,
///             },
///             {
///                 address: "10.0.1.5",
///                 httpPort: 80,
///                 httpsPort: 443,
///                 priority: 1,
///                 privateLinkAlias: "APPSERVER.d84e61f0-0870-4d24-9746-7438fa0019d1.westus2.azure.privatelinkservice",
///                 privateLinkApprovalMessage: "Please approve this request to connect to the Private Link",
///                 weight: 1,
///             },
///         ],
///         healthProbeSettings: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/healthProbeSettings/healthProbeSettings1",
///         },
///         loadBalancingSettings: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/loadBalancingSettings/loadBalancingSettings1",
///         },
///         name: "backendPool1",
///     }],
///     backendPoolsSettings: {
///         enforceCertificateNameCheck: azure_native.frontdoor.EnforceCertificateNameCheckEnabledState.Enabled,
///         sendRecvTimeoutSeconds: 60,
///     },
///     enabledState: azure_native.frontdoor.FrontDoorEnabledState.Enabled,
///     frontDoorName: "frontDoor1",
///     frontendEndpoints: [
///         {
///             hostName: "www.contoso.com",
///             name: "frontendEndpoint1",
///             sessionAffinityEnabledState: azure_native.frontdoor.SessionAffinityEnabledState.Enabled,
///             sessionAffinityTtlSeconds: 60,
///             webApplicationFirewallPolicyLink: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/policy1",
///             },
///         },
///         {
///             hostName: "frontDoor1.azurefd.net",
///             name: "default",
///         },
///     ],
///     healthProbeSettings: [{
///         enabledState: azure_native.frontdoor.HealthProbeEnabled.Enabled,
///         healthProbeMethod: azure_native.frontdoor.FrontDoorHealthProbeMethod.HEAD,
///         intervalInSeconds: 120,
///         name: "healthProbeSettings1",
///         path: "/",
///         protocol: azure_native.frontdoor.FrontDoorProtocol.Http,
///     }],
///     loadBalancingSettings: [{
///         name: "loadBalancingSettings1",
///         sampleSize: 4,
///         successfulSamplesRequired: 2,
///     }],
///     location: "westus",
///     resourceGroupName: "rg1",
///     routingRules: [{
///         acceptedProtocols: [azure_native.frontdoor.FrontDoorProtocol.Http],
///         enabledState: azure_native.frontdoor.RoutingRuleEnabledState.Enabled,
///         frontendEndpoints: [
///             {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/frontendEndpoints/frontendEndpoint1",
///             },
///             {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/frontendEndpoints/default",
///             },
///         ],
///         name: "routingRule1",
///         patternsToMatch: ["/*"],
///         routeConfiguration: {
///             backendPool: {
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/backendPools/backendPool1",
///             },
///             odataType: "#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration",
///         },
///         rulesEngine: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/rulesEngines/rulesEngine1",
///         },
///         webApplicationFirewallPolicyLink: {
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/policy1",
///         },
///     }],
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// front_door = azure_native.frontdoor.FrontDoor("frontDoor",
///     backend_pools=[{
///         "backends": [
///             {
///                 "address": "w3.contoso.com",
///                 "http_port": 80,
///                 "https_port": 443,
///                 "priority": 2,
///                 "weight": 1,
///             },
///             {
///                 "address": "contoso.com.website-us-west-2.othercloud.net",
///                 "http_port": 80,
///                 "https_port": 443,
///                 "priority": 1,
///                 "private_link_approval_message": "Please approve the connection request for this Private Link",
///                 "private_link_location": "eastus",
///                 "private_link_resource_id": "/subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/privateLinkServices/pls1",
///                 "weight": 2,
///             },
///             {
///                 "address": "10.0.1.5",
///                 "http_port": 80,
///                 "https_port": 443,
///                 "priority": 1,
///                 "private_link_alias": "APPSERVER.d84e61f0-0870-4d24-9746-7438fa0019d1.westus2.azure.privatelinkservice",
///                 "private_link_approval_message": "Please approve this request to connect to the Private Link",
///                 "weight": 1,
///             },
///         ],
///         "health_probe_settings": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/healthProbeSettings/healthProbeSettings1",
///         },
///         "load_balancing_settings": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/loadBalancingSettings/loadBalancingSettings1",
///         },
///         "name": "backendPool1",
///     }],
///     backend_pools_settings={
///         "enforce_certificate_name_check": azure_native.frontdoor.EnforceCertificateNameCheckEnabledState.ENABLED,
///         "send_recv_timeout_seconds": 60,
///     },
///     enabled_state=azure_native.frontdoor.FrontDoorEnabledState.ENABLED,
///     front_door_name="frontDoor1",
///     frontend_endpoints=[
///         {
///             "host_name": "www.contoso.com",
///             "name": "frontendEndpoint1",
///             "session_affinity_enabled_state": azure_native.frontdoor.SessionAffinityEnabledState.ENABLED,
///             "session_affinity_ttl_seconds": 60,
///             "web_application_firewall_policy_link": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/policy1",
///             },
///         },
///         {
///             "host_name": "frontDoor1.azurefd.net",
///             "name": "default",
///         },
///     ],
///     health_probe_settings=[{
///         "enabled_state": azure_native.frontdoor.HealthProbeEnabled.ENABLED,
///         "health_probe_method": azure_native.frontdoor.FrontDoorHealthProbeMethod.HEAD,
///         "interval_in_seconds": 120,
///         "name": "healthProbeSettings1",
///         "path": "/",
///         "protocol": azure_native.frontdoor.FrontDoorProtocol.HTTP,
///     }],
///     load_balancing_settings=[{
///         "name": "loadBalancingSettings1",
///         "sample_size": 4,
///         "successful_samples_required": 2,
///     }],
///     location="westus",
///     resource_group_name="rg1",
///     routing_rules=[{
///         "accepted_protocols": [azure_native.frontdoor.FrontDoorProtocol.HTTP],
///         "enabled_state": azure_native.frontdoor.RoutingRuleEnabledState.ENABLED,
///         "frontend_endpoints": [
///             {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/frontendEndpoints/frontendEndpoint1",
///             },
///             {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/frontendEndpoints/default",
///             },
///         ],
///         "name": "routingRule1",
///         "patterns_to_match": ["/*"],
///         "route_configuration": {
///             "backend_pool": {
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/backendPools/backendPool1",
///             },
///             "odata_type": "#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration",
///         },
///         "rules_engine": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/rulesEngines/rulesEngine1",
///         },
///         "web_application_firewall_policy_link": {
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/policy1",
///         },
///     }],
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   frontDoor:
///     type: azure-native:frontdoor:FrontDoor
///     properties:
///       backendPools:
///         - backends:
///             - address: w3.contoso.com
///               httpPort: 80
///               httpsPort: 443
///               priority: 2
///               weight: 1
///             - address: contoso.com.website-us-west-2.othercloud.net
///               httpPort: 80
///               httpsPort: 443
///               priority: 1
///               privateLinkApprovalMessage: Please approve the connection request for this Private Link
///               privateLinkLocation: eastus
///               privateLinkResourceId: /subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/privateLinkServices/pls1
///               weight: 2
///             - address: 10.0.1.5
///               httpPort: 80
///               httpsPort: 443
///               priority: 1
///               privateLinkAlias: APPSERVER.d84e61f0-0870-4d24-9746-7438fa0019d1.westus2.azure.privatelinkservice
///               privateLinkApprovalMessage: Please approve this request to connect to the Private Link
///               weight: 1
///           healthProbeSettings:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/healthProbeSettings/healthProbeSettings1
///           loadBalancingSettings:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/loadBalancingSettings/loadBalancingSettings1
///           name: backendPool1
///       backendPoolsSettings:
///         enforceCertificateNameCheck: Enabled
///         sendRecvTimeoutSeconds: 60
///       enabledState: Enabled
///       frontDoorName: frontDoor1
///       frontendEndpoints:
///         - hostName: www.contoso.com
///           name: frontendEndpoint1
///           sessionAffinityEnabledState: Enabled
///           sessionAffinityTtlSeconds: 60
///           webApplicationFirewallPolicyLink:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/policy1
///         - hostName: frontDoor1.azurefd.net
///           name: default
///       healthProbeSettings:
///         - enabledState: Enabled
///           healthProbeMethod: HEAD
///           intervalInSeconds: 120
///           name: healthProbeSettings1
///           path: /
///           protocol: Http
///       loadBalancingSettings:
///         - name: loadBalancingSettings1
///           sampleSize: 4
///           successfulSamplesRequired: 2
///       location: westus
///       resourceGroupName: rg1
///       routingRules:
///         - acceptedProtocols:
///             - Http
///           enabledState: Enabled
///           frontendEndpoints:
///             - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/frontendEndpoints/frontendEndpoint1
///             - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/frontendEndpoints/default
///           name: routingRule1
///           patternsToMatch:
///             - /*
///           routeConfiguration:
///             backendPool:
///               id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/backendPools/backendPool1
///             odataType: '#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration'
///           rulesEngine:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/rulesEngines/rulesEngine1
///           webApplicationFirewallPolicyLink:
///             id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/policy1
///       tags:
///         tag1: value1
///         tag2: value2
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
/// $ pulumi import azure-native:frontdoor:FrontDoor frontDoor1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/frontDoors/{frontDoorName}
/// ```
class FrontDoor extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Backend pools available to routing rules.
  late final pulumi.Output<List<Map<String, dynamic>>?> backendPools;

  /// Settings for all backendPools
  late final pulumi.Output<BackendPoolsSettingsResponse?> backendPoolsSettings;

  /// The host that each frontendEndpoint must CNAME to.
  late final pulumi.Output<String> cname;

  /// Operational status of the Front Door load balancer. Permitted values are 'Enabled' or 'Disabled'
  late final pulumi.Output<String?> enabledState;

  /// Key-Value pair representing additional properties for frontdoor.
  late final pulumi.Output<Map<String, String>> extendedProperties;

  /// A friendly name for the frontDoor
  late final pulumi.Output<String?> friendlyName;

  /// The Id of the frontdoor.
  late final pulumi.Output<String> frontdoorId;

  /// Frontend endpoints available to routing rules.
  late final pulumi.Output<List<Map<String, dynamic>>?> frontendEndpoints;

  /// Health probe settings associated with this Front Door instance.
  late final pulumi.Output<List<Map<String, dynamic>>?> healthProbeSettings;

  /// Load balancing settings associated with this Front Door instance.
  late final pulumi.Output<List<Map<String, dynamic>>?> loadBalancingSettings;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Provisioning state of the Front Door.
  late final pulumi.Output<String> provisioningState;

  /// Resource status of the Front Door.
  late final pulumi.Output<String> resourceState;

  /// Routing rules associated with this Front Door.
  late final pulumi.Output<List<Map<String, dynamic>>?> routingRules;

  /// Rules Engine Configurations available to routing rules.
  late final pulumi.Output<List<Map<String, dynamic>>> rulesEngines;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [FrontDoor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontDoor]. {@macro pulumi_frontdoor_front_door_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontDoor(
    String name, {
    FrontDoorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:frontdoor:FrontDoor',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backendPools = registerOutput<List<Map<String, dynamic>>?>('backendPools');
    backendPoolsSettings = registerOutput<BackendPoolsSettingsResponse?>(
      'backendPoolsSettings',
    );
    cname = registerOutput<String>('cname');
    enabledState = registerOutput<String?>('enabledState');
    extendedProperties = registerOutput<Map<String, String>>(
      'extendedProperties',
    );
    friendlyName = registerOutput<String?>('friendlyName');
    frontdoorId = registerOutput<String>('frontdoorId');
    frontendEndpoints = registerOutput<List<Map<String, dynamic>>?>(
      'frontendEndpoints',
    );
    healthProbeSettings = registerOutput<List<Map<String, dynamic>>?>(
      'healthProbeSettings',
    );
    loadBalancingSettings = registerOutput<List<Map<String, dynamic>>?>(
      'loadBalancingSettings',
    );
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceState = registerOutput<String>('resourceState');
    routingRules = registerOutput<List<Map<String, dynamic>>?>('routingRules');
    rulesEngines = registerOutput<List<Map<String, dynamic>>>('rulesEngines');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
