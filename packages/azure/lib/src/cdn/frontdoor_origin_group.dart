import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_origin_group_args.dart';
import 'frontdoor_origin_group_health_probe.dart';
import 'frontdoor_origin_group_load_balancing.dart';

/// Manages a Front Door (standard/premium) Origin Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-cdn-frontdoor",
///     location: "West Europe",
/// });
/// const exampleFrontdoorProfile = new azure.cdn.FrontdoorProfile("example", {
///     name: "example-profile",
///     resourceGroupName: example.name,
///     skuName: "Standard_AzureFrontDoor",
/// });
/// const exampleFrontdoorOriginGroup = new azure.cdn.FrontdoorOriginGroup("example", {
///     name: "example-origin-group",
///     cdnFrontdoorProfileId: exampleFrontdoorProfile.id,
///     sessionAffinityEnabled: true,
///     restoreTrafficTimeToHealedOrNewEndpointInMinutes: 10,
///     healthProbe: {
///         intervalInSeconds: 240,
///         path: "/healthProbe",
///         protocol: "Https",
///         requestType: "HEAD",
///     },
///     loadBalancing: {
///         additionalLatencyInMilliseconds: 0,
///         sampleSize: 16,
///         successfulSamplesRequired: 3,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-cdn-frontdoor",
///     location="West Europe")
/// example_frontdoor_profile = azure.cdn.FrontdoorProfile("example",
///     name="example-profile",
///     resource_group_name=example.name,
///     sku_name="Standard_AzureFrontDoor")
/// example_frontdoor_origin_group = azure.cdn.FrontdoorOriginGroup("example",
///     name="example-origin-group",
///     cdn_frontdoor_profile_id=example_frontdoor_profile.id,
///     session_affinity_enabled=True,
///     restore_traffic_time_to_healed_or_new_endpoint_in_minutes=10,
///     health_probe={
///         "interval_in_seconds": 240,
///         "path": "/healthProbe",
///         "protocol": "Https",
///         "request_type": "HEAD",
///     },
///     load_balancing={
///         "additional_latency_in_milliseconds": 0,
///         "sample_size": 16,
///         "successful_samples_required": 3,
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
///         Name = "example-cdn-frontdoor",
///         Location = "West Europe",
///     });
///
///     var exampleFrontdoorProfile = new Azure.Cdn.FrontdoorProfile("example", new()
///     {
///         Name = "example-profile",
///         ResourceGroupName = example.Name,
///         SkuName = "Standard_AzureFrontDoor",
///     });
///
///     var exampleFrontdoorOriginGroup = new Azure.Cdn.FrontdoorOriginGroup("example", new()
///     {
///         Name = "example-origin-group",
///         CdnFrontdoorProfileId = exampleFrontdoorProfile.Id,
///         SessionAffinityEnabled = true,
///         RestoreTrafficTimeToHealedOrNewEndpointInMinutes = 10,
///         HealthProbe = new Azure.Cdn.Inputs.FrontdoorOriginGroupHealthProbeArgs
///         {
///             IntervalInSeconds = 240,
///             Path = "/healthProbe",
///             Protocol = "Https",
///             RequestType = "HEAD",
///         },
///         LoadBalancing = new Azure.Cdn.Inputs.FrontdoorOriginGroupLoadBalancingArgs
///         {
///             AdditionalLatencyInMilliseconds = 0,
///             SampleSize = 16,
///             SuccessfulSamplesRequired = 3,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-cdn-frontdoor"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorProfile, err := cdn.NewFrontdoorProfile(ctx, "example", &cdn.FrontdoorProfileArgs{
/// 			Name:              pulumi.String("example-profile"),
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard_AzureFrontDoor"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorOriginGroup(ctx, "example", &cdn.FrontdoorOriginGroupArgs{
/// 			Name:                   pulumi.String("example-origin-group"),
/// 			CdnFrontdoorProfileId:  exampleFrontdoorProfile.ID(),
/// 			SessionAffinityEnabled: pulumi.Bool(true),
/// 			RestoreTrafficTimeToHealedOrNewEndpointInMinutes: pulumi.Int(10),
/// 			HealthProbe: &cdn.FrontdoorOriginGroupHealthProbeArgs{
/// 				IntervalInSeconds: pulumi.Int(240),
/// 				Path:              pulumi.String("/healthProbe"),
/// 				Protocol:          pulumi.String("Https"),
/// 				RequestType:       pulumi.String("HEAD"),
/// 			},
/// 			LoadBalancing: &cdn.FrontdoorOriginGroupLoadBalancingArgs{
/// 				AdditionalLatencyInMilliseconds: pulumi.Int(0),
/// 				SampleSize:                      pulumi.Int(16),
/// 				SuccessfulSamplesRequired:       pulumi.Int(3),
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
/// import com.pulumi.azure.cdn.FrontdoorProfile;
/// import com.pulumi.azure.cdn.FrontdoorProfileArgs;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroup;
/// import com.pulumi.azure.cdn.FrontdoorOriginGroupArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorOriginGroupHealthProbeArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorOriginGroupLoadBalancingArgs;
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
///             .name("example-cdn-frontdoor")
///             .location("West Europe")
///             .build());
///
///         var exampleFrontdoorProfile = new FrontdoorProfile("exampleFrontdoorProfile", FrontdoorProfileArgs.builder()
///             .name("example-profile")
///             .resourceGroupName(example.name())
///             .skuName("Standard_AzureFrontDoor")
///             .build());
///
///         var exampleFrontdoorOriginGroup = new FrontdoorOriginGroup("exampleFrontdoorOriginGroup", FrontdoorOriginGroupArgs.builder()
///             .name("example-origin-group")
///             .cdnFrontdoorProfileId(exampleFrontdoorProfile.id())
///             .sessionAffinityEnabled(true)
///             .restoreTrafficTimeToHealedOrNewEndpointInMinutes(10)
///             .healthProbe(FrontdoorOriginGroupHealthProbeArgs.builder()
///                 .intervalInSeconds(240)
///                 .path("/healthProbe")
///                 .protocol("Https")
///                 .requestType("HEAD")
///                 .build())
///             .loadBalancing(FrontdoorOriginGroupLoadBalancingArgs.builder()
///                 .additionalLatencyInMilliseconds(0)
///                 .sampleSize(16)
///                 .successfulSamplesRequired(3)
///                 .build())
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
///       name: example-cdn-frontdoor
///       location: West Europe
///   exampleFrontdoorProfile:
///     type: azure:cdn:FrontdoorProfile
///     name: example
///     properties:
///       name: example-profile
///       resourceGroupName: ${example.name}
///       skuName: Standard_AzureFrontDoor
///   exampleFrontdoorOriginGroup:
///     type: azure:cdn:FrontdoorOriginGroup
///     name: example
///     properties:
///       name: example-origin-group
///       cdnFrontdoorProfileId: ${exampleFrontdoorProfile.id}
///       sessionAffinityEnabled: true
///       restoreTrafficTimeToHealedOrNewEndpointInMinutes: 10
///       healthProbe:
///         intervalInSeconds: 240
///         path: /healthProbe
///         protocol: Https
///         requestType: HEAD
///       loadBalancing:
///         additionalLatencyInMilliseconds: 0
///         sampleSize: 16
///         successfulSamplesRequired: 3
/// ```
///
///
/// ## Import
///
/// Front Door Origin Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorOriginGroup:FrontdoorOriginGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Cdn/profiles/profile1/originGroups/originGroup1
/// ```
class FrontdoorOriginGroup extends pulumi.CustomResource {
  /// The ID of the Front Door Profile within which this Front Door Origin Group should exist. Changing this forces a new Front Door Origin Group to be created.
  late final pulumi.Output<String> cdnFrontdoorProfileId;
  /// A `health_probe` block as defined below.
  late final pulumi.Output<FrontdoorOriginGroupHealthProbe?> healthProbe;
  /// A `load_balancing` block as defined below.
  late final pulumi.Output<FrontdoorOriginGroupLoadBalancing> loadBalancing;
  /// The name which should be used for this Front Door Origin Group. Changing this forces a new Front Door Origin Group to be created.
  late final pulumi.Output<String> name;
  /// Specifies the amount of time which should elapse before shifting traffic to another endpoint when a healthy endpoint becomes unhealthy or a new endpoint is added. Possible values are between `0` and `50` minutes (inclusive). Default is `10` minutes.
  ///
  /// > **Note:** This property is currently not used, but will be in the near future.
  late final pulumi.Output<int?> restoreTrafficTimeToHealedOrNewEndpointInMinutes;
  /// Specifies whether session affinity should be enabled on this host. Defaults to `true`.
  late final pulumi.Output<bool?> sessionAffinityEnabled;

  /// Creates a new [FrontdoorOriginGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorOriginGroup]. {@macro pulumi_cdn_frontdoor_origin_group_frontdoor_origin_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorOriginGroup(
    String name, {
    FrontdoorOriginGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorOriginGroup:FrontdoorOriginGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    this.healthProbe = registerOutput<FrontdoorOriginGroupHealthProbe?>('healthProbe');
    this.loadBalancing = registerOutput<FrontdoorOriginGroupLoadBalancing>('loadBalancing');
    this.name = registerOutput<String>('name');
    this.restoreTrafficTimeToHealedOrNewEndpointInMinutes = registerOutput<int?>('restoreTrafficTimeToHealedOrNewEndpointInMinutes');
    this.sessionAffinityEnabled = registerOutput<bool?>('sessionAffinityEnabled');
  }
}
