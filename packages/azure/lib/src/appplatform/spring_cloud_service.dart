import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_service_args.dart';
import 'spring_cloud_service_config_server_git_setting.dart';
import 'spring_cloud_service_container_registry.dart';
import 'spring_cloud_service_default_build_service.dart';
import 'spring_cloud_service_marketplace.dart';
import 'spring_cloud_service_network.dart';
import 'spring_cloud_service_required_network_traffic_rule.dart';
import 'spring_cloud_service_trace.dart';

/// Manages an Azure Spring Cloud Service.
///
/// !> **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudService` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "tf-test-appinsights",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleSpringCloudService = new azure.appplatform.SpringCloudService("example", {
///     name: "example-springcloud",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "S0",
///     configServerGitSetting: {
///         uri: "https://github.com/Azure-Samples/piggymetrics",
///         label: "config",
///         searchPaths: [
///             "dir1",
///             "dir2",
///         ],
///     },
///     trace: {
///         connectionString: exampleInsights.connectionString,
///         sampleRate: 10,
///     },
///     tags: {
///         Env: "staging",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="tf-test-appinsights",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_spring_cloud_service = azure.appplatform.SpringCloudService("example",
///     name="example-springcloud",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="S0",
///     config_server_git_setting={
///         "uri": "https://github.com/Azure-Samples/piggymetrics",
///         "label": "config",
///         "search_paths": [
///             "dir1",
///             "dir2",
///         ],
///     },
///     trace={
///         "connection_string": example_insights.connection_string,
///         "sample_rate": 10,
///     },
///     tags={
///         "Env": "staging",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "tf-test-appinsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleSpringCloudService = new Azure.AppPlatform.SpringCloudService("example", new()
///     {
///         Name = "example-springcloud",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "S0",
///         ConfigServerGitSetting = new Azure.AppPlatform.Inputs.SpringCloudServiceConfigServerGitSettingArgs
///         {
///             Uri = "https://github.com/Azure-Samples/piggymetrics",
///             Label = "config",
///             SearchPaths = new[]
///             {
///                 "dir1",
///                 "dir2",
///             },
///         },
///         Trace = new Azure.AppPlatform.Inputs.SpringCloudServiceTraceArgs
///         {
///             ConnectionString = exampleInsights.ConnectionString,
///             SampleRate = 10,
///         },
///         Tags =
///         {
///             { "Env", "staging" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appplatform"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("tf-test-appinsights"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appplatform.NewSpringCloudService(ctx, "example", &appplatform.SpringCloudServiceArgs{
/// 			Name:              pulumi.String("example-springcloud"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("S0"),
/// 			ConfigServerGitSetting: &appplatform.SpringCloudServiceConfigServerGitSettingArgs{
/// 				Uri:   pulumi.String("https://github.com/Azure-Samples/piggymetrics"),
/// 				Label: pulumi.String("config"),
/// 				SearchPaths: pulumi.StringArray{
/// 					pulumi.String("dir1"),
/// 					pulumi.String("dir2"),
/// 				},
/// 			},
/// 			Trace: &appplatform.SpringCloudServiceTraceArgs{
/// 				ConnectionString: exampleInsights.ConnectionString,
/// 				SampleRate:       pulumi.Float64(10),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Env": pulumi.String("staging"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.appplatform.SpringCloudService;
/// import com.pulumi.azure.appplatform.SpringCloudServiceArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudServiceConfigServerGitSettingArgs;
/// import com.pulumi.azure.appplatform.inputs.SpringCloudServiceTraceArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("tf-test-appinsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleSpringCloudService = new SpringCloudService("exampleSpringCloudService", SpringCloudServiceArgs.builder()
///             .name("example-springcloud")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("S0")
///             .configServerGitSetting(SpringCloudServiceConfigServerGitSettingArgs.builder()
///                 .uri("https://github.com/Azure-Samples/piggymetrics")
///                 .label("config")
///                 .searchPaths(
///                     "dir1",
///                     "dir2")
///                 .build())
///             .trace(SpringCloudServiceTraceArgs.builder()
///                 .connectionString(exampleInsights.connectionString())
///                 .sampleRate(10.0)
///                 .build())
///             .tags(Map.of("Env", "staging"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: tf-test-appinsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleSpringCloudService:
///     type: azure:appplatform:SpringCloudService
///     name: example
///     properties:
///       name: example-springcloud
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: S0
///       configServerGitSetting:
///         uri: https://github.com/Azure-Samples/piggymetrics
///         label: config
///         searchPaths:
///           - dir1
///           - dir2
///       trace:
///         connectionString: ${exampleInsights.connectionString}
///         sampleRate: 10
///       tags:
///         Env: staging
/// ```
///
///
/// ## Import
///
/// Spring Cloud services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudService:SpringCloudService example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AppPlatform/spring/spring1
/// ```
class SpringCloudService extends pulumi.CustomResource {
  /// Specifies the size for this Spring Cloud Service's default build agent pool. Possible values are `S1`, `S2`, `S3`, `S4` and `S5`. This field is applicable only for Spring Cloud Service with enterprise tier.
  late final pulumi.Output<String?> buildAgentPoolSize;
  /// A `config_server_git_setting` block as defined below. This field is applicable only for Spring Cloud Service with basic and standard tier.
  late final pulumi.Output<SpringCloudServiceConfigServerGitSetting?> configServerGitSetting;
  /// One or more `container_registry` block as defined below. This field is applicable only for Spring Cloud Service with enterprise tier.
  late final pulumi.Output<List<SpringCloudServiceContainerRegistry>?> containerRegistries;
  /// A `default_build_service` block as defined below. This field is applicable only for Spring Cloud Service with enterprise tier.
  late final pulumi.Output<SpringCloudServiceDefaultBuildService?> defaultBuildService;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Should the log stream in vnet injection instance could be accessed from Internet?
  late final pulumi.Output<bool?> logStreamPublicEndpointEnabled;
  /// The resource Id of the Managed Environment that the Spring Apps instance builds on. Can only be specified when `sku_tier` is set to `StandardGen2`.
  late final pulumi.Output<String?> managedEnvironmentId;
  /// A `marketplace` block as defined below. Can only be specified when `sku` is set to `E0`.
  late final pulumi.Output<SpringCloudServiceMarketplace> marketplace;
  /// Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `network` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<SpringCloudServiceNetwork?> network;
  /// A list of the outbound Public IP Addresses used by this Spring Cloud Service.
  late final pulumi.Output<List<String>> outboundPublicIpAddresses;
  /// A list of `required_network_traffic_rules` blocks as defined below.
  late final pulumi.Output<List<SpringCloudServiceRequiredNetworkTrafficRule>> requiredNetworkTrafficRules;
  /// Specifies The name of the resource group in which to create the Spring Cloud Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Whether enable the default Service Registry. This field is applicable only for Spring Cloud Service with enterprise tier.
  late final pulumi.Output<bool?> serviceRegistryEnabled;
  /// The ID of the Spring Cloud Service Registry.
  late final pulumi.Output<String> serviceRegistryId;
  /// Specifies the SKU Name for this Spring Cloud Service. Possible values are `B0`, `S0` and `E0`. Defaults to `S0`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> skuName;
  /// Specifies the SKU Tier for this Spring Cloud Service. Possible values are `Basic`, `Enterprise`, `Standard` and `StandardGen2`. The attribute is automatically computed from API response except when `managed_environment_id` is defined. Changing this forces a new resource to be created.
  late final pulumi.Output<String> skuTier;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `trace` block as defined below.
  late final pulumi.Output<SpringCloudServiceTrace?> trace;
  /// Whether zone redundancy is enabled for this Spring Cloud Service. Defaults to `false`.
  late final pulumi.Output<bool?> zoneRedundant;

