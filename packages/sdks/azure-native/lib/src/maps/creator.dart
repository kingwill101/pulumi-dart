import 'package:pulumi/pulumi.dart' as pulumi;
import 'creator_args.dart';
import 'creator_properties_response.dart';
import 'system_data_response.dart';

/// An Azure resource which represents Maps Creator product and provides ability to manage private location data.
///
/// Uses Azure REST API version 2024-07-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-02-01.
///
/// Other available API versions: 2020-02-01-preview, 2021-02-01, 2021-07-01-preview, 2021-12-01-preview, 2023-06-01, 2023-08-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maps [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Creator Resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var creator = new AzureNative.Maps.Creator("creator", new()
///     {
///         AccountName = "myMapsAccount",
///         CreatorName = "myCreator",
///         Location = "eastus2",
///         Properties = new AzureNative.Maps.Inputs.CreatorPropertiesArgs
///         {
///             StorageUnits = 5,
///         },
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "test", "true" },
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
/// 	maps "github.com/pulumi/pulumi-azure-native-sdk/maps/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := maps.NewCreator(ctx, "creator", &maps.CreatorArgs{
/// 			AccountName: pulumi.String("myMapsAccount"),
/// 			CreatorName: pulumi.String("myCreator"),
/// 			Location:    pulumi.String("eastus2"),
/// 			Properties: &maps.CreatorPropertiesArgs{
/// 				StorageUnits: pulumi.Int(5),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"test": pulumi.String("true"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.maps.Creator;
/// import com.pulumi.azurenative.maps.CreatorArgs;
/// import com.pulumi.azurenative.maps.inputs.CreatorPropertiesArgs;
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
///         var creator = new Creator("creator", CreatorArgs.builder()
///             .accountName("myMapsAccount")
///             .creatorName("myCreator")
///             .location("eastus2")
///             .properties(CreatorPropertiesArgs.builder()
///                 .storageUnits(5)
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.of("test", "true"))
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
/// const creator = new azure_native.maps.Creator("creator", {
///     accountName: "myMapsAccount",
///     creatorName: "myCreator",
///     location: "eastus2",
///     properties: {
///         storageUnits: 5,
///     },
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         test: "true",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// creator = azure_native.maps.Creator("creator",
///     account_name="myMapsAccount",
///     creator_name="myCreator",
///     location="eastus2",
///     properties={
///         "storage_units": 5,
///     },
///     resource_group_name="myResourceGroup",
///     tags={
///         "test": "true",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   creator:
///     type: azure-native:maps:Creator
///     properties:
///       accountName: myMapsAccount
///       creatorName: myCreator
///       location: eastus2
///       properties:
///         storageUnits: 5
///       resourceGroupName: myResourceGroup
///       tags:
///         test: 'true'
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
/// $ pulumi import azure-native:maps:Creator myCreator /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Maps/accounts/{accountName}/creators/{creatorName}
/// ```
class Creator extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The Creator resource properties.
  late final pulumi.Output<CreatorPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Creator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Creator]. {@macro pulumi_maps_creator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Creator(
    String name, {
    CreatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:maps:Creator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CreatorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CreatorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
