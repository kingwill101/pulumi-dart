import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';
import 'endpoint_properties_update_parameters_delivery_policy_response.dart';
import 'endpoint_properties_update_parameters_web_application_firewall_policy_link_response.dart';
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// CDN endpoint is the entity within a CDN profile containing configuration information such as origin, protocol, content caching and delivery behavior. The CDN endpoint uses the URL format &lt;endpointname&gt;.azureedge.net.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Endpoints_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpoint = new AzureNative.Cdn.Endpoint("endpoint", new()
///     {
///         ContentTypesToCompress = new[]
///         {
///             "text/html",
///             "application/octet-stream",
///         },
///         DefaultOriginGroup = new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/originGroups/originGroup1",
///         },
///         DeliveryPolicy = new AzureNative.Cdn.Inputs.EndpointPropertiesUpdateParametersDeliveryPolicyArgs
///         {
///             Description = "Test description for a policy.",
///             Rules = new[]
///             {
///                 new AzureNative.Cdn.Inputs.DeliveryRuleArgs
///                 {
///                     Actions =
///                     {
///                         new AzureNative.Cdn.Inputs.DeliveryRuleCacheExpirationActionArgs
///                         {
///                             Name = "CacheExpiration",
///                             Parameters = new AzureNative.Cdn.Inputs.CacheExpirationActionParametersArgs
///                             {
///                                 CacheBehavior = AzureNative.Cdn.CacheBehavior.Override,
///                                 CacheDuration = "10:10:09",
///                                 CacheType = AzureNative.Cdn.CacheType.All,
///                                 TypeName = "DeliveryRuleCacheExpirationActionParameters",
///                             },
///                         },
///                         new AzureNative.Cdn.Inputs.DeliveryRuleResponseHeaderActionArgs
///                         {
///                             Name = "ModifyResponseHeader",
///                             Parameters = new AzureNative.Cdn.Inputs.HeaderActionParametersArgs
///                             {
///                                 HeaderAction = AzureNative.Cdn.HeaderAction.Overwrite,
///                                 HeaderName = "Access-Control-Allow-Origin",
///                                 TypeName = "DeliveryRuleHeaderActionParameters",
///                                 Value = "*",
///                             },
///                         },
///                         new AzureNative.Cdn.Inputs.DeliveryRuleRequestHeaderActionArgs
///                         {
///                             Name = "ModifyRequestHeader",
///                             Parameters = new AzureNative.Cdn.Inputs.HeaderActionParametersArgs
///                             {
///                                 HeaderAction = AzureNative.Cdn.HeaderAction.Overwrite,
///                                 HeaderName = "Accept-Encoding",
///                                 TypeName = "DeliveryRuleHeaderActionParameters",
///                                 Value = "gzip",
///                             },
///                         },
///                     },
///                     Conditions = new[]
///                     {
///                         new AzureNative.Cdn.Inputs.DeliveryRuleRemoteAddressConditionArgs
///                         {
///                             Name = "RemoteAddress",
///                             Parameters = new AzureNative.Cdn.Inputs.RemoteAddressMatchConditionParametersArgs
///                             {
///                                 MatchValues = new[]
///                                 {
///                                     "192.168.1.0/24",
///                                     "10.0.0.0/24",
///                                 },
///                                 NegateCondition = true,
///                                 Operator = AzureNative.Cdn.RemoteAddressOperator.IPMatch,
///                                 TypeName = "DeliveryRuleRemoteAddressConditionParameters",
///                             },
///                         },
///                     },
///                     Name = "rule1",
///                     Order = 1,
///                 },
///             },
///         },
///         EndpointName = "endpoint1",
///         IsCompressionEnabled = true,
///         IsHttpAllowed = true,
///         IsHttpsAllowed = true,
///         Location = "WestUs",
///         OriginGroups = new[]
///         {
///             new AzureNative.Cdn.Inputs.DeepCreatedOriginGroupArgs
///             {
///                 HealthProbeSettings = new AzureNative.Cdn.Inputs.HealthProbeParametersArgs
///                 {
///                     ProbeIntervalInSeconds = 120,
///                     ProbePath = "/health.aspx",
///                     ProbeProtocol = AzureNative.Cdn.ProbeProtocol.Http,
///                     ProbeRequestType = AzureNative.Cdn.HealthProbeRequestType.GET,
///                 },
///                 Name = "originGroup1",
///                 Origins = new[]
///                 {
///                     new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1",
///                     },
///                     new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin2",
///                     },
///                 },
///                 ResponseBasedOriginErrorDetectionSettings = new AzureNative.Cdn.Inputs.ResponseBasedOriginErrorDetectionParametersArgs
///                 {
///                     ResponseBasedDetectedErrorTypes = AzureNative.Cdn.ResponseBasedDetectedErrorTypes.TcpErrorsOnly,
///                     ResponseBasedFailoverThresholdPercentage = 10,
///                 },
///             },
///         },
///         OriginHostHeader = "www.bing.com",
///         OriginPath = "/photos",
///         Origins = new[]
///         {
///             new AzureNative.Cdn.Inputs.DeepCreatedOriginArgs
///             {
///                 Enabled = true,
///                 HostName = "www.someDomain1.net",
///                 HttpPort = 80,
///                 HttpsPort = 443,
///                 Name = "origin1",
///                 OriginHostHeader = "www.someDomain1.net",
///                 Priority = 1,
///                 Weight = 50,
///             },
///             new AzureNative.Cdn.Inputs.DeepCreatedOriginArgs
///             {
///                 Enabled = true,
///                 HostName = "www.someDomain2.net",
///                 HttpPort = 80,
///                 HttpsPort = 443,
///                 Name = "origin2",
///                 OriginHostHeader = "www.someDomain2.net",
///                 Priority = 2,
///                 Weight = 50,
///             },
///         },
///         ProfileName = "profile1",
///         QueryStringCachingBehavior = AzureNative.Cdn.QueryStringCachingBehavior.BypassCaching,
///         ResourceGroupName = "RG",
///         Tags =
///         {
///             { "key1", "value1" },
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewEndpoint(ctx, "endpoint", &cdn.EndpointArgs{
/// 			ContentTypesToCompress: pulumi.StringArray{
/// 				pulumi.String("text/html"),
/// 				pulumi.String("application/octet-stream"),
/// 			},
/// 			DefaultOriginGroup: &cdn.ResourceReferenceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/originGroups/originGroup1"),
/// 			},
/// 			DeliveryPolicy: &cdn.EndpointPropertiesUpdateParametersDeliveryPolicyArgs{
/// 				Description: pulumi.String("Test description for a policy."),
/// 				Rules: cdn.DeliveryRuleArray{
/// 					&cdn.DeliveryRuleArgs{
/// 						Actions: pulumi.Array{
/// 							cdn.DeliveryRuleCacheExpirationAction{
/// 								Name: "CacheExpiration",
/// 								Parameters: cdn.CacheExpirationActionParameters{
/// 									CacheBehavior: cdn.CacheBehaviorOverride,
/// 									CacheDuration: "10:10:09",
/// 									CacheType:     cdn.CacheTypeAll,
/// 									TypeName:      "DeliveryRuleCacheExpirationActionParameters",
/// 								},
/// 							},
/// 							cdn.DeliveryRuleResponseHeaderAction{
/// 								Name: "ModifyResponseHeader",
/// 								Parameters: cdn.HeaderActionParameters{
/// 									HeaderAction: cdn.HeaderActionOverwrite,
/// 									HeaderName:   "Access-Control-Allow-Origin",
/// 									TypeName:     "DeliveryRuleHeaderActionParameters",
/// 									Value:        "*",
/// 								},
/// 							},
/// 							cdn.DeliveryRuleRequestHeaderAction{
/// 								Name: "ModifyRequestHeader",
/// 								Parameters: cdn.HeaderActionParameters{
/// 									HeaderAction: cdn.HeaderActionOverwrite,
/// 									HeaderName:   "Accept-Encoding",
/// 									TypeName:     "DeliveryRuleHeaderActionParameters",
/// 									Value:        "gzip",
/// 								},
/// 							},
/// 						},
/// 						Conditions: pulumi.Array{
/// 							cdn.DeliveryRuleRemoteAddressCondition{
/// 								Name: "RemoteAddress",
/// 								Parameters: cdn.RemoteAddressMatchConditionParameters{
/// 									MatchValues: []string{
/// 										"192.168.1.0/24",
/// 										"10.0.0.0/24",
/// 									},
/// 									NegateCondition: true,
/// 									Operator:        cdn.RemoteAddressOperatorIPMatch,
/// 									TypeName:        "DeliveryRuleRemoteAddressConditionParameters",
/// 								},
/// 							},
/// 						},
/// 						Name:  pulumi.String("rule1"),
/// 						Order: pulumi.Int(1),
/// 					},
/// 				},
/// 			},
/// 			EndpointName:         pulumi.String("endpoint1"),
/// 			IsCompressionEnabled: pulumi.Bool(true),
/// 			IsHttpAllowed:        pulumi.Bool(true),
/// 			IsHttpsAllowed:       pulumi.Bool(true),
/// 			Location:             pulumi.String("WestUs"),
/// 			OriginGroups: cdn.DeepCreatedOriginGroupArray{
/// 				&cdn.DeepCreatedOriginGroupArgs{
/// 					HealthProbeSettings: &cdn.HealthProbeParametersArgs{
/// 						ProbeIntervalInSeconds: pulumi.Int(120),
/// 						ProbePath:              pulumi.String("/health.aspx"),
/// 						ProbeProtocol:          cdn.ProbeProtocolHttp,
/// 						ProbeRequestType:       cdn.HealthProbeRequestTypeGET,
/// 					},
/// 					Name: pulumi.String("originGroup1"),
/// 					Origins: cdn.ResourceReferenceArray{
/// 						&cdn.ResourceReferenceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1"),
/// 						},
/// 						&cdn.ResourceReferenceArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin2"),
/// 						},
/// 					},
/// 					ResponseBasedOriginErrorDetectionSettings: &cdn.ResponseBasedOriginErrorDetectionParametersArgs{
/// 						ResponseBasedDetectedErrorTypes:          cdn.ResponseBasedDetectedErrorTypesTcpErrorsOnly,
/// 						ResponseBasedFailoverThresholdPercentage: pulumi.Int(10),
/// 					},
/// 				},
/// 			},
/// 			OriginHostHeader: pulumi.String("www.bing.com"),
/// 			OriginPath:       pulumi.String("/photos"),
/// 			Origins: cdn.DeepCreatedOriginArray{
/// 				&cdn.DeepCreatedOriginArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					HostName:         pulumi.String("www.someDomain1.net"),
/// 					HttpPort:         pulumi.Int(80),
/// 					HttpsPort:        pulumi.Int(443),
/// 					Name:             pulumi.String("origin1"),
/// 					OriginHostHeader: pulumi.String("www.someDomain1.net"),
/// 					Priority:         pulumi.Int(1),
/// 					Weight:           pulumi.Int(50),
/// 				},
/// 				&cdn.DeepCreatedOriginArgs{
/// 					Enabled:          pulumi.Bool(true),
/// 					HostName:         pulumi.String("www.someDomain2.net"),
/// 					HttpPort:         pulumi.Int(80),
/// 					HttpsPort:        pulumi.Int(443),
/// 					Name:             pulumi.String("origin2"),
/// 					OriginHostHeader: pulumi.String("www.someDomain2.net"),
/// 					Priority:         pulumi.Int(2),
/// 					Weight:           pulumi.Int(50),
/// 				},
/// 			},
/// 			ProfileName:                pulumi.String("profile1"),
/// 			QueryStringCachingBehavior: cdn.QueryStringCachingBehaviorBypassCaching,
/// 			ResourceGroupName:          pulumi.String("RG"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
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
/// resource "azure-native_cdn_endpoint" "endpoint" {
///   content_types_to_compress = ["text/html", "application/octet-stream"]
///   default_origin_group = {
///     id = "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/originGroups/originGroup1"
///   }
///   delivery_policy = {
///     description = "Test description for a policy."
///     rules = [{
///       "actions" = [{
///         "name" = "CacheExpiration"
///         "parameters" = {
///           "cacheBehavior" = "Override"
///           "cacheDuration" = "10:10:09"
///           "cacheType"     = "All"
///           "typeName"      = "DeliveryRuleCacheExpirationActionParameters"
///         }
///         }, {
///         "name" = "ModifyResponseHeader"
///         "parameters" = {
///           "headerAction" = "Overwrite"
///           "headerName"   = "Access-Control-Allow-Origin"
///           "typeName"     = "DeliveryRuleHeaderActionParameters"
///           "value"        = "*"
///         }
///         }, {
///         "name" = "ModifyRequestHeader"
///         "parameters" = {
///           "headerAction" = "Overwrite"
///           "headerName"   = "Accept-Encoding"
///           "typeName"     = "DeliveryRuleHeaderActionParameters"
///           "value"        = "gzip"
///         }
///       }]
///       "conditions" = [{
///         "name" = "RemoteAddress"
///         "parameters" = {
///           "matchValues"     = ["192.168.1.0/24", "10.0.0.0/24"]
///           "negateCondition" = true
///           "operator"        = "IPMatch"
///           "typeName"        = "DeliveryRuleRemoteAddressConditionParameters"
///         }
///       }]
///       "name"  = "rule1"
///       "order" = 1
///     }]
///   }
///   endpoint_name          = "endpoint1"
///   is_compression_enabled = true
///   is_http_allowed        = true
///   is_https_allowed       = true
///   location               = "WestUs"
///   origin_groups {
///     health_probe_settings = {
///       probe_interval_in_seconds = 120
///       probe_path                = "/health.aspx"
///       probe_protocol            = "Http"
///       probe_request_type        = "GET"
///     }
///     name = "originGroup1"
///     origins {
///       id = "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1"
///     }
///     origins {
///       id = "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin2"
///     }
///     response_based_origin_error_detection_settings = {
///       response_based_detected_error_types          = "TcpErrorsOnly"
///       response_based_failover_threshold_percentage = 10
///     }
///   }
///   origin_host_header = "www.bing.com"
///   origin_path        = "/photos"
///   origins {
///     enabled            = true
///     host_name          = "www.someDomain1.net"
///     http_port          = 80
///     https_port         = 443
///     name               = "origin1"
///     origin_host_header = "www.someDomain1.net"
///     priority           = 1
///     weight             = 50
///   }
///   origins {
///     enabled            = true
///     host_name          = "www.someDomain2.net"
///     http_port          = 80
///     https_port         = 443
///     name               = "origin2"
///     origin_host_header = "www.someDomain2.net"
///     priority           = 2
///     weight             = 50
///   }
///   profile_name                  = "profile1"
///   query_string_caching_behavior = "BypassCaching"
///   resource_group_name           = "RG"
///   tags = {
///     "key1" = "value1"
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
/// import com.pulumi.azurenative.cdn.Endpoint;
/// import com.pulumi.azurenative.cdn.EndpointArgs;
/// import com.pulumi.azurenative.cdn.inputs.ResourceReferenceArgs;
/// import com.pulumi.azurenative.cdn.inputs.EndpointPropertiesUpdateParametersDeliveryPolicyArgs;
/// import com.pulumi.azurenative.cdn.inputs.DeepCreatedOriginGroupArgs;
/// import com.pulumi.azurenative.cdn.inputs.HealthProbeParametersArgs;
/// import com.pulumi.azurenative.cdn.inputs.ResponseBasedOriginErrorDetectionParametersArgs;
/// import com.pulumi.azurenative.cdn.inputs.DeepCreatedOriginArgs;
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
///         var endpoint = new Endpoint("endpoint", EndpointArgs.builder()
///             .contentTypesToCompress(
///                 "text/html",
///                 "application/octet-stream")
///             .defaultOriginGroup(ResourceReferenceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/originGroups/originGroup1")
///                 .build())
///             .deliveryPolicy(EndpointPropertiesUpdateParametersDeliveryPolicyArgs.builder()
///                 .description("Test description for a policy.")
///                 .rules(DeliveryRuleArgs.builder()
///                     .actions(
///                         DeliveryRuleCacheExpirationActionArgs.builder()
///                             .name("CacheExpiration")
///                             .parameters(CacheExpirationActionParametersArgs.builder()
///                                 .cacheBehavior("Override")
///                                 .cacheDuration("10:10:09")
///                                 .cacheType("All")
///                                 .typeName("DeliveryRuleCacheExpirationActionParameters")
///                                 .build())
///                             .build(),
///                         DeliveryRuleResponseHeaderActionArgs.builder()
///                             .name("ModifyResponseHeader")
///                             .parameters(HeaderActionParametersArgs.builder()
///                                 .headerAction("Overwrite")
///                                 .headerName("Access-Control-Allow-Origin")
///                                 .typeName("DeliveryRuleHeaderActionParameters")
///                                 .value("*")
///                                 .build())
///                             .build(),
///                         DeliveryRuleRequestHeaderActionArgs.builder()
///                             .name("ModifyRequestHeader")
///                             .parameters(HeaderActionParametersArgs.builder()
///                                 .headerAction("Overwrite")
///                                 .headerName("Accept-Encoding")
///                                 .typeName("DeliveryRuleHeaderActionParameters")
///                                 .value("gzip")
///                                 .build())
///                             .build())
///                     .conditions(DeliveryRuleRemoteAddressConditionArgs.builder()
///                         .name("RemoteAddress")
///                         .parameters(RemoteAddressMatchConditionParametersArgs.builder()
///                             .matchValues(
///                                 "192.168.1.0/24",
///                                 "10.0.0.0/24")
///                             .negateCondition(true)
///                             .operator("IPMatch")
///                             .typeName("DeliveryRuleRemoteAddressConditionParameters")
///                             .build())
///                         .build())
///                     .name("rule1")
///                     .order(1)
///                     .build())
///                 .build())
///             .endpointName("endpoint1")
///             .isCompressionEnabled(true)
///             .isHttpAllowed(true)
///             .isHttpsAllowed(true)
///             .location("WestUs")
///             .originGroups(DeepCreatedOriginGroupArgs.builder()
///                 .healthProbeSettings(HealthProbeParametersArgs.builder()
///                     .probeIntervalInSeconds(120)
///                     .probePath("/health.aspx")
///                     .probeProtocol("Http")
///                     .probeRequestType("GET")
///                     .build())
///                 .name("originGroup1")
///                 .origins(
///                     ResourceReferenceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1")
///                         .build(),
///                     ResourceReferenceArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin2")
///                         .build())
///                 .responseBasedOriginErrorDetectionSettings(ResponseBasedOriginErrorDetectionParametersArgs.builder()
///                     .responseBasedDetectedErrorTypes("TcpErrorsOnly")
///                     .responseBasedFailoverThresholdPercentage(10)
///                     .build())
///                 .build())
///             .originHostHeader("www.bing.com")
///             .originPath("/photos")
///             .origins(
///                 DeepCreatedOriginArgs.builder()
///                     .enabled(true)
///                     .hostName("www.someDomain1.net")
///                     .httpPort(80)
///                     .httpsPort(443)
///                     .name("origin1")
///                     .originHostHeader("www.someDomain1.net")
///                     .priority(1)
///                     .weight(50)
///                     .build(),
///                 DeepCreatedOriginArgs.builder()
///                     .enabled(true)
///                     .hostName("www.someDomain2.net")
///                     .httpPort(80)
///                     .httpsPort(443)
///                     .name("origin2")
///                     .originHostHeader("www.someDomain2.net")
///                     .priority(2)
///                     .weight(50)
///                     .build())
///             .profileName("profile1")
///             .queryStringCachingBehavior("BypassCaching")
///             .resourceGroupName("RG")
///             .tags(Map.of("key1", "value1"))
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
/// const endpoint = new azure_native.cdn.Endpoint("endpoint", {
///     contentTypesToCompress: [
///         "text/html",
///         "application/octet-stream",
///     ],
///     defaultOriginGroup: {
///         id: "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/originGroups/originGroup1",
///     },
///     deliveryPolicy: {
///         description: "Test description for a policy.",
///         rules: [{
///             actions: [
///                 {
///                     name: "CacheExpiration",
///                     parameters: {
///                         cacheBehavior: azure_native.cdn.CacheBehavior.Override,
///                         cacheDuration: "10:10:09",
///                         cacheType: azure_native.cdn.CacheType.All,
///                         typeName: "DeliveryRuleCacheExpirationActionParameters",
///                     },
///                 },
///                 {
///                     name: "ModifyResponseHeader",
///                     parameters: {
///                         headerAction: azure_native.cdn.HeaderAction.Overwrite,
///                         headerName: "Access-Control-Allow-Origin",
///                         typeName: "DeliveryRuleHeaderActionParameters",
///                         value: "*",
///                     },
///                 },
///                 {
///                     name: "ModifyRequestHeader",
///                     parameters: {
///                         headerAction: azure_native.cdn.HeaderAction.Overwrite,
///                         headerName: "Accept-Encoding",
///                         typeName: "DeliveryRuleHeaderActionParameters",
///                         value: "gzip",
///                     },
///                 },
///             ],
///             conditions: [{
///                 name: "RemoteAddress",
///                 parameters: {
///                     matchValues: [
///                         "192.168.1.0/24",
///                         "10.0.0.0/24",
///                     ],
///                     negateCondition: true,
///                     operator: azure_native.cdn.RemoteAddressOperator.IPMatch,
///                     typeName: "DeliveryRuleRemoteAddressConditionParameters",
///                 },
///             }],
///             name: "rule1",
///             order: 1,
///         }],
///     },
///     endpointName: "endpoint1",
///     isCompressionEnabled: true,
///     isHttpAllowed: true,
///     isHttpsAllowed: true,
///     location: "WestUs",
///     originGroups: [{
///         healthProbeSettings: {
///             probeIntervalInSeconds: 120,
///             probePath: "/health.aspx",
///             probeProtocol: azure_native.cdn.ProbeProtocol.Http,
///             probeRequestType: azure_native.cdn.HealthProbeRequestType.GET,
///         },
///         name: "originGroup1",
///         origins: [
///             {
///                 id: "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1",
///             },
///             {
///                 id: "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin2",
///             },
///         ],
///         responseBasedOriginErrorDetectionSettings: {
///             responseBasedDetectedErrorTypes: azure_native.cdn.ResponseBasedDetectedErrorTypes.TcpErrorsOnly,
///             responseBasedFailoverThresholdPercentage: 10,
///         },
///     }],
///     originHostHeader: "www.bing.com",
///     originPath: "/photos",
///     origins: [
///         {
///             enabled: true,
///             hostName: "www.someDomain1.net",
///             httpPort: 80,
///             httpsPort: 443,
///             name: "origin1",
///             originHostHeader: "www.someDomain1.net",
///             priority: 1,
///             weight: 50,
///         },
///         {
///             enabled: true,
///             hostName: "www.someDomain2.net",
///             httpPort: 80,
///             httpsPort: 443,
///             name: "origin2",
///             originHostHeader: "www.someDomain2.net",
///             priority: 2,
///             weight: 50,
///         },
///     ],
///     profileName: "profile1",
///     queryStringCachingBehavior: azure_native.cdn.QueryStringCachingBehavior.BypassCaching,
///     resourceGroupName: "RG",
///     tags: {
///         key1: "value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// endpoint = azure_native.cdn.Endpoint("endpoint",
///     content_types_to_compress=[
///         "text/html",
///         "application/octet-stream",
///     ],
///     default_origin_group={
///         "id": "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/originGroups/originGroup1",
///     },
///     delivery_policy={
///         "description": "Test description for a policy.",
///         "rules": [{
///             "actions": [
///                 {
///                     "name": "CacheExpiration",
///                     "parameters": {
///                         "cache_behavior": azure_native.cdn.CacheBehavior.OVERRIDE,
///                         "cache_duration": "10:10:09",
///                         "cache_type": azure_native.cdn.CacheType.ALL,
///                         "type_name": "DeliveryRuleCacheExpirationActionParameters",
///                     },
///                 },
///                 {
///                     "name": "ModifyResponseHeader",
///                     "parameters": {
///                         "header_action": azure_native.cdn.HeaderAction.OVERWRITE,
///                         "header_name": "Access-Control-Allow-Origin",
///                         "type_name": "DeliveryRuleHeaderActionParameters",
///                         "value": "*",
///                     },
///                 },
///                 {
///                     "name": "ModifyRequestHeader",
///                     "parameters": {
///                         "header_action": azure_native.cdn.HeaderAction.OVERWRITE,
///                         "header_name": "Accept-Encoding",
///                         "type_name": "DeliveryRuleHeaderActionParameters",
///                         "value": "gzip",
///                     },
///                 },
///             ],
///             "conditions": [{
///                 "name": "RemoteAddress",
///                 "parameters": {
///                     "match_values": [
///                         "192.168.1.0/24",
///                         "10.0.0.0/24",
///                     ],
///                     "negate_condition": True,
///                     "operator": azure_native.cdn.RemoteAddressOperator.IP_MATCH,
///                     "type_name": "DeliveryRuleRemoteAddressConditionParameters",
///                 },
///             }],
///             "name": "rule1",
///             "order": 1,
///         }],
///     },
///     endpoint_name="endpoint1",
///     is_compression_enabled=True,
///     is_http_allowed=True,
///     is_https_allowed=True,
///     location="WestUs",
///     origin_groups=[{
///         "health_probe_settings": {
///             "probe_interval_in_seconds": 120,
///             "probe_path": "/health.aspx",
///             "probe_protocol": azure_native.cdn.ProbeProtocol.HTTP,
///             "probe_request_type": azure_native.cdn.HealthProbeRequestType.GET,
///         },
///         "name": "originGroup1",
///         "origins": [
///             {
///                 "id": "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1",
///             },
///             {
///                 "id": "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin2",
///             },
///         ],
///         "response_based_origin_error_detection_settings": {
///             "response_based_detected_error_types": azure_native.cdn.ResponseBasedDetectedErrorTypes.TCP_ERRORS_ONLY,
///             "response_based_failover_threshold_percentage": 10,
///         },
///     }],
///     origin_host_header="www.bing.com",
///     origin_path="/photos",
///     origins=[
///         {
///             "enabled": True,
///             "host_name": "www.someDomain1.net",
///             "http_port": 80,
///             "https_port": 443,
///             "name": "origin1",
///             "origin_host_header": "www.someDomain1.net",
///             "priority": 1,
///             "weight": 50,
///         },
///         {
///             "enabled": True,
///             "host_name": "www.someDomain2.net",
///             "http_port": 80,
///             "https_port": 443,
///             "name": "origin2",
///             "origin_host_header": "www.someDomain2.net",
///             "priority": 2,
///             "weight": 50,
///         },
///     ],
///     profile_name="profile1",
///     query_string_caching_behavior=azure_native.cdn.QueryStringCachingBehavior.BYPASS_CACHING,
///     resource_group_name="RG",
///     tags={
///         "key1": "value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   endpoint:
///     type: azure-native:cdn:Endpoint
///     properties:
///       contentTypesToCompress:
///         - text/html
///         - application/octet-stream
///       defaultOriginGroup:
///         id: /subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/originGroups/originGroup1
///       deliveryPolicy:
///         description: Test description for a policy.
///         rules:
///           - actions:
///               - name: CacheExpiration
///                 parameters:
///                   cacheBehavior: Override
///                   cacheDuration: 10:10:09
///                   cacheType: All
///                   typeName: DeliveryRuleCacheExpirationActionParameters
///               - name: ModifyResponseHeader
///                 parameters:
///                   headerAction: Overwrite
///                   headerName: Access-Control-Allow-Origin
///                   typeName: DeliveryRuleHeaderActionParameters
///                   value: '*'
///               - name: ModifyRequestHeader
///                 parameters:
///                   headerAction: Overwrite
///                   headerName: Accept-Encoding
///                   typeName: DeliveryRuleHeaderActionParameters
///                   value: gzip
///             conditions:
///               - name: RemoteAddress
///                 parameters:
///                   matchValues:
///                     - 192.168.1.0/24
///                     - 10.0.0.0/24
///                   negateCondition: true
///                   operator: IPMatch
///                   typeName: DeliveryRuleRemoteAddressConditionParameters
///             name: rule1
///             order: 1
///       endpointName: endpoint1
///       isCompressionEnabled: true
///       isHttpAllowed: true
///       isHttpsAllowed: true
///       location: WestUs
///       originGroups:
///         - healthProbeSettings:
///             probeIntervalInSeconds: 120
///             probePath: /health.aspx
///             probeProtocol: Http
///             probeRequestType: GET
///           name: originGroup1
///           origins:
///             - id: /subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin1
///             - id: /subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/endpoints/endpoint1/origins/origin2
///           responseBasedOriginErrorDetectionSettings:
///             responseBasedDetectedErrorTypes: TcpErrorsOnly
///             responseBasedFailoverThresholdPercentage: 10
///       originHostHeader: www.bing.com
///       originPath: /photos
///       origins:
///         - enabled: true
///           hostName: www.someDomain1.net
///           httpPort: 80
///           httpsPort: 443
///           name: origin1
///           originHostHeader: www.someDomain1.net
///           priority: 1
///           weight: 50
///         - enabled: true
///           hostName: www.someDomain2.net
///           httpPort: 80
///           httpsPort: 443
///           name: origin2
///           originHostHeader: www.someDomain2.net
///           priority: 2
///           weight: 50
///       profileName: profile1
///       queryStringCachingBehavior: BypassCaching
///       resourceGroupName: RG
///       tags:
///         key1: value1
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
/// $ pulumi import azure-native:cdn:Endpoint endpoint4899 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}
/// ```
class Endpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// List of content types on which compression applies. The value should be a valid MIME type.
  late final pulumi.Output<List<String>?> contentTypesToCompress;
  /// The custom domains under the endpoint.
  late final pulumi.Output<List<Map<String, dynamic>>> customDomains;
  /// A reference to the origin group.
  late final pulumi.Output<ResourceReferenceResponse?> defaultOriginGroup;
  /// A policy that specifies the delivery rules to be used for an endpoint.
  late final pulumi.Output<EndpointPropertiesUpdateParametersDeliveryPolicyResponse?> deliveryPolicy;
  /// List of rules defining the user's geo access within a CDN endpoint. Each geo filter defines an access rule to a specified path or content, e.g. block APAC for path /pictures/
  late final pulumi.Output<List<Map<String, dynamic>>?> geoFilters;
  /// The host name of the endpoint structured as {endpointName}.{DNSZone}, e.g. contoso.azureedge.net
  late final pulumi.Output<String> hostName;
  /// Indicates whether content compression is enabled on CDN. Default value is false. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on CDN when requested content is smaller than 1 byte or larger than 1 MB.
  late final pulumi.Output<bool?> isCompressionEnabled;
  /// Indicates whether HTTP traffic is allowed on the endpoint. Default value is true. At least one protocol (HTTP or HTTPS) must be allowed.
  late final pulumi.Output<bool?> isHttpAllowed;
  /// Indicates whether HTTPS traffic is allowed on the endpoint. Default value is true. At least one protocol (HTTP or HTTPS) must be allowed.
  late final pulumi.Output<bool?> isHttpsAllowed;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Specifies what scenario the customer wants this CDN endpoint to optimize for, e.g. Download, Media services. With this information, CDN can apply scenario driven optimization.
  late final pulumi.Output<String?> optimizationType;
  /// The origin groups comprising of origins that are used for load balancing the traffic based on availability.
  late final pulumi.Output<List<Map<String, dynamic>>?> originGroups;
  /// The host header value sent to the origin with each request. This property at Endpoint is only allowed when endpoint uses single origin and can be overridden by the same property specified at origin.If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default.
  late final pulumi.Output<String?> originHostHeader;
  /// A directory path on the origin that CDN can use to retrieve content from, e.g. contoso.cloudapp.net/originpath.
  late final pulumi.Output<String?> originPath;
  /// The source of the content being delivered via CDN.
  late final pulumi.Output<List<Map<String, dynamic>>> origins;
  /// Path to a file hosted on the origin which helps accelerate delivery of the dynamic content and calculate the most optimal routes for the CDN. This is relative to the origin path. This property is only relevant when using a single origin.
  late final pulumi.Output<String?> probePath;
  /// Provisioning status of the endpoint.
  late final pulumi.Output<String> provisioningState;
  /// Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL.
  late final pulumi.Output<String?> queryStringCachingBehavior;
  /// Resource status of the endpoint.
  late final pulumi.Output<String> resourceState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// List of keys used to validate the signed URL hashes.
  late final pulumi.Output<List<Map<String, dynamic>>?> urlSigningKeys;
  /// Defines the Web Application Firewall policy for the endpoint (if applicable)
  late final pulumi.Output<EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse?> webApplicationFirewallPolicyLink;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_cdn_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:Endpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contentTypesToCompress = registerOutput<List<String>?>('contentTypesToCompress');
    customDomains = registerOutput<List<Map<String, dynamic>>>('customDomains');
    defaultOriginGroup = registerOutput<ResourceReferenceResponse?>('defaultOriginGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryPolicy = registerOutput<EndpointPropertiesUpdateParametersDeliveryPolicyResponse?>('deliveryPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointPropertiesUpdateParametersDeliveryPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    geoFilters = registerOutput<List<Map<String, dynamic>>?>('geoFilters');
    hostName = registerOutput<String>('hostName');
    isCompressionEnabled = registerOutput<bool?>('isCompressionEnabled');
    isHttpAllowed = registerOutput<bool?>('isHttpAllowed');
    isHttpsAllowed = registerOutput<bool?>('isHttpsAllowed');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    optimizationType = registerOutput<String?>('optimizationType');
    originGroups = registerOutput<List<Map<String, dynamic>>?>('originGroups');
    originHostHeader = registerOutput<String?>('originHostHeader');
    originPath = registerOutput<String?>('originPath');
    origins = registerOutput<List<Map<String, dynamic>>>('origins');
    probePath = registerOutput<String?>('probePath');
    provisioningState = registerOutput<String>('provisioningState');
    queryStringCachingBehavior = registerOutput<String?>('queryStringCachingBehavior');
    resourceState = registerOutput<String>('resourceState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    urlSigningKeys = registerOutput<List<Map<String, dynamic>>?>('urlSigningKeys');
    webApplicationFirewallPolicyLink = registerOutput<EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse?>('webApplicationFirewallPolicyLink', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointPropertiesUpdateParametersWebApplicationFirewallPolicyLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
