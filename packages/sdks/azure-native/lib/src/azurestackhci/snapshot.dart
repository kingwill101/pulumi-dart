import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'snapshot_args.dart';
import 'snapshot_properties_response.dart';
import 'system_data_response.dart';

/// The snapshot resource definition.
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a snapshot
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot = new AzureNative.AzureStackHCI.Snapshot("snapshot", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         Location = "West US2",
///         Properties = new AzureNative.AzureStackHCI.Inputs.SnapshotPropertiesArgs
///         {
///             CreationData = new AzureNative.AzureStackHCI.Inputs.CreationDataArgs
///             {
///                 CreateOption = AzureNative.AzureStackHCI.DiskCreateOption.Copy,
///                 SourceResourceId = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/virtualHardDisks/source-vhd",
///             },
///         },
///         ResourceGroupName = "test-rg",
///         SnapshotName = "test-snapshot",
///         Tags =
///         {
///             { "environment", "test" },
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewSnapshot(ctx, "snapshot", &azurestackhci.SnapshotArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			Location: pulumi.String("West US2"),
/// 			Properties: &azurestackhci.SnapshotPropertiesArgs{
/// 				CreationData: &azurestackhci.CreationDataArgs{
/// 					CreateOption:     pulumi.String(azurestackhci.DiskCreateOptionCopy),
/// 					SourceResourceId: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/virtualHardDisks/source-vhd"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			SnapshotName:      pulumi.String("test-snapshot"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("test"),
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
/// resource "azure-native_azurestackhci_snapshot" "snapshot" {
///   extended_location = {
///     name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"
///     type = "CustomLocation"
///   }
///   location = "West US2"
///   properties = {
///     creation_data = {
///       create_option      = "Copy"
///       source_resource_id = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/virtualHardDisks/source-vhd"
///     }
///   }
///   resource_group_name = "test-rg"
///   snapshot_name       = "test-snapshot"
///   tags = {
///     "environment" = "test"
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
/// import com.pulumi.azurenative.azurestackhci.Snapshot;
/// import com.pulumi.azurenative.azurestackhci.SnapshotArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.SnapshotPropertiesArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.CreationDataArgs;
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
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .location("West US2")
///             .properties(SnapshotPropertiesArgs.builder()
///                 .creationData(CreationDataArgs.builder()
///                     .createOption("Copy")
///                     .sourceResourceId("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/virtualHardDisks/source-vhd")
///                     .build())
///                 .build())
///             .resourceGroupName("test-rg")
///             .snapshotName("test-snapshot")
///             .tags(Map.of("environment", "test"))
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
/// const snapshot = new azure_native.azurestackhci.Snapshot("snapshot", {
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     location: "West US2",
///     properties: {
///         creationData: {
///             createOption: azure_native.azurestackhci.DiskCreateOption.Copy,
///             sourceResourceId: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/virtualHardDisks/source-vhd",
///         },
///     },
///     resourceGroupName: "test-rg",
///     snapshotName: "test-snapshot",
///     tags: {
///         environment: "test",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// snapshot = azure_native.azurestackhci.Snapshot("snapshot",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     location="West US2",
///     properties={
///         "creation_data": {
///             "create_option": azure_native.azurestackhci.DiskCreateOption.COPY,
///             "source_resource_id": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/virtualHardDisks/source-vhd",
///         },
///     },
///     resource_group_name="test-rg",
///     snapshot_name="test-snapshot",
///     tags={
///         "environment": "test",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   snapshot:
///     type: azure-native:azurestackhci:Snapshot
///     properties:
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       location: West US2
///       properties:
///         creationData:
///           createOption: Copy
///           sourceResourceId: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/test-rg/providers/Microsoft.AzureStackHCI/virtualHardDisks/source-vhd
///       resourceGroupName: test-rg
///       snapshotName: test-snapshot
///       tags:
///         environment: test
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
/// $ pulumi import azure-native:azurestackhci:Snapshot test-snapshot /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/snapshots/{snapshotName}
/// ```
class Snapshot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SnapshotPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_azurestackhci_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SnapshotPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
