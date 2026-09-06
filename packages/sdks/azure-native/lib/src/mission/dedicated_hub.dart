import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_hub_args.dart';
import 'system_data_response.dart';

/// DedicatedHub Model Resource
///
/// Uses Azure REST API version 2025-11-01-preview.
///
/// Other available API versions: 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DedicatedHub_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dedicatedHub = new AzureNative.Mission.DedicatedHub("dedicatedHub", new()
///     {
///         CommunityName = "TestCommunity",
///         DedicatedHubName = "TestDedicatedHub",
///         Designation = AzureNative.Mission.Designation.Reserved,
///         Location = "eastus",
///         ResourceGroupName = "TestResourceGroup",
///         Tags =
///         {
///             { "environment", "test" },
///             { "project", "mission" },
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
/// 		_, err := mission.NewDedicatedHub(ctx, "dedicatedHub", &mission.DedicatedHubArgs{
/// 			CommunityName:     pulumi.String("TestCommunity"),
/// 			DedicatedHubName:  pulumi.String("TestDedicatedHub"),
/// 			Designation:       pulumi.String(mission.DesignationReserved),
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("TestResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("test"),
/// 				"project":     pulumi.String("mission"),
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
/// resource "azure-native_mission_dedicatedhub" "dedicatedHub" {
///   community_name      = "TestCommunity"
///   dedicated_hub_name  = "TestDedicatedHub"
///   designation         = "Reserved"
///   location            = "eastus"
///   resource_group_name = "TestResourceGroup"
///   tags = {
///     "environment" = "test"
///     "project"     = "mission"
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
/// import com.pulumi.azurenative.mission.DedicatedHub;
/// import com.pulumi.azurenative.mission.DedicatedHubArgs;
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
///         var dedicatedHub = new DedicatedHub("dedicatedHub", DedicatedHubArgs.builder()
///             .communityName("TestCommunity")
///             .dedicatedHubName("TestDedicatedHub")
///             .designation("Reserved")
///             .location("eastus")
///             .resourceGroupName("TestResourceGroup")
///             .tags(Map.ofEntries(
///                 Map.entry("environment", "test"),
///                 Map.entry("project", "mission")
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
/// const dedicatedHub = new azure_native.mission.DedicatedHub("dedicatedHub", {
///     communityName: "TestCommunity",
///     dedicatedHubName: "TestDedicatedHub",
///     designation: azure_native.mission.Designation.Reserved,
///     location: "eastus",
///     resourceGroupName: "TestResourceGroup",
///     tags: {
///         environment: "test",
///         project: "mission",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dedicated_hub = azure_native.mission.DedicatedHub("dedicatedHub",
///     community_name="TestCommunity",
///     dedicated_hub_name="TestDedicatedHub",
///     designation=azure_native.mission.Designation.RESERVED,
///     location="eastus",
///     resource_group_name="TestResourceGroup",
///     tags={
///         "environment": "test",
///         "project": "mission",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dedicatedHub:
///     type: azure-native:mission:DedicatedHub
///     properties:
///       communityName: TestCommunity
///       dedicatedHubName: TestDedicatedHub
///       designation: Reserved
///       location: eastus
///       resourceGroupName: TestResourceGroup
///       tags:
///         environment: test
///         project: mission
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
/// $ pulumi import azure-native:mission:DedicatedHub TestDedicatedHub /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Mission/communities/{communityName}/dedicatedHubs/{dedicatedHubName}
/// ```
class DedicatedHub extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Designation of hub resource allocation (Pooled or Reserved)
  late final pulumi.Output<String?> designation;
  /// Firewall Policy Resource ID
  late final pulumi.Output<String> firewallPolicyResourceId;
  /// Firewall Resource ID
  late final pulumi.Output<String> firewallResourceId;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Virtual Hub Resource ID
  late final pulumi.Output<String> vHubResourceId;

  /// Creates a new [DedicatedHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedHub]. {@macro pulumi_mission_dedicated_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedHub(
    String name, {
    DedicatedHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:mission:DedicatedHub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    designation = registerOutput<String?>('designation');
    firewallPolicyResourceId = registerOutput<String>('firewallPolicyResourceId');
    firewallResourceId = registerOutput<String>('firewallResourceId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    vHubResourceId = registerOutput<String>('vHubResourceId');
  }

  /// Creates a typed reference to an existing [DedicatedHub] resource.
  DedicatedHub.reference(String urn)
    : super(
        'azure-native:mission:DedicatedHub',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    designation = registerOutput<String?>('designation');
    firewallPolicyResourceId = registerOutput<String>('firewallPolicyResourceId');
    firewallResourceId = registerOutput<String>('firewallResourceId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    vHubResourceId = registerOutput<String>('vHubResourceId');
  }
}
