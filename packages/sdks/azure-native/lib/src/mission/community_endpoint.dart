import 'package:pulumi/pulumi.dart' as pulumi;
import 'community_endpoint_args.dart';
import 'system_data_response.dart';

/// CommunityEndpoint Model Resource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview, 2025-11-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CommunityEndpoints_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var communityEndpoint = new AzureNative.Mission.CommunityEndpoint("communityEndpoint", new()
///     {
///         CommunityEndpointName = "TestMyCommunityEndpoint",
///         CommunityName = "TestMyCommunity",
///         Location = "West US",
///         ResourceGroupName = "rgopenapi",
///         RuleCollection = new[]
///         {
///             new AzureNative.Mission.Inputs.CommunityEndpointDestinationRuleArgs
///             {
///                 Destination = "foo.example.com",
///                 DestinationType = AzureNative.Mission.DestinationType.FQDNTag,
///                 Ports = "443",
///                 Protocols = new[]
///                 {
///                     AzureNative.Mission.CommunityEndpointProtocol.TCP,
///                 },
///                 TransitHubResourceId = "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity/transitHubs/TestThName",
///             },
///         },
///         Tags =
///         {
///             { "sampletag", "samplevalue" },
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
/// 	mission "github.com/pulumi/pulumi-azure-native-sdk/mission/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mission.NewCommunityEndpoint(ctx, "communityEndpoint", &mission.CommunityEndpointArgs{
/// 			CommunityEndpointName: pulumi.String("TestMyCommunityEndpoint"),
/// 			CommunityName:         pulumi.String("TestMyCommunity"),
/// 			Location:              pulumi.String("West US"),
/// 			ResourceGroupName:     pulumi.String("rgopenapi"),
/// 			RuleCollection: mission.CommunityEndpointDestinationRuleArray{
/// 				&mission.CommunityEndpointDestinationRuleArgs{
/// 					Destination:     pulumi.String("foo.example.com"),
/// 					DestinationType: pulumi.String(mission.DestinationTypeFQDNTag),
/// 					Ports:           pulumi.String("443"),
/// 					Protocols: pulumi.StringArray{
/// 						pulumi.String(mission.CommunityEndpointProtocolTCP),
/// 					},
/// 					TransitHubResourceId: pulumi.String("/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity/transitHubs/TestThName"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"sampletag": pulumi.String("samplevalue"),
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
/// resource "azure-native_mission_communityendpoint" "communityEndpoint" {
///   community_endpoint_name = "TestMyCommunityEndpoint"
///   community_name          = "TestMyCommunity"
///   location                = "West US"
///   resource_group_name     = "rgopenapi"
///   rule_collection {
///     destination             = "foo.example.com"
///     destination_type        = "FQDNTag"
///     ports                   = "443"
///     protocols               = ["TCP"]
///     transit_hub_resource_id = "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity/transitHubs/TestThName"
///   }
///   tags = {
///     "sampletag" = "samplevalue"
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
/// import com.pulumi.azurenative.mission.CommunityEndpoint;
/// import com.pulumi.azurenative.mission.CommunityEndpointArgs;
/// import com.pulumi.azurenative.mission.inputs.CommunityEndpointDestinationRuleArgs;
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
///         var communityEndpoint = new CommunityEndpoint("communityEndpoint", CommunityEndpointArgs.builder()
///             .communityEndpointName("TestMyCommunityEndpoint")
///             .communityName("TestMyCommunity")
///             .location("West US")
///             .resourceGroupName("rgopenapi")
///             .ruleCollection(CommunityEndpointDestinationRuleArgs.builder()
///                 .destination("foo.example.com")
///                 .destinationType("FQDNTag")
///                 .ports("443")
///                 .protocols("TCP")
///                 .transitHubResourceId("/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity/transitHubs/TestThName")
///                 .build())
///             .tags(Map.of("sampletag", "samplevalue"))
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
/// const communityEndpoint = new azure_native.mission.CommunityEndpoint("communityEndpoint", {
///     communityEndpointName: "TestMyCommunityEndpoint",
///     communityName: "TestMyCommunity",
///     location: "West US",
///     resourceGroupName: "rgopenapi",
///     ruleCollection: [{
///         destination: "foo.example.com",
///         destinationType: azure_native.mission.DestinationType.FQDNTag,
///         ports: "443",
///         protocols: [azure_native.mission.CommunityEndpointProtocol.TCP],
///         transitHubResourceId: "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity/transitHubs/TestThName",
///     }],
///     tags: {
///         sampletag: "samplevalue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// community_endpoint = azure_native.mission.CommunityEndpoint("communityEndpoint",
///     community_endpoint_name="TestMyCommunityEndpoint",
///     community_name="TestMyCommunity",
///     location="West US",
///     resource_group_name="rgopenapi",
///     rule_collection=[{
///         "destination": "foo.example.com",
///         "destination_type": azure_native.mission.DestinationType.FQDN_TAG,
///         "ports": "443",
///         "protocols": [azure_native.mission.CommunityEndpointProtocol.TCP],
///         "transit_hub_resource_id": "/subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity/transitHubs/TestThName",
///     }],
///     tags={
///         "sampletag": "samplevalue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   communityEndpoint:
///     type: azure-native:mission:CommunityEndpoint
///     properties:
///       communityEndpointName: TestMyCommunityEndpoint
///       communityName: TestMyCommunity
///       location: West US
///       resourceGroupName: rgopenapi
///       ruleCollection:
///         - destination: foo.example.com
///           destinationType: FQDNTag
///           ports: '443'
///           protocols:
///             - TCP
///           transitHubResourceId: /subscriptions/c64f6eca-bdc5-4bc2-88d6-f8f1dc23f86c/resourceGroups/testrg/providers/Microsoft.Mission/communities/TestMyCommunity/transitHubs/TestThName
///       tags:
///         sampletag: samplevalue
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
/// $ pulumi import azure-native:mission:CommunityEndpoint TestMyCommunityEndpoint /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Mission/communities/{communityName}/communityEndpoints/{communityEndpointName}
/// ```
class CommunityEndpoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning State.
  late final pulumi.Output<String> provisioningState;
  /// List of resource ids created by community endpoint.
  late final pulumi.Output<List<String>> resourceCollection;
  /// Community Endpoint Rule Collection.
  late final pulumi.Output<List<Map<String, dynamic>>> ruleCollection;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CommunityEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CommunityEndpoint]. {@macro pulumi_mission_community_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CommunityEndpoint(
    String name, {
    CommunityEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:mission:CommunityEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceCollection = registerOutput<List<String>>('resourceCollection');
    ruleCollection = registerOutput<List<Map<String, dynamic>>>('ruleCollection');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
