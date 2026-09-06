import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response.dart';
import 'move_collection_args.dart';
import 'move_collection_properties_response.dart';
import 'system_data_response.dart';

/// Define the move collection.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2019-10-01-preview, 2021-01-01, 2021-08-01, 2022-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MoveCollections_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var moveCollection = new AzureNative.Migrate.MoveCollection("moveCollection", new()
///     {
///         Identity = new AzureNative.Migrate.Inputs.IdentityArgs
///         {
///             Type = AzureNative.Migrate.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "eastus2",
///         MoveCollectionName = "movecollection1",
///         Properties = new AzureNative.Migrate.Inputs.MoveCollectionPropertiesArgs
///         {
///             MoveType = AzureNative.Migrate.MoveType.RegionToRegion,
///             SourceRegion = "eastus",
///             TargetRegion = "westus",
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
/// 		_, err := migrate.NewMoveCollection(ctx, "moveCollection", &migrate.MoveCollectionArgs{
/// 			Identity: &migrate.IdentityArgs{
/// 				Type: pulumi.String(migrate.ResourceIdentityTypeSystemAssigned),
/// 			},
/// 			Location:           pulumi.String("eastus2"),
/// 			MoveCollectionName: pulumi.String("movecollection1"),
/// 			Properties: &migrate.MoveCollectionPropertiesArgs{
/// 				MoveType:     pulumi.String(migrate.MoveTypeRegionToRegion),
/// 				SourceRegion: pulumi.String("eastus"),
/// 				TargetRegion: pulumi.String("westus"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_migrate_movecollection" "moveCollection" {
///   identity = {
///     type = "SystemAssigned"
///   }
///   location             = "eastus2"
///   move_collection_name = "movecollection1"
///   properties = {
///     move_type     = "RegionToRegion"
///     source_region = "eastus"
///     target_region = "westus"
///   }
///   resource_group_name = "rg1"
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
/// import com.pulumi.azurenative.migrate.MoveCollection;
/// import com.pulumi.azurenative.migrate.MoveCollectionArgs;
/// import com.pulumi.azurenative.migrate.inputs.IdentityArgs;
/// import com.pulumi.azurenative.migrate.inputs.MoveCollectionPropertiesArgs;
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
///         var moveCollection = new MoveCollection("moveCollection", MoveCollectionArgs.builder()
///             .identity(IdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("eastus2")
///             .moveCollectionName("movecollection1")
///             .properties(MoveCollectionPropertiesArgs.builder()
///                 .moveType("RegionToRegion")
///                 .sourceRegion("eastus")
///                 .targetRegion("westus")
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
/// const moveCollection = new azure_native.migrate.MoveCollection("moveCollection", {
///     identity: {
///         type: azure_native.migrate.ResourceIdentityType.SystemAssigned,
///     },
///     location: "eastus2",
///     moveCollectionName: "movecollection1",
///     properties: {
///         moveType: azure_native.migrate.MoveType.RegionToRegion,
///         sourceRegion: "eastus",
///         targetRegion: "westus",
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
/// move_collection = azure_native.migrate.MoveCollection("moveCollection",
///     identity={
///         "type": azure_native.migrate.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="eastus2",
///     move_collection_name="movecollection1",
///     properties={
///         "move_type": azure_native.migrate.MoveType.REGION_TO_REGION,
///         "source_region": "eastus",
///         "target_region": "westus",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   moveCollection:
///     type: azure-native:migrate:MoveCollection
///     properties:
///       identity:
///         type: SystemAssigned
///       location: eastus2
///       moveCollectionName: movecollection1
///       properties:
///         moveType: RegionToRegion
///         sourceRegion: eastus
///         targetRegion: westus
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
/// $ pulumi import azure-native:migrate:MoveCollection movecollection1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/moveCollections/{moveCollectionName}
/// ```
class MoveCollection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The etag of the resource.
  late final pulumi.Output<String> etag;
  /// Defines the MSI properties of the Move Collection.
  late final pulumi.Output<IdentityResponse?> identity;
  /// The geo-location where the resource lives.
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Defines the move collection properties.
  late final pulumi.Output<MoveCollectionPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [MoveCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MoveCollection]. {@macro pulumi_migrate_move_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MoveCollection(
    String name, {
    MoveCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:MoveCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MoveCollectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MoveCollectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [MoveCollection] resource.
  MoveCollection.reference(String urn)
    : super(
        'azure-native:migrate:MoveCollection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MoveCollectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MoveCollectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
