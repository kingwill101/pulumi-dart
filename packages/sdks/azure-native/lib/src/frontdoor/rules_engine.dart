import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_args.dart';
import 'rules_engine_rule_response.dart';

/// A rules engine configuration containing a list of rules that will run to modify the runtime behavior of the request and response.
///
/// Uses Azure REST API version 2025-11-01.
///
/// Other available API versions: 2020-01-01, 2020-04-01, 2020-05-01, 2021-06-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native frontdoor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a specific Rules Engine Configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rulesEngine = new AzureNative.FrontDoor.RulesEngine("rulesEngine", new()
///     {
///         FrontDoorName = "frontDoor1",
///         ResourceGroupName = "rg1",
///         Rules = new[]
///         {
///             new AzureNative.FrontDoor.Inputs.RulesEngineRuleArgs
///             {
///                 Action = new AzureNative.FrontDoor.Inputs.RulesEngineActionArgs
///                 {
///                     RouteConfigurationOverride = new AzureNative.FrontDoor.Inputs.RedirectConfigurationArgs
///                     {
///                         CustomFragment = "fragment",
///                         CustomHost = "www.bing.com",
///                         CustomPath = "/api",
///                         CustomQueryString = "a=b",
///                         OdataType = "#Microsoft.Azure.FrontDoor.Models.FrontdoorRedirectConfiguration",
///                         RedirectProtocol = AzureNative.FrontDoor.FrontDoorRedirectProtocol.HttpsOnly,
///                         RedirectType = AzureNative.FrontDoor.FrontDoorRedirectType.Moved,
///                     },
///                 },
///                 MatchConditions = new[]
///                 {
///                     new AzureNative.FrontDoor.Inputs.RulesEngineMatchConditionArgs
///                     {
///                         RulesEngineMatchValue = new[]
///                         {
///                             "CH",
///                         },
///                         RulesEngineMatchVariable = AzureNative.FrontDoor.RulesEngineMatchVariable.RemoteAddr,
///                         RulesEngineOperator = AzureNative.FrontDoor.RulesEngineOperator.GeoMatch,
///                     },
///                 },
///                 MatchProcessingBehavior = AzureNative.FrontDoor.MatchProcessingBehavior.Stop,
///                 Name = "Rule1",
///                 Priority = 1,
///             },
///             new AzureNative.FrontDoor.Inputs.RulesEngineRuleArgs
///             {
///                 Action = new AzureNative.FrontDoor.Inputs.RulesEngineActionArgs
///                 {
///                     ResponseHeaderActions = new[]
///                     {
///                         new AzureNative.FrontDoor.Inputs.HeaderActionArgs
///                         {
///                             HeaderActionType = AzureNative.FrontDoor.HeaderActionType.Overwrite,
///                             HeaderName = "Cache-Control",
///                             Value = "public, max-age=31536000",
///                         },
///                     },
///                 },
///                 MatchConditions = new[]
///                 {
///                     new AzureNative.FrontDoor.Inputs.RulesEngineMatchConditionArgs
///                     {
///                         RulesEngineMatchValue = new[]
///                         {
///                             "jpg",
///                         },
///                         RulesEngineMatchVariable = AzureNative.FrontDoor.RulesEngineMatchVariable.RequestFilenameExtension,
///                         RulesEngineOperator = AzureNative.FrontDoor.RulesEngineOperator.Equal,
///                         Transforms = new[]
///                         {
///                             AzureNative.FrontDoor.Transform.Lowercase,
///                         },
///                     },
///                 },
///                 Name = "Rule2",
///                 Priority = 2,
///             },
///             new AzureNative.FrontDoor.Inputs.RulesEngineRuleArgs
///             {
///                 Action = new AzureNative.FrontDoor.Inputs.RulesEngineActionArgs
///                 {
///                     RouteConfigurationOverride = new AzureNative.FrontDoor.Inputs.ForwardingConfigurationArgs
///                     {
///                         BackendPool = new AzureNative.FrontDoor.Inputs.SubResourceArgs
///                         {
///                             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/backendPools/backendPool1",
///                         },
///                         CacheConfiguration = new AzureNative.FrontDoor.Inputs.CacheConfigurationArgs
///                         {
///                             CacheDuration = "P1DT12H20M30S",
///                             DynamicCompression = AzureNative.FrontDoor.DynamicCompressionEnabled.Disabled,
///                             QueryParameterStripDirective = AzureNative.FrontDoor.FrontDoorQuery.StripOnly,
///                             QueryParameters = "a=b,p=q",
///                         },
///                         ForwardingProtocol = AzureNative.FrontDoor.FrontDoorForwardingProtocol.HttpsOnly,
///                         OdataType = "#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration",
///                     },
///                 },
///                 MatchConditions = new[]
///                 {
///                     new AzureNative.FrontDoor.Inputs.RulesEngineMatchConditionArgs
///                     {
///                         NegateCondition = false,
///                         RulesEngineMatchValue = new[]
///                         {
///                             "allowoverride",
///                         },
///                         RulesEngineMatchVariable = AzureNative.FrontDoor.RulesEngineMatchVariable.RequestHeader,
///                         RulesEngineOperator = AzureNative.FrontDoor.RulesEngineOperator.Equal,
///                         Selector = "Rules-Engine-Route-Forward",
///                         Transforms = new[]
///                         {
///                             AzureNative.FrontDoor.Transform.Lowercase,
///                         },
///                     },
///                 },
///                 Name = "Rule3",
///                 Priority = 3,
///             },
///         },
///         RulesEngineName = "rulesEngine1",
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
/// 		_, err := frontdoor.NewRulesEngine(ctx, "rulesEngine", &frontdoor.RulesEngineArgs{
/// 			FrontDoorName:     pulumi.String("frontDoor1"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Rules: frontdoor.RulesEngineRuleArray{
/// 				&frontdoor.RulesEngineRuleArgs{
/// 					Action: &frontdoor.RulesEngineActionArgs{
/// 						RouteConfigurationOverride: frontdoor.RedirectConfiguration{
/// 							CustomFragment:    "fragment",
/// 							CustomHost:        "www.bing.com",
/// 							CustomPath:        "/api",
/// 							CustomQueryString: "a=b",
/// 							OdataType:         "#Microsoft.Azure.FrontDoor.Models.FrontdoorRedirectConfiguration",
/// 							RedirectProtocol:  frontdoor.FrontDoorRedirectProtocolHttpsOnly,
/// 							RedirectType:      frontdoor.FrontDoorRedirectTypeMoved,
/// 						},
/// 					},
/// 					MatchConditions: frontdoor.RulesEngineMatchConditionArray{
/// 						&frontdoor.RulesEngineMatchConditionArgs{
/// 							RulesEngineMatchValue: pulumi.StringArray{
/// 								pulumi.String("CH"),
/// 							},
/// 							RulesEngineMatchVariable: pulumi.String(frontdoor.RulesEngineMatchVariableRemoteAddr),
/// 							RulesEngineOperator:      pulumi.String(frontdoor.RulesEngineOperatorGeoMatch),
/// 						},
/// 					},
/// 					MatchProcessingBehavior: pulumi.String(frontdoor.MatchProcessingBehaviorStop),
/// 					Name:                    pulumi.String("Rule1"),
/// 					Priority:                pulumi.Int(1),
/// 				},
/// 				&frontdoor.RulesEngineRuleArgs{
/// 					Action: &frontdoor.RulesEngineActionArgs{
/// 						ResponseHeaderActions: frontdoor.HeaderActionArray{
/// 							&frontdoor.HeaderActionArgs{
/// 								HeaderActionType: pulumi.String(frontdoor.HeaderActionTypeOverwrite),
/// 								HeaderName:       pulumi.String("Cache-Control"),
/// 								Value:            pulumi.String("public, max-age=31536000"),
/// 							},
/// 						},
/// 					},
/// 					MatchConditions: frontdoor.RulesEngineMatchConditionArray{
/// 						&frontdoor.RulesEngineMatchConditionArgs{
/// 							RulesEngineMatchValue: pulumi.StringArray{
/// 								pulumi.String("jpg"),
/// 							},
/// 							RulesEngineMatchVariable: pulumi.String(frontdoor.RulesEngineMatchVariableRequestFilenameExtension),
/// 							RulesEngineOperator:      pulumi.String(frontdoor.RulesEngineOperatorEqual),
/// 							Transforms: pulumi.StringArray{
/// 								pulumi.String(frontdoor.TransformLowercase),
/// 							},
/// 						},
/// 					},
/// 					Name:     pulumi.String("Rule2"),
/// 					Priority: pulumi.Int(2),
/// 				},
/// 				&frontdoor.RulesEngineRuleArgs{
/// 					Action: &frontdoor.RulesEngineActionArgs{
/// 						RouteConfigurationOverride: frontdoor.ForwardingConfiguration{
/// 							BackendPool: frontdoor.SubResource{
/// 								Id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/backendPools/backendPool1",
/// 							},
/// 							CacheConfiguration: frontdoor.CacheConfiguration{
/// 								CacheDuration:                "P1DT12H20M30S",
/// 								DynamicCompression:           frontdoor.DynamicCompressionEnabledDisabled,
/// 								QueryParameterStripDirective: frontdoor.FrontDoorQueryStripOnly,
/// 								QueryParameters:              "a=b,p=q",
/// 							},
/// 							ForwardingProtocol: frontdoor.FrontDoorForwardingProtocolHttpsOnly,
/// 							OdataType:          "#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration",
/// 						},
/// 					},
/// 					MatchConditions: frontdoor.RulesEngineMatchConditionArray{
/// 						&frontdoor.RulesEngineMatchConditionArgs{
/// 							NegateCondition: pulumi.Bool(false),
/// 							RulesEngineMatchValue: pulumi.StringArray{
/// 								pulumi.String("allowoverride"),
/// 							},
/// 							RulesEngineMatchVariable: pulumi.String(frontdoor.RulesEngineMatchVariableRequestHeader),
/// 							RulesEngineOperator:      pulumi.String(frontdoor.RulesEngineOperatorEqual),
/// 							Selector:                 pulumi.String("Rules-Engine-Route-Forward"),
/// 							Transforms: pulumi.StringArray{
/// 								pulumi.String(frontdoor.TransformLowercase),
/// 							},
/// 						},
/// 					},
/// 					Name:     pulumi.String("Rule3"),
/// 					Priority: pulumi.Int(3),
/// 				},
/// 			},
/// 			RulesEngineName: pulumi.String("rulesEngine1"),
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
/// resource "azure-native_frontdoor_rulesengine" "rulesEngine" {
///   front_door_name     = "frontDoor1"
///   resource_group_name = "rg1"
///   rules {
///     action = {
///       route_configuration_override = {
///         "customFragment"    = "fragment"
///         "customHost"        = "www.bing.com"
///         "customPath"        = "/api"
///         "customQueryString" = "a=b"
///         "odataType"         = "#Microsoft.Azure.FrontDoor.Models.FrontdoorRedirectConfiguration"
///         "redirectProtocol"  = "HttpsOnly"
///         "redirectType"      = "Moved"
///       }
///     }
///     match_conditions {
///       rules_engine_match_value    = ["CH"]
///       rules_engine_match_variable = "RemoteAddr"
///       rules_engine_operator       = "GeoMatch"
///     }
///     match_processing_behavior = "Stop"
///     name                      = "Rule1"
///     priority                  = 1
///   }
///   rules {
///     action = {
///       response_header_actions = [{
///         "headerActionType" = "Overwrite"
///         "headerName"       = "Cache-Control"
///         "value"            = "public, max-age=31536000"
///       }]
///     }
///     match_conditions {
///       rules_engine_match_value    = ["jpg"]
///       rules_engine_match_variable = "RequestFilenameExtension"
///       rules_engine_operator       = "Equal"
///       transforms                  = ["Lowercase"]
///     }
///     name     = "Rule2"
///     priority = 2
///   }
///   rules {
///     action = {
///       route_configuration_override = {
///         "backendPool" = {
///           "id" = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/backendPools/backendPool1"
///         }
///         "cacheConfiguration" = {
///           "cacheDuration"                = "P1DT12H20M30S"
///           "dynamicCompression"           = "Disabled"
///           "queryParameterStripDirective" = "StripOnly"
///           "queryParameters"              = "a=b,p=q"
///         }
///         "forwardingProtocol" = "HttpsOnly"
///         "odataType"          = "#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration"
///       }
///     }
///     match_conditions {
///       negate_condition            = false
///       rules_engine_match_value    = ["allowoverride"]
///       rules_engine_match_variable = "RequestHeader"
///       rules_engine_operator       = "Equal"
///       selector                    = "Rules-Engine-Route-Forward"
///       transforms                  = ["Lowercase"]
///     }
///     name     = "Rule3"
///     priority = 3
///   }
///   rules_engine_name = "rulesEngine1"
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
/// import com.pulumi.azurenative.frontdoor.RulesEngine;
/// import com.pulumi.azurenative.frontdoor.RulesEngineArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.RulesEngineRuleArgs;
/// import com.pulumi.azurenative.frontdoor.inputs.RulesEngineActionArgs;
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
///         var rulesEngine = new RulesEngine("rulesEngine", RulesEngineArgs.builder()
///             .frontDoorName("frontDoor1")
///             .resourceGroupName("rg1")
///             .rules(
///                 RulesEngineRuleArgs.builder()
///                     .action(RulesEngineActionArgs.builder()
///                         .routeConfigurationOverride(RedirectConfigurationArgs.builder()
///                             .customFragment("fragment")
///                             .customHost("www.bing.com")
///                             .customPath("/api")
///                             .customQueryString("a=b")
///                             .odataType("#Microsoft.Azure.FrontDoor.Models.FrontdoorRedirectConfiguration")
///                             .redirectProtocol("HttpsOnly")
///                             .redirectType("Moved")
///                             .build())
///                         .build())
///                     .matchConditions(RulesEngineMatchConditionArgs.builder()
///                         .rulesEngineMatchValue("CH")
///                         .rulesEngineMatchVariable("RemoteAddr")
///                         .rulesEngineOperator("GeoMatch")
///                         .build())
///                     .matchProcessingBehavior("Stop")
///                     .name("Rule1")
///                     .priority(1)
///                     .build(),
///                 RulesEngineRuleArgs.builder()
///                     .action(RulesEngineActionArgs.builder()
///                         .responseHeaderActions(HeaderActionArgs.builder()
///                             .headerActionType("Overwrite")
///                             .headerName("Cache-Control")
///                             .value("public, max-age=31536000")
///                             .build())
///                         .build())
///                     .matchConditions(RulesEngineMatchConditionArgs.builder()
///                         .rulesEngineMatchValue("jpg")
///                         .rulesEngineMatchVariable("RequestFilenameExtension")
///                         .rulesEngineOperator("Equal")
///                         .transforms("Lowercase")
///                         .build())
///                     .name("Rule2")
///                     .priority(2)
///                     .build(),
///                 RulesEngineRuleArgs.builder()
///                     .action(RulesEngineActionArgs.builder()
///                         .routeConfigurationOverride(ForwardingConfigurationArgs.builder()
///                             .backendPool(SubResourceArgs.builder()
///                                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/backendPools/backendPool1")
///                                 .build())
///                             .cacheConfiguration(CacheConfigurationArgs.builder()
///                                 .cacheDuration("P1DT12H20M30S")
///                                 .dynamicCompression("Disabled")
///                                 .queryParameterStripDirective("StripOnly")
///                                 .queryParameters("a=b,p=q")
///                                 .build())
///                             .forwardingProtocol("HttpsOnly")
///                             .odataType("#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration")
///                             .build())
///                         .build())
///                     .matchConditions(RulesEngineMatchConditionArgs.builder()
///                         .negateCondition(false)
///                         .rulesEngineMatchValue("allowoverride")
///                         .rulesEngineMatchVariable("RequestHeader")
///                         .rulesEngineOperator("Equal")
///                         .selector("Rules-Engine-Route-Forward")
///                         .transforms("Lowercase")
///                         .build())
///                     .name("Rule3")
///                     .priority(3)
///                     .build())
///             .rulesEngineName("rulesEngine1")
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
/// const rulesEngine = new azure_native.frontdoor.RulesEngine("rulesEngine", {
///     frontDoorName: "frontDoor1",
///     resourceGroupName: "rg1",
///     rules: [
///         {
///             action: {
///                 routeConfigurationOverride: {
///                     customFragment: "fragment",
///                     customHost: "www.bing.com",
///                     customPath: "/api",
///                     customQueryString: "a=b",
///                     odataType: "#Microsoft.Azure.FrontDoor.Models.FrontdoorRedirectConfiguration",
///                     redirectProtocol: azure_native.frontdoor.FrontDoorRedirectProtocol.HttpsOnly,
///                     redirectType: azure_native.frontdoor.FrontDoorRedirectType.Moved,
///                 },
///             },
///             matchConditions: [{
///                 rulesEngineMatchValue: ["CH"],
///                 rulesEngineMatchVariable: azure_native.frontdoor.RulesEngineMatchVariable.RemoteAddr,
///                 rulesEngineOperator: azure_native.frontdoor.RulesEngineOperator.GeoMatch,
///             }],
///             matchProcessingBehavior: azure_native.frontdoor.MatchProcessingBehavior.Stop,
///             name: "Rule1",
///             priority: 1,
///         },
///         {
///             action: {
///                 responseHeaderActions: [{
///                     headerActionType: azure_native.frontdoor.HeaderActionType.Overwrite,
///                     headerName: "Cache-Control",
///                     value: "public, max-age=31536000",
///                 }],
///             },
///             matchConditions: [{
///                 rulesEngineMatchValue: ["jpg"],
///                 rulesEngineMatchVariable: azure_native.frontdoor.RulesEngineMatchVariable.RequestFilenameExtension,
///                 rulesEngineOperator: azure_native.frontdoor.RulesEngineOperator.Equal,
///                 transforms: [azure_native.frontdoor.Transform.Lowercase],
///             }],
///             name: "Rule2",
///             priority: 2,
///         },
///         {
///             action: {
///                 routeConfigurationOverride: {
///                     backendPool: {
///                         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/backendPools/backendPool1",
///                     },
///                     cacheConfiguration: {
///                         cacheDuration: "P1DT12H20M30S",
///                         dynamicCompression: azure_native.frontdoor.DynamicCompressionEnabled.Disabled,
///                         queryParameterStripDirective: azure_native.frontdoor.FrontDoorQuery.StripOnly,
///                         queryParameters: "a=b,p=q",
///                     },
///                     forwardingProtocol: azure_native.frontdoor.FrontDoorForwardingProtocol.HttpsOnly,
///                     odataType: "#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration",
///                 },
///             },
///             matchConditions: [{
///                 negateCondition: false,
///                 rulesEngineMatchValue: ["allowoverride"],
///                 rulesEngineMatchVariable: azure_native.frontdoor.RulesEngineMatchVariable.RequestHeader,
///                 rulesEngineOperator: azure_native.frontdoor.RulesEngineOperator.Equal,
///                 selector: "Rules-Engine-Route-Forward",
///                 transforms: [azure_native.frontdoor.Transform.Lowercase],
///             }],
///             name: "Rule3",
///             priority: 3,
///         },
///     ],
///     rulesEngineName: "rulesEngine1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rules_engine = azure_native.frontdoor.RulesEngine("rulesEngine",
///     front_door_name="frontDoor1",
///     resource_group_name="rg1",
///     rules=[
///         {
///             "action": {
///                 "route_configuration_override": {
///                     "custom_fragment": "fragment",
///                     "custom_host": "www.bing.com",
///                     "custom_path": "/api",
///                     "custom_query_string": "a=b",
///                     "odata_type": "#Microsoft.Azure.FrontDoor.Models.FrontdoorRedirectConfiguration",
///                     "redirect_protocol": azure_native.frontdoor.FrontDoorRedirectProtocol.HTTPS_ONLY,
///                     "redirect_type": azure_native.frontdoor.FrontDoorRedirectType.MOVED,
///                 },
///             },
///             "match_conditions": [{
///                 "rules_engine_match_value": ["CH"],
///                 "rules_engine_match_variable": azure_native.frontdoor.RulesEngineMatchVariable.REMOTE_ADDR,
///                 "rules_engine_operator": azure_native.frontdoor.RulesEngineOperator.GEO_MATCH,
///             }],
///             "match_processing_behavior": azure_native.frontdoor.MatchProcessingBehavior.STOP,
///             "name": "Rule1",
///             "priority": 1,
///         },
///         {
///             "action": {
///                 "response_header_actions": [{
///                     "header_action_type": azure_native.frontdoor.HeaderActionType.OVERWRITE,
///                     "header_name": "Cache-Control",
///                     "value": "public, max-age=31536000",
///                 }],
///             },
///             "match_conditions": [{
///                 "rules_engine_match_value": ["jpg"],
///                 "rules_engine_match_variable": azure_native.frontdoor.RulesEngineMatchVariable.REQUEST_FILENAME_EXTENSION,
///                 "rules_engine_operator": azure_native.frontdoor.RulesEngineOperator.EQUAL,
///                 "transforms": [azure_native.frontdoor.Transform.LOWERCASE],
///             }],
///             "name": "Rule2",
///             "priority": 2,
///         },
///         {
///             "action": {
///                 "route_configuration_override": {
///                     "backend_pool": {
///                         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/backendPools/backendPool1",
///                     },
///                     "cache_configuration": {
///                         "cache_duration": "P1DT12H20M30S",
///                         "dynamic_compression": azure_native.frontdoor.DynamicCompressionEnabled.DISABLED,
///                         "query_parameter_strip_directive": azure_native.frontdoor.FrontDoorQuery.STRIP_ONLY,
///                         "query_parameters": "a=b,p=q",
///                     },
///                     "forwarding_protocol": azure_native.frontdoor.FrontDoorForwardingProtocol.HTTPS_ONLY,
///                     "odata_type": "#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration",
///                 },
///             },
///             "match_conditions": [{
///                 "negate_condition": False,
///                 "rules_engine_match_value": ["allowoverride"],
///                 "rules_engine_match_variable": azure_native.frontdoor.RulesEngineMatchVariable.REQUEST_HEADER,
///                 "rules_engine_operator": azure_native.frontdoor.RulesEngineOperator.EQUAL,
///                 "selector": "Rules-Engine-Route-Forward",
///                 "transforms": [azure_native.frontdoor.Transform.LOWERCASE],
///             }],
///             "name": "Rule3",
///             "priority": 3,
///         },
///     ],
///     rules_engine_name="rulesEngine1")
///
/// ```
///
/// ```yaml
/// resources:
///   rulesEngine:
///     type: azure-native:frontdoor:RulesEngine
///     properties:
///       frontDoorName: frontDoor1
///       resourceGroupName: rg1
///       rules:
///         - action:
///             routeConfigurationOverride:
///               customFragment: fragment
///               customHost: www.bing.com
///               customPath: /api
///               customQueryString: a=b
///               odataType: '#Microsoft.Azure.FrontDoor.Models.FrontdoorRedirectConfiguration'
///               redirectProtocol: HttpsOnly
///               redirectType: Moved
///           matchConditions:
///             - rulesEngineMatchValue:
///                 - CH
///               rulesEngineMatchVariable: RemoteAddr
///               rulesEngineOperator: GeoMatch
///           matchProcessingBehavior: Stop
///           name: Rule1
///           priority: 1
///         - action:
///             responseHeaderActions:
///               - headerActionType: Overwrite
///                 headerName: Cache-Control
///                 value: public, max-age=31536000
///           matchConditions:
///             - rulesEngineMatchValue:
///                 - jpg
///               rulesEngineMatchVariable: RequestFilenameExtension
///               rulesEngineOperator: Equal
///               transforms:
///                 - Lowercase
///           name: Rule2
///           priority: 2
///         - action:
///             routeConfigurationOverride:
///               backendPool:
///                 id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/frontDoors/frontDoor1/backendPools/backendPool1
///               cacheConfiguration:
///                 cacheDuration: P1DT12H20M30S
///                 dynamicCompression: Disabled
///                 queryParameterStripDirective: StripOnly
///                 queryParameters: a=b,p=q
///               forwardingProtocol: HttpsOnly
///               odataType: '#Microsoft.Azure.FrontDoor.Models.FrontdoorForwardingConfiguration'
///           matchConditions:
///             - negateCondition: false
///               rulesEngineMatchValue:
///                 - allowoverride
///               rulesEngineMatchVariable: RequestHeader
///               rulesEngineOperator: Equal
///               selector: Rules-Engine-Route-Forward
///               transforms:
///                 - Lowercase
///           name: Rule3
///           priority: 3
///       rulesEngineName: rulesEngine1
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
/// $ pulumi import azure-native:frontdoor:RulesEngine rulesEngine1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/frontDoors/{frontDoorName}/rulesEngines/{rulesEngineName}
/// ```
class RulesEngine extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Resource status.
  late final pulumi.Output<String> resourceState;
  /// A list of rules that define a particular Rules Engine Configuration.
  late final pulumi.Output<List<RulesEngineRuleResponse>?> rules;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [RulesEngine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RulesEngine]. {@macro pulumi_frontdoor_rules_engine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RulesEngine(
    String name, {
    RulesEngineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:frontdoor:RulesEngine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    resourceState = registerOutput<String>('resourceState');
    rules = registerOutput<List<RulesEngineRuleResponse>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RulesEngineRuleResponse>(guardedValue, (value) => RulesEngineRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [RulesEngine] resource.
  RulesEngine.reference(String urn)
    : super(
        'azure-native:frontdoor:RulesEngine',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    resourceState = registerOutput<String>('resourceState');
    rules = registerOutput<List<RulesEngineRuleResponse>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RulesEngineRuleResponse>(guardedValue, (value) => RulesEngineRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }
}
