import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_space_retrieve_args.dart';
import 'storage_spaces_properties_response.dart';
import 'storage_spaces_response_extended_location.dart';
import 'system_data_response.dart';

/// The storageSpaces resource definition.
///
/// Uses Azure REST API version 2022-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutStorageSpace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageSpaceRetrieve = new AzureNative.HybridContainerService.StorageSpaceRetrieve("storageSpaceRetrieve", new()
///     {
///         ExtendedLocation = new AzureNative.HybridContainerService.Inputs.StorageSpacesExtendedLocationArgs
///         {
///             Name = "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation",
///             Type = "CustomLocation",
///         },
///         Location = "westus",
///         Properties = new AzureNative.HybridContainerService.Inputs.StorageSpacesPropertiesArgs
///         {
///             HciStorageProfile = new AzureNative.HybridContainerService.Inputs.StorageSpacesPropertiesHciStorageProfileArgs
///             {
///                 MocGroup = "target-group",
///                 MocLocation = "MocLocation",
///                 MocStorageContainer = "WssdStorageContainer",
///             },
///         },
///         ResourceGroupName = "test-arcappliance-resgrp",
///         StorageSpacesName = "test-storage",
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
/// 	hybridcontainerservice "github.com/pulumi/pulumi-azure-native-sdk/hybridcontainerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridcontainerservice.NewStorageSpaceRetrieve(ctx, "storageSpaceRetrieve", &hybridcontainerservice.StorageSpaceRetrieveArgs{
/// 			ExtendedLocation: &hybridcontainerservice.StorageSpacesExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			Properties: &hybridcontainerservice.StorageSpacesPropertiesArgs{
/// 				HciStorageProfile: &hybridcontainerservice.StorageSpacesPropertiesHciStorageProfileArgs{
/// 					MocGroup:            pulumi.String("target-group"),
/// 					MocLocation:         pulumi.String("MocLocation"),
/// 					MocStorageContainer: pulumi.String("WssdStorageContainer"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-arcappliance-resgrp"),
/// 			StorageSpacesName: pulumi.String("test-storage"),
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
/// import com.pulumi.azurenative.hybridcontainerservice.StorageSpaceRetrieve;
/// import com.pulumi.azurenative.hybridcontainerservice.StorageSpaceRetrieveArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.StorageSpacesExtendedLocationArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.StorageSpacesPropertiesArgs;
/// import com.pulumi.azurenative.hybridcontainerservice.inputs.StorageSpacesPropertiesHciStorageProfileArgs;
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
///         var storageSpaceRetrieve = new StorageSpaceRetrieve("storageSpaceRetrieve", StorageSpaceRetrieveArgs.builder()
///             .extendedLocation(StorageSpacesExtendedLocationArgs.builder()
///                 .name("/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation")
///                 .type("CustomLocation")
///                 .build())
///             .location("westus")
///             .properties(StorageSpacesPropertiesArgs.builder()
///                 .hciStorageProfile(StorageSpacesPropertiesHciStorageProfileArgs.builder()
///                     .mocGroup("target-group")
///                     .mocLocation("MocLocation")
///                     .mocStorageContainer("WssdStorageContainer")
///                     .build())
///                 .build())
///             .resourceGroupName("test-arcappliance-resgrp")
///             .storageSpacesName("test-storage")
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
/// const storageSpaceRetrieve = new azure_native.hybridcontainerservice.StorageSpaceRetrieve("storageSpaceRetrieve", {
///     extendedLocation: {
///         name: "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation",
///         type: "CustomLocation",
///     },
///     location: "westus",
///     properties: {
///         hciStorageProfile: {
///             mocGroup: "target-group",
///             mocLocation: "MocLocation",
///             mocStorageContainer: "WssdStorageContainer",
///         },
///     },
///     resourceGroupName: "test-arcappliance-resgrp",
///     storageSpacesName: "test-storage",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_space_retrieve = azure_native.hybridcontainerservice.StorageSpaceRetrieve("storageSpaceRetrieve",
///     extended_location={
///         "name": "/subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation",
///         "type": "CustomLocation",
///     },
///     location="westus",
///     properties={
///         "hci_storage_profile": {
///             "moc_group": "target-group",
///             "moc_location": "MocLocation",
///             "moc_storage_container": "WssdStorageContainer",
///         },
///     },
///     resource_group_name="test-arcappliance-resgrp",
///     storage_spaces_name="test-storage")
///
/// ```
///
/// ```yaml
/// resources:
///   storageSpaceRetrieve:
///     type: azure-native:hybridcontainerservice:StorageSpaceRetrieve
///     properties:
///       extendedLocation:
///         name: /subscriptions/a3e42606-29b1-4d7d-b1d9-9ff6b9d3c71b/resourcegroups/test-arcappliance-resgrp/providers/microsoft.extendedlocation/customlocations/testcustomlocation
///         type: CustomLocation
///       location: westus
///       properties:
///         hciStorageProfile:
///           mocGroup: target-group
///           mocLocation: MocLocation
///           mocStorageContainer: WssdStorageContainer
///       resourceGroupName: test-arcappliance-resgrp
///       storageSpacesName: test-storage
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
/// $ pulumi import azure-native:hybridcontainerservice:StorageSpaceRetrieve test-storage /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridContainerService/storageSpaces/{storageSpacesName}
/// ```
class StorageSpaceRetrieve extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<StorageSpacesResponseExtendedLocation?>
  extendedLocation;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// HybridAKSStorageSpec defines the desired state of HybridAKSStorage
  late final pulumi.Output<StorageSpacesPropertiesResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [StorageSpaceRetrieve].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageSpaceRetrieve]. {@macro pulumi_hybridcontainerservice_storage_space_retrieve_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageSpaceRetrieve(
    String name, {
    StorageSpaceRetrieveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridcontainerservice:StorageSpaceRetrieve',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<StorageSpacesResponseExtendedLocation?>(
      'extendedLocation',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StorageSpacesPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