  /// Creates a new [SpringCloudService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudService]. {@macro pulumi_appplatform_spring_cloud_service_spring_cloud_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudService(
    String name, {
    SpringCloudServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudService:SpringCloudService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.buildAgentPoolSize = registerOutput<String?>('buildAgentPoolSize');
    this.configServerGitSetting = registerOutput<SpringCloudServiceConfigServerGitSetting?>('configServerGitSetting');
    this.containerRegistries = registerOutput<List<SpringCloudServiceContainerRegistry>?>('containerRegistries');
    this.defaultBuildService = registerOutput<SpringCloudServiceDefaultBuildService?>('defaultBuildService');
    this.location = registerOutput<String>('location');
    this.logStreamPublicEndpointEnabled = registerOutput<bool?>('logStreamPublicEndpointEnabled');
    this.managedEnvironmentId = registerOutput<String?>('managedEnvironmentId');
    this.marketplace = registerOutput<SpringCloudServiceMarketplace>('marketplace');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<SpringCloudServiceNetwork?>('network');
    this.outboundPublicIpAddresses = registerOutput<List<String>>('outboundPublicIpAddresses');
    this.requiredNetworkTrafficRules = registerOutput<List<SpringCloudServiceRequiredNetworkTrafficRule>>('requiredNetworkTrafficRules');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.serviceRegistryEnabled = registerOutput<bool?>('serviceRegistryEnabled');
    this.serviceRegistryId = registerOutput<String>('serviceRegistryId');
    this.skuName = registerOutput<String?>('skuName');
    this.skuTier = registerOutput<String>('skuTier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.trace = registerOutput<SpringCloudServiceTrace?>('trace');
    this.zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }
}
