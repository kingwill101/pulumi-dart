import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'transit_hub_args.dart';
import 'transit_option_response.dart';

/// TransitHub Model Resource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview, 2025-11-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TransitHub_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var transitHub = new AzureNative.Mission.TransitHub("transitHub", new()
///     {
///         CommunityName = "TestMyCommunity",
///         Location = "westcentralus",
///         ResourceGroupName = "rgopenapi",
///         State = AzureNative.Mission.TransitHubState.PendingApproval,
///         Tags =
///         {
///             { "Tag1", "Value1" },
///         },
///         TransitHubName = "TestThName",
///         TransitOption = new AzureNative.Mission.Inputs.TransitOptionArgs
///         {
///             Params = new AzureNative.Mission.Inputs.TransitOptionParamsArgs
///             {
///                 ScaleUnits = 1,
///             },
///             Type = AzureNative.Mission.TransitOptionType.ExpressRoute,
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
/// 		_, err := mission.NewTransitHub(ctx, "transitHub", &mission.TransitHubArgs{
/// 			CommunityName:     pulumi.String("TestMyCommunity"),
/// 			Location:          pulumi.String("westcentralus"),
/// 			ResourceGroupName: pulumi.String("rgopenapi"),
/// 			State:             pulumi.String(mission.TransitHubStatePendingApproval),
/// 			Tags: pulumi.StringMap{
/// 				"Tag1": pulumi.String("Value1"),
/// 			},
/// 			TransitHubName: pulumi.String("TestThName"),
/// 			TransitOption: &mission.TransitOptionArgs{
/// 				Params: &mission.TransitOptionParamsArgs{
/// 					ScaleUnits: pulumi.Float64(1),
/// 				},
/// 				Type: pulumi.String(mission.TransitOptionTypeExpressRoute),
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
/// resource "azure-native_mission_transithub" "transitHub" {
///   community_name      = "TestMyCommunity"
///   location            = "westcentralus"
///   resource_group_name = "rgopenapi"
///   state               = "PendingApproval"
///   tags = {
///     "Tag1" = "Value1"
///   }
///   transit_hub_name = "TestThName"
///   transit_option = {
///     params = {
///       scale_units = 1
///     }
///     type = "ExpressRoute"
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
/// import com.pulumi.azurenative.mission.TransitHub;
/// import com.pulumi.azurenative.mission.TransitHubArgs;
/// import com.pulumi.azurenative.mission.inputs.TransitOptionArgs;
/// import com.pulumi.azurenative.mission.inputs.TransitOptionParamsArgs;
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
///         var transitHub = new TransitHub("transitHub", TransitHubArgs.builder()
///             .communityName("TestMyCommunity")
///             .location("westcentralus")
///             .resourceGroupName("rgopenapi")
///             .state("PendingApproval")
///             .tags(Map.of("Tag1", "Value1"))
///             .transitHubName("TestThName")
///             .transitOption(TransitOptionArgs.builder()
///                 .params(TransitOptionParamsArgs.builder()
///                     .scaleUnits(1.0)
///                     .build())
///                 .type("ExpressRoute")
///                 .build())
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
/// const transitHub = new azure_native.mission.TransitHub("transitHub", {
///     communityName: "TestMyCommunity",
///     location: "westcentralus",
///     resourceGroupName: "rgopenapi",
///     state: azure_native.mission.TransitHubState.PendingApproval,
///     tags: {
///         Tag1: "Value1",
///     },
///     transitHubName: "TestThName",
///     transitOption: {
///         params: {
///             scaleUnits: 1,
///         },
///         type: azure_native.mission.TransitOptionType.ExpressRoute,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// transit_hub = azure_native.mission.TransitHub("transitHub",
///     community_name="TestMyCommunity",
///     location="westcentralus",
///     resource_group_name="rgopenapi",
///     state=azure_native.mission.TransitHubState.PENDING_APPROVAL,
///     tags={
///         "Tag1": "Value1",
///     },
///     transit_hub_name="TestThName",
///     transit_option={
///         "params": {
///             "scale_units": float(1),
///         },
///         "type": azure_native.mission.TransitOptionType.EXPRESS_ROUTE,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   transitHub:
///     type: azure-native:mission:TransitHub
///     properties:
///       communityName: TestMyCommunity
///       location: westcentralus
///       resourceGroupName: rgopenapi
///       state: PendingApproval
///       tags:
///         Tag1: Value1
///       transitHubName: TestThName
///       transitOption:
///         params:
///           scaleUnits: 1
///         type: ExpressRoute
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
/// $ pulumi import azure-native:mission:TransitHub TestThName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Mission/communities/{communityName}/transitHubs/{transitHubName}
/// ```
class TransitHub extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// List of resource ids modified by transitHubs.
  late final pulumi.Output<List<String>> resourceCollection;
  /// The state of the transitHub.
  late final pulumi.Output<String?> state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The TransitOption of the transitHub.
  late final pulumi.Output<TransitOptionResponse?> transitOption;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TransitHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitHub]. {@macro pulumi_mission_transit_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitHub(
    String name, {
    TransitHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:mission:TransitHub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceCollection = registerOutput<List<String>>('resourceCollection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    state = registerOutput<String?>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transitOption = registerOutput<TransitOptionResponse?>('transitOption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TransitOptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [TransitHub] resource.
  TransitHub.reference(String urn)
    : super(
        'azure-native:mission:TransitHub',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceCollection = registerOutput<List<String>>('resourceCollection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    state = registerOutput<String?>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transitOption = registerOutput<TransitOptionResponse?>('transitOption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TransitOptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
