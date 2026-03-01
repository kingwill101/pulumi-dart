import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_manager_azure_endpoint_args.dart';
import 'traffic_manager_azure_endpoint_custom_header.dart';
import 'traffic_manager_azure_endpoint_subnet.dart';

/// Manages an Azure Endpoint within a Traffic Manager Profile.
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
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example-public-ip",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
///     domainNameLabel: "example-public-ip",
/// });
/// const exampleTrafficManagerProfile = new azure.network.TrafficManagerProfile("example", {
///     name: "example-profile",
///     resourceGroupName: example.name,
///     trafficRoutingMethod: "Weighted",
///     dnsConfig: {
///         relativeName: "example-profile",
///         ttl: 100,
///     },
///     monitorConfig: {
///         protocol: "HTTP",
///         port: 80,
///         path: "/",
///         intervalInSeconds: 30,
///         timeoutInSeconds: 9,
///         toleratedNumberOfFailures: 3,
///     },
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleTrafficManagerAzureEndpoint = new azure.network.TrafficManagerAzureEndpoint("example", {
///     name: "example-endpoint",
///     profileId: exampleTrafficManagerProfile.id,
///     alwaysServeEnabled: true,
///     weight: 100,
///     targetResourceId: examplePublicIp.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_public_ip = azure.network.PublicIp("example",
///     name="example-public-ip",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static",
///     domain_name_label="example-public-ip")
/// example_traffic_manager_profile = azure.network.TrafficManagerProfile("example",
///     name="example-profile",
///     resource_group_name=example.name,
///     traffic_routing_method="Weighted",
///     dns_config={
///         "relative_name": "example-profile",
///         "ttl": 100,
///     },
///     monitor_config={
///         "protocol": "HTTP",
///         "port": 80,
///         "path": "/",
///         "interval_in_seconds": 30,
///         "timeout_in_seconds": 9,
///         "tolerated_number_of_failures": 3,
///     },
///     tags={
///         "environment": "Production",
///     })
/// example_traffic_manager_azure_endpoint = azure.network.TrafficManagerAzureEndpoint("example",
///     name="example-endpoint",
///     profile_id=example_traffic_manager_profile.id,
///     always_serve_enabled=True,
///     weight=100,
///     target_resource_id=example_public_ip.id)
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
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example-public-ip",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///         DomainNameLabel = "example-public-ip",
///     });
///
///     var exampleTrafficManagerProfile = new Azure.Network.TrafficManagerProfile("example", new()
///     {
///         Name = "example-profile",
///         ResourceGroupName = example.Name,
///         TrafficRoutingMethod = "Weighted",
///         DnsConfig = new Azure.Network.Inputs.TrafficManagerProfileDnsConfigArgs
///         {
///             RelativeName = "example-profile",
///             Ttl = 100,
///         },
///         MonitorConfig = new Azure.Network.Inputs.TrafficManagerProfileMonitorConfigArgs
///         {
///             Protocol = "HTTP",
///             Port = 80,
///             Path = "/",
///             IntervalInSeconds = 30,
///             TimeoutInSeconds = 9,
///             ToleratedNumberOfFailures = 3,
///         },
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleTrafficManagerAzureEndpoint = new Azure.Network.TrafficManagerAzureEndpoint("example", new()
///     {
///         Name = "example-endpoint",
///         ProfileId = exampleTrafficManagerProfile.Id,
///         AlwaysServeEnabled = true,
///         Weight = 100,
///         TargetResourceId = examplePublicIp.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-public-ip"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			DomainNameLabel:   pulumi.String("example-public-ip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTrafficManagerProfile, err := network.NewTrafficManagerProfile(ctx, "example", &network.TrafficManagerProfileArgs{
/// 			Name:                 pulumi.String("example-profile"),
/// 			ResourceGroupName:    example.Name,
/// 			TrafficRoutingMethod: pulumi.String("Weighted"),
/// 			DnsConfig: &network.TrafficManagerProfileDnsConfigArgs{
/// 				RelativeName: pulumi.String("example-profile"),
/// 				Ttl:          pulumi.Int(100),
/// 			},
/// 			MonitorConfig: &network.TrafficManagerProfileMonitorConfigArgs{
/// 				Protocol:                  pulumi.String("HTTP"),
/// 				Port:                      pulumi.Int(80),
/// 				Path:                      pulumi.String("/"),
/// 				IntervalInSeconds:         pulumi.Int(30),
/// 				TimeoutInSeconds:          pulumi.Int(9),
/// 				ToleratedNumberOfFailures: pulumi.Int(3),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewTrafficManagerAzureEndpoint(ctx, "example", &network.TrafficManagerAzureEndpointArgs{
/// 			Name:               pulumi.String("example-endpoint"),
/// 			ProfileId:          exampleTrafficManagerProfile.ID(),
/// 			AlwaysServeEnabled: pulumi.Bool(true),
/// 			Weight:             pulumi.Int(100),
/// 			TargetResourceId:   examplePublicIp.ID(),
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.TrafficManagerProfile;
/// import com.pulumi.azure.network.TrafficManagerProfileArgs;
/// import com.pulumi.azure.network.inputs.TrafficManagerProfileDnsConfigArgs;
/// import com.pulumi.azure.network.inputs.TrafficManagerProfileMonitorConfigArgs;
/// import com.pulumi.azure.network.TrafficManagerAzureEndpoint;
/// import com.pulumi.azure.network.TrafficManagerAzureEndpointArgs;
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
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-public-ip")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .domainNameLabel("example-public-ip")
///             .build());
///
///         var exampleTrafficManagerProfile = new TrafficManagerProfile("exampleTrafficManagerProfile", TrafficManagerProfileArgs.builder()
///             .name("example-profile")
///             .resourceGroupName(example.name())
///             .trafficRoutingMethod("Weighted")
///             .dnsConfig(TrafficManagerProfileDnsConfigArgs.builder()
///                 .relativeName("example-profile")
///                 .ttl(100)
///                 .build())
///             .monitorConfig(TrafficManagerProfileMonitorConfigArgs.builder()
///                 .protocol("HTTP")
///                 .port(80)
///                 .path("/")
///                 .intervalInSeconds(30)
///                 .timeoutInSeconds(9)
///                 .toleratedNumberOfFailures(3)
///                 .build())
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleTrafficManagerAzureEndpoint = new TrafficManagerAzureEndpoint("exampleTrafficManagerAzureEndpoint", TrafficManagerAzureEndpointArgs.builder()
///             .name("example-endpoint")
///             .profileId(exampleTrafficManagerProfile.id())
///             .alwaysServeEnabled(true)
///             .weight(100)
///             .targetResourceId(examplePublicIp.id())
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
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example-public-ip
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///       domainNameLabel: example-public-ip
///   exampleTrafficManagerProfile:
///     type: azure:network:TrafficManagerProfile
///     name: example
///     properties:
///       name: example-profile
///       resourceGroupName: ${example.name}
///       trafficRoutingMethod: Weighted
///       dnsConfig:
///         relativeName: example-profile
///         ttl: 100
///       monitorConfig:
///         protocol: HTTP
///         port: 80
///         path: /
///         intervalInSeconds: 30
///         timeoutInSeconds: 9
///         toleratedNumberOfFailures: 3
///       tags:
///         environment: Production
///   exampleTrafficManagerAzureEndpoint:
///     type: azure:network:TrafficManagerAzureEndpoint
///     name: example
///     properties:
///       name: example-endpoint
///       profileId: ${exampleTrafficManagerProfile.id}
///       alwaysServeEnabled: true
///       weight: 100
///       targetResourceId: ${examplePublicIp.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2022-04-01
///
/// ## Import
///
/// Azure Endpoints can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/trafficManagerAzureEndpoint:TrafficManagerAzureEndpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-resources/providers/Microsoft.Network/trafficManagerProfiles/example-profile/AzureEndpoints/example-endpoint
/// ```
class TrafficManagerAzureEndpoint extends pulumi.CustomResource {
  /// If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method. Defaults to `false`.
  late final pulumi.Output<bool?> alwaysServeEnabled;
  /// One or more `custom_header` blocks as defined below.
  late final pulumi.Output<List<TrafficManagerAzureEndpointCustomHeader>?> customHeaders;
  /// Is the endpoint enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault).
  late final pulumi.Output<List<String>?> geoMappings;
  /// The name of the Azure Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation.
  late final pulumi.Output<int> priority;
  /// The ID of the Traffic Manager Profile that this Azure Endpoint should be created within. Changing this forces a new resource to be created.
  late final pulumi.Output<String> profileId;
  /// One or more `subnet` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<TrafficManagerAzureEndpointSubnet>?> subnets;
  /// The ID of the Azure Resource which should be used as a target.
  late final pulumi.Output<String> targetResourceId;
  /// Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. Defaults to `1`.
  late final pulumi.Output<int?> weight;

  /// Creates a new [TrafficManagerAzureEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficManagerAzureEndpoint]. {@macro pulumi_network_traffic_manager_azure_endpoint_traffic_manager_azure_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficManagerAzureEndpoint(
    String name, {
    TrafficManagerAzureEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/trafficManagerAzureEndpoint:TrafficManagerAzureEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alwaysServeEnabled = registerOutput<bool?>('alwaysServeEnabled');
    this.customHeaders = registerOutput<List<TrafficManagerAzureEndpointCustomHeader>?>('customHeaders');
    this.enabled = registerOutput<bool?>('enabled');
    this.geoMappings = registerOutput<List<String>?>('geoMappings');
    this.name = registerOutput<String>('name');
    this.priority = registerOutput<int>('priority');
    this.profileId = registerOutput<String>('profileId');
    this.subnets = registerOutput<List<TrafficManagerAzureEndpointSubnet>?>('subnets');
    this.targetResourceId = registerOutput<String>('targetResourceId');
    this.weight = registerOutput<int?>('weight');
  }
}
