import 'package:pulumi/pulumi.dart' as pulumi;
import 'activated_resource_reference_response.dart';
import 'afd_route_cache_configuration_response.dart';
import 'resource_reference_response.dart';
import 'route_args.dart';
import 'system_data_response.dart';

/// Friendly Routes name mapping to the any Routes or secret related information.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Routes_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var route = new AzureNative.Cdn.Route("route", new()
///     {
///         CacheConfiguration = new AzureNative.Cdn.Inputs.AfdRouteCacheConfigurationArgs
///         {
///             CompressionSettings = new AzureNative.Cdn.Inputs.CompressionSettingsArgs
///             {
///                 ContentTypesToCompress = new[]
///                 {
///                     "text/html",
///                     "application/octet-stream",
///                 },
///                 IsCompressionEnabled = true,
///             },
///             QueryParameters = "querystring=test",
///             QueryStringCachingBehavior = AzureNative.Cdn.AfdQueryStringCachingBehavior.IgnoreSpecifiedQueryStrings,
///         },
///         CustomDomains = new[]
///         {
///             new AzureNative.Cdn.Inputs.ActivatedResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/customDomains/domain1",
///             },
///         },
///         EnabledState = AzureNative.Cdn.EnabledState.Enabled,
///         EndpointName = "endpoint1",
///         ForwardingProtocol = AzureNative.Cdn.ForwardingProtocol.MatchRequest,
///         HttpsRedirect = AzureNative.Cdn.HttpsRedirect.Enabled,
///         LinkToDefaultDomain = AzureNative.Cdn.LinkToDefaultDomain.Enabled,
///         OriginGroup = new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/originGroups/originGroup1",
///         },
///         PatternsToMatch = new[]
///         {
///             "/*",
///         },
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
///         RouteName = "route1",
///         RuleSets = new[]
///         {
///             new AzureNative.Cdn.Inputs.ResourceReferenceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/ruleSets/ruleSet1",
///             },
///         },
///         SupportedProtocols = new[]
///         {
///             AzureNative.Cdn.AFDEndpointProtocols.Https,
///             AzureNative.Cdn.AFDEndpointProtocols.Http,
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
/// 		_, err := cdn.NewRoute(ctx, "route", &cdn.RouteArgs{
/// 			CacheConfiguration: &cdn.AfdRouteCacheConfigurationArgs{
/// 				CompressionSettings: &cdn.CompressionSettingsArgs{
/// 					ContentTypesToCompress: pulumi.StringArray{
/// 						pulumi.String("text/html"),
/// 						pulumi.String("application/octet-stream"),
/// 					},
/// 					IsCompressionEnabled: pulumi.Bool(true),
/// 				},
/// 				QueryParameters:            pulumi.String("querystring=test"),
/// 				QueryStringCachingBehavior: pulumi.String(cdn.AfdQueryStringCachingBehaviorIgnoreSpecifiedQueryStrings),
/// 			},
/// 			CustomDomains: cdn.ActivatedResourceReferenceArray{
/// 				&cdn.ActivatedResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/customDomains/domain1"),
/// 				},
/// 			},
/// 			EnabledState:        pulumi.String(cdn.EnabledStateEnabled),
/// 			EndpointName:        pulumi.String("endpoint1"),
/// 			ForwardingProtocol:  pulumi.String(cdn.ForwardingProtocolMatchRequest),
/// 			HttpsRedirect:       pulumi.String(cdn.HttpsRedirectEnabled),
/// 			LinkToDefaultDomain: pulumi.String(cdn.LinkToDefaultDomainEnabled),
/// 			OriginGroup: &cdn.ResourceReferenceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/originGroups/originGroup1"),
/// 			},
/// 			PatternsToMatch: pulumi.StringArray{
/// 				pulumi.String("/*"),
/// 			},
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
/// 			RouteName:         pulumi.String("route1"),
/// 			RuleSets: cdn.ResourceReferenceArray{
/// 				&cdn.ResourceReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/ruleSets/ruleSet1"),
/// 				},
/// 			},
/// 			SupportedProtocols: pulumi.StringArray{
/// 				pulumi.String(cdn.AFDEndpointProtocolsHttps),
/// 				pulumi.String(cdn.AFDEndpointProtocolsHttp),
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
/// import com.pulumi.azurenative.cdn.Route;
/// import com.pulumi.azurenative.cdn.RouteArgs;
/// import com.pulumi.azurenative.cdn.inputs.AfdRouteCacheConfigurationArgs;
/// import com.pulumi.azurenative.cdn.inputs.CompressionSettingsArgs;
/// import com.pulumi.azurenative.cdn.inputs.ActivatedResourceReferenceArgs;
/// import com.pulumi.azurenative.cdn.inputs.ResourceReferenceArgs;
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
///         var route = new Route("route", RouteArgs.builder()
///             .cacheConfiguration(AfdRouteCacheConfigurationArgs.builder()
///                 .compressionSettings(CompressionSettingsArgs.builder()
///                     .contentTypesToCompress(
///                         "text/html",
///                         "application/octet-stream")
///                     .isCompressionEnabled(true)
///                     .build())
///                 .queryParameters("querystring=test")
///                 .queryStringCachingBehavior("IgnoreSpecifiedQueryStrings")
///                 .build())
///             .customDomains(ActivatedResourceReferenceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/customDomains/domain1")
///                 .build())
///             .enabledState("Enabled")
///             .endpointName("endpoint1")
///             .forwardingProtocol("MatchRequest")
///             .httpsRedirect("Enabled")
///             .linkToDefaultDomain("Enabled")
///             .originGroup(ResourceReferenceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/originGroups/originGroup1")
///                 .build())
///             .patternsToMatch("/*")
///             .profileName("profile1")
///             .resourceGroupName("RG")
///             .routeName("route1")
///             .ruleSets(ResourceReferenceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/ruleSets/ruleSet1")
///                 .build())
///             .supportedProtocols(
///                 "Https",
///                 "Http")
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
/// const route = new azure_native.cdn.Route("route", {
///     cacheConfiguration: {
///         compressionSettings: {
///             contentTypesToCompress: [
///                 "text/html",
///                 "application/octet-stream",
///             ],
///             isCompressionEnabled: true,
///         },
///         queryParameters: "querystring=test",
///         queryStringCachingBehavior: azure_native.cdn.AfdQueryStringCachingBehavior.IgnoreSpecifiedQueryStrings,
///     },
///     customDomains: [{
///         id: "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/customDomains/domain1",
///     }],
///     enabledState: azure_native.cdn.EnabledState.Enabled,
///     endpointName: "endpoint1",
///     forwardingProtocol: azure_native.cdn.ForwardingProtocol.MatchRequest,
///     httpsRedirect: azure_native.cdn.HttpsRedirect.Enabled,
///     linkToDefaultDomain: azure_native.cdn.LinkToDefaultDomain.Enabled,
///     originGroup: {
///         id: "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/originGroups/originGroup1",
///     },
///     patternsToMatch: ["/*"],
///     profileName: "profile1",
///     resourceGroupName: "RG",
///     routeName: "route1",
///     ruleSets: [{
///         id: "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/ruleSets/ruleSet1",
///     }],
///     supportedProtocols: [
///         azure_native.cdn.AFDEndpointProtocols.Https,
///         azure_native.cdn.AFDEndpointProtocols.Http,
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// route = azure_native.cdn.Route("route",
///     cache_configuration={
///         "compression_settings": {
///             "content_types_to_compress": [
///                 "text/html",
///                 "application/octet-stream",
///             ],
///             "is_compression_enabled": True,
///         },
///         "query_parameters": "querystring=test",
///         "query_string_caching_behavior": azure_native.cdn.AfdQueryStringCachingBehavior.IGNORE_SPECIFIED_QUERY_STRINGS,
///     },
///     custom_domains=[{
///         "id": "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/customDomains/domain1",
///     }],
///     enabled_state=azure_native.cdn.EnabledState.ENABLED,
///     endpoint_name="endpoint1",
///     forwarding_protocol=azure_native.cdn.ForwardingProtocol.MATCH_REQUEST,
///     https_redirect=azure_native.cdn.HttpsRedirect.ENABLED,
///     link_to_default_domain=azure_native.cdn.LinkToDefaultDomain.ENABLED,
///     origin_group={
///         "id": "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/originGroups/originGroup1",
///     },
///     patterns_to_match=["/*"],
///     profile_name="profile1",
///     resource_group_name="RG",
///     route_name="route1",
///     rule_sets=[{
///         "id": "/subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/ruleSets/ruleSet1",
///     }],
///     supported_protocols=[
///         azure_native.cdn.AFDEndpointProtocols.HTTPS,
///         azure_native.cdn.AFDEndpointProtocols.HTTP,
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   route:
///     type: azure-native:cdn:Route
///     properties:
///       cacheConfiguration:
///         compressionSettings:
///           contentTypesToCompress:
///             - text/html
///             - application/octet-stream
///           isCompressionEnabled: true
///         queryParameters: querystring=test
///         queryStringCachingBehavior: IgnoreSpecifiedQueryStrings
///       customDomains:
///         - id: /subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/customDomains/domain1
///       enabledState: Enabled
///       endpointName: endpoint1
///       forwardingProtocol: MatchRequest
///       httpsRedirect: Enabled
///       linkToDefaultDomain: Enabled
///       originGroup:
///         id: /subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/originGroups/originGroup1
///       patternsToMatch:
///         - /*
///       profileName: profile1
///       resourceGroupName: RG
///       routeName: route1
///       ruleSets:
///         - id: /subscriptions/subid/resourceGroups/RG/providers/Microsoft.Cdn/profiles/profile1/ruleSets/ruleSet1
///       supportedProtocols:
///         - Https
///         - Http
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
/// $ pulumi import azure-native:cdn:Route route1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/afdEndpoints/{endpointName}/routes/{routeName}
/// ```
class Route extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The caching configuration for this route. To disable caching, do not provide a cacheConfiguration object.
  late final pulumi.Output<AfdRouteCacheConfigurationResponse?> cacheConfiguration;
  /// Domains referenced by this endpoint.
  late final pulumi.Output<List<ActivatedResourceReferenceResponse>?> customDomains;
  late final pulumi.Output<String> deploymentStatus;
  /// Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
  late final pulumi.Output<String?> enabledState;
  /// The name of the endpoint which holds the route.
  late final pulumi.Output<String> endpointName;
  /// Protocol this rule will use when forwarding traffic to backends.
  late final pulumi.Output<String?> forwardingProtocol;
  /// Whether to automatically redirect HTTP traffic to HTTPS traffic. Note that this is a easy way to set up this rule and it will be the first rule that gets executed.
  late final pulumi.Output<String?> httpsRedirect;
  /// whether this route will be linked to the default endpoint domain.
  late final pulumi.Output<String?> linkToDefaultDomain;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// A reference to the origin group.
  late final pulumi.Output<ResourceReferenceResponse?> originGroup;
  /// A directory path on the origin that AzureFrontDoor can use to retrieve content from, e.g. contoso.cloudapp.net/originpath.
  late final pulumi.Output<String?> originPath;
  /// The route patterns of the rule.
  late final pulumi.Output<List<String>?> patternsToMatch;
  /// Provisioning status
  late final pulumi.Output<String> provisioningState;
  /// rule sets referenced by this endpoint.
  late final pulumi.Output<List<ResourceReferenceResponse>?> ruleSets;
  /// List of supported protocols for this route.
  late final pulumi.Output<List<String>?> supportedProtocols;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Route].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route]. {@macro pulumi_cdn_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route(
    String name, {
    RouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:Route',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.cacheConfiguration = registerOutput<AfdRouteCacheConfigurationResponse?>('cacheConfiguration');
    this.customDomains = registerOutput<List<ActivatedResourceReferenceResponse>?>('customDomains');
    this.deploymentStatus = registerOutput<String>('deploymentStatus');
    this.enabledState = registerOutput<String?>('enabledState');
    this.endpointName = registerOutput<String>('endpointName');
    this.forwardingProtocol = registerOutput<String?>('forwardingProtocol');
    this.httpsRedirect = registerOutput<String?>('httpsRedirect');
    this.linkToDefaultDomain = registerOutput<String?>('linkToDefaultDomain');
    this.name = registerOutput<String>('name');
    this.originGroup = registerOutput<ResourceReferenceResponse?>('originGroup');
    this.originPath = registerOutput<String?>('originPath');
    this.patternsToMatch = registerOutput<List<String>?>('patternsToMatch');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.ruleSets = registerOutput<List<ResourceReferenceResponse>?>('ruleSets');
    this.supportedProtocols = registerOutput<List<String>?>('supportedProtocols');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
