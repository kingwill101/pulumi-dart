import 'package:pulumi/pulumi.dart' as pulumi;
import 'move_resource_args.dart';
import 'move_resource_properties_response.dart';
import 'system_data_response.dart';

/// Defines the move resource.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2019-10-01-preview, 2021-01-01, 2021-08-01, 2022-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MoveResources_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var moveResource = new AzureNative.Migrate.MoveResource("moveResource", new()
///     {
///         MoveCollectionName = "movecollection1",
///         MoveResourceName = "moveresourcename1",
///         Properties = new AzureNative.Migrate.Inputs.MoveResourcePropertiesArgs
///         {
///             DependsOnOverrides = new[]
///             {
///                 new AzureNative.Migrate.Inputs.MoveResourceDependencyOverrideArgs
///                 {
///                     Id = "/subscriptions/c4488a3f-a7f7-4ad4-aa72-0e1f4d9c0756/resourceGroups/eastusRG/providers/Microsoft.Network/networkInterfaces/eastusvm140",
///                     TargetId = "/subscriptions/c4488a3f-a7f7-4ad4-aa72-0e1f4d9c0756/resourceGroups/westusRG/providers/Microsoft.Network/networkInterfaces/eastusvm140",
///                 },
///             },
///             ResourceSettings = new AzureNative.Migrate.Inputs.VirtualMachineResourceSettingsArgs
///             {
///                 ResourceType = "Microsoft.Compute/virtualMachines",
///                 TargetAvailabilitySetId = "/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.Compute/availabilitySets/avset1",
///                 TargetAvailabilityZone = AzureNative.Migrate.TargetAvailabilityZone.Two,
///                 TargetResourceName = "westusvm1",
///                 UserManagedIdentities = new[]
///                 {
///                     "/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/umi1",
///                 },
///             },
///             SourceId = "/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.Compute/virtualMachines/eastusvm1",
///         },
///         ResourceGroupName = "rg1",
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
/// 	migrate "github.com/pulumi/pulumi-azure-native-sdk/migrate/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrate.NewMoveResource(ctx, "moveResource", &migrate.MoveResourceArgs{
/// 			MoveCollectionName: pulumi.String("movecollection1"),
/// 			MoveResourceName:   pulumi.String("moveresourcename1"),
/// 			Properties: &migrate.MoveResourcePropertiesArgs{
/// 				DependsOnOverrides: migrate.MoveResourceDependencyOverrideArray{
/// 					&migrate.MoveResourceDependencyOverrideArgs{
/// 						Id:       pulumi.String("/subscriptions/c4488a3f-a7f7-4ad4-aa72-0e1f4d9c0756/resourceGroups/eastusRG/providers/Microsoft.Network/networkInterfaces/eastusvm140"),
/// 						TargetId: pulumi.String("/subscriptions/c4488a3f-a7f7-4ad4-aa72-0e1f4d9c0756/resourceGroups/westusRG/providers/Microsoft.Network/networkInterfaces/eastusvm140"),
/// 					},
/// 				},
/// 				ResourceSettings: migrate.VirtualMachineResourceSettings{
/// 					ResourceType:            "Microsoft.Compute/virtualMachines",
/// 					TargetAvailabilitySetId: "/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.Compute/availabilitySets/avset1",
/// 					TargetAvailabilityZone:  migrate.TargetAvailabilityZoneTwo,
/// 					TargetResourceName:      "westusvm1",
/// 					UserManagedIdentities: []string{
/// 						"/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/umi1",
/// 					},
/// 				},
/// 				SourceId: pulumi.String("/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.Compute/virtualMachines/eastusvm1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.migrate.MoveResource;
/// import com.pulumi.azurenative.migrate.MoveResourceArgs;
/// import com.pulumi.azurenative.migrate.inputs.MoveResourcePropertiesArgs;
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
///         var moveResource = new MoveResource("moveResource", MoveResourceArgs.builder()
///             .moveCollectionName("movecollection1")
///             .moveResourceName("moveresourcename1")
///             .properties(MoveResourcePropertiesArgs.builder()
///                 .dependsOnOverrides(MoveResourceDependencyOverrideArgs.builder()
///                     .id("/subscriptions/c4488a3f-a7f7-4ad4-aa72-0e1f4d9c0756/resourceGroups/eastusRG/providers/Microsoft.Network/networkInterfaces/eastusvm140")
///                     .targetId("/subscriptions/c4488a3f-a7f7-4ad4-aa72-0e1f4d9c0756/resourceGroups/westusRG/providers/Microsoft.Network/networkInterfaces/eastusvm140")
///                     .build())
///                 .resourceSettings(VirtualMachineResourceSettingsArgs.builder()
///                     .resourceType("Microsoft.Compute/virtualMachines")
///                     .targetAvailabilitySetId("/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.Compute/availabilitySets/avset1")
///                     .targetAvailabilityZone("2")
///                     .targetResourceName("westusvm1")
///                     .userManagedIdentities("/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/umi1")
///                     .build())
///                 .sourceId("/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.Compute/virtualMachines/eastusvm1")
///                 .build())
///             .resourceGroupName("rg1")
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
/// const moveResource = new azure_native.migrate.MoveResource("moveResource", {
///     moveCollectionName: "movecollection1",
///     moveResourceName: "moveresourcename1",
///     properties: {
///         dependsOnOverrides: [{
///             id: "/subscriptions/c4488a3f-a7f7-4ad4-aa72-0e1f4d9c0756/resourceGroups/eastusRG/providers/Microsoft.Network/networkInterfaces/eastusvm140",
///             targetId: "/subscriptions/c4488a3f-a7f7-4ad4-aa72-0e1f4d9c0756/resourceGroups/westusRG/providers/Microsoft.Network/networkInterfaces/eastusvm140",
///         }],
///         resourceSettings: {
///             resourceType: "Microsoft.Compute/virtualMachines",
///             targetAvailabilitySetId: "/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.Compute/availabilitySets/avset1",
///             targetAvailabilityZone: azure_native.migrate.TargetAvailabilityZone.Two,
///             targetResourceName: "westusvm1",
///             userManagedIdentities: ["/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/umi1"],
///         },
///         sourceId: "/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.Compute/virtualMachines/eastusvm1",
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// move_resource = azure_native.migrate.MoveResource("moveResource",
///     move_collection_name="movecollection1",
///     move_resource_name="moveresourcename1",
///     properties={
///         "depends_on_overrides": [{
///             "id": "/subscriptions/c4488a3f-a7f7-4ad4-aa72-0e1f4d9c0756/resourceGroups/eastusRG/providers/Microsoft.Network/networkInterfaces/eastusvm140",
///             "target_id": "/subscriptions/c4488a3f-a7f7-4ad4-aa72-0e1f4d9c0756/resourceGroups/westusRG/providers/Microsoft.Network/networkInterfaces/eastusvm140",
///         }],
///         "resource_settings": {
///             "resource_type": "Microsoft.Compute/virtualMachines",
///             "target_availability_set_id": "/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.Compute/availabilitySets/avset1",
///             "target_availability_zone": azure_native.migrate.TargetAvailabilityZone.TWO,
///             "target_resource_name": "westusvm1",
///             "user_managed_identities": ["/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/umi1"],
///         },
///         "source_id": "/subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.Compute/virtualMachines/eastusvm1",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   moveResource:
///     type: azure-native:migrate:MoveResource
///     properties:
///       moveCollectionName: movecollection1
///       moveResourceName: moveresourcename1
///       properties:
///         dependsOnOverrides:
///           - id: /subscriptions/c4488a3f-a7f7-4ad4-aa72-0e1f4d9c0756/resourceGroups/eastusRG/providers/Microsoft.Network/networkInterfaces/eastusvm140
///             targetId: /subscriptions/c4488a3f-a7f7-4ad4-aa72-0e1f4d9c0756/resourceGroups/westusRG/providers/Microsoft.Network/networkInterfaces/eastusvm140
///         resourceSettings:
///           resourceType: Microsoft.Compute/virtualMachines
///           targetAvailabilitySetId: /subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.Compute/availabilitySets/avset1
///           targetAvailabilityZone: '2'
///           targetResourceName: westusvm1
///           userManagedIdentities:
///             - /subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.ManagedIdentity/userAssignedIdentities/umi1
///         sourceId: /subscriptions/subid/resourceGroups/eastusRG/providers/Microsoft.Compute/virtualMachines/eastusvm1
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:migrate:MoveResource moveresourcename1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/moveCollections/{moveCollectionName}/moveResources/{moveResourceName}
/// ```
class MoveResource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Defines the move resource properties.
  late final pulumi.Output<MoveResourcePropertiesResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [MoveResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MoveResource]. {@macro pulumi_migrate_move_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MoveResource(
    String name, {
    MoveResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:MoveResource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MoveResourcePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MoveResourcePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
