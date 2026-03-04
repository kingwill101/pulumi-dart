import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'storage_container_args.dart';
import 'storage_container_status_response.dart';
import 'system_data_response.dart';

/// The storage container resource definition.
///
/// Uses Azure REST API version 2025-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-15-preview.
///
/// Other available API versions: 2022-12-15-preview, 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutStorageContainer
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageContainer = new AzureNative.AzureStackHCI.StorageContainer("storageContainer", new()
///     {
///         ExtendedLocation = new AzureNative.AzureStackHCI.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///             Type = AzureNative.AzureStackHCI.ExtendedLocationTypes.CustomLocation,
///         },
///         Location = "West US2",
///         Path = "C:\\container_storage",
///         ResourceGroupName = "test-rg",
///         StorageContainerName = "Default_Container",
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
/// 		_, err := azurestackhci.NewStorageContainer(ctx, "storageContainer", &azurestackhci.StorageContainerArgs{
/// 			ExtendedLocation: &azurestackhci.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location"),
/// 				Type: pulumi.String(azurestackhci.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			Location:             pulumi.String("West US2"),
/// 			Path:                 pulumi.String("C:\\container_storage"),
/// 			ResourceGroupName:    pulumi.String("test-rg"),
/// 			StorageContainerName: pulumi.String("Default_Container"),
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
/// import com.pulumi.azurenative.azurestackhci.StorageContainer;
/// import com.pulumi.azurenative.azurestackhci.StorageContainerArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.ExtendedLocationArgs;
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
///         var storageContainer = new StorageContainer("storageContainer", StorageContainerArgs.builder()
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location")
///                 .type("CustomLocation")
///                 .build())
///             .location("West US2")
///             .path("C:\\container_storage")
///             .resourceGroupName("test-rg")
///             .storageContainerName("Default_Container")
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
/// const storageContainer = new azure_native.azurestackhci.StorageContainer("storageContainer", {
///     extendedLocation: {
///         name: "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         type: azure_native.azurestackhci.ExtendedLocationTypes.CustomLocation,
///     },
///     location: "West US2",
///     path: "C:\\container_storage",
///     resourceGroupName: "test-rg",
///     storageContainerName: "Default_Container",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_container = azure_native.azurestackhci.StorageContainer("storageContainer",
///     extended_location={
///         "name": "/subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location",
///         "type": azure_native.azurestackhci.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     location="West US2",
///     path="C:\\container_storage",
///     resource_group_name="test-rg",
///     storage_container_name="Default_Container")
///
/// ```
///
/// ```yaml
/// resources:
///   storageContainer:
///     type: azure-native:azurestackhci:StorageContainer
///     properties:
///       extendedLocation:
///         name: /subscriptions/a95612cb-f1fa-4daa-a4fd-272844fa512c/resourceGroups/dogfoodarc/providers/Microsoft.ExtendedLocation/customLocations/dogfood-location
///         type: CustomLocation
///       location: West US2
///       path: C:\container_storage
///       resourceGroupName: test-rg
///       storageContainerName: Default_Container
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
/// $ pulumi import azure-native:azurestackhci:StorageContainer Default_Container /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/storageContainers/{storageContainerName}
/// ```
class StorageContainer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The extendedLocation of the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Path of the storage container on the disk
  late final pulumi.Output<String> path;

  /// Provisioning state of the storage container.
  late final pulumi.Output<String> provisioningState;

  /// The observed state of storage containers
  late final pulumi.Output<StorageContainerStatusResponse> status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StorageContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageContainer]. {@macro pulumi_azurestackhci_storage_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageContainer(
    String name, {
    StorageContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azurestackhci:StorageContainer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    path = registerOutput<String>('path');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<StorageContainerStatusResponse>('status');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
