import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_script_version_args.dart';
import 'gallery_script_version_properties_response.dart';
import 'system_data_response.dart';

/// Concrete tracked resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2025-03-03.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a simple gallery Script Version.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var galleryScriptVersion = new AzureNative.Compute.GalleryScriptVersion("galleryScriptVersion", new()
///     {
///         GalleryName = "myGalleryName",
///         GalleryScriptName = "myGalleryScriptName",
///         GalleryScriptVersionName = "1.0.0",
///         Location = "West US",
///         Properties = new AzureNative.Compute.Inputs.GalleryScriptVersionPropertiesArgs
///         {
///             PublishingProfile = new AzureNative.Compute.Inputs.GalleryScriptVersionPublishingProfileArgs
///             {
///                 EndOfLifeDate = "2027-07-01T07:00:00Z",
///                 ReplicaCount = 2,
///                 Source = new AzureNative.Compute.Inputs.ScriptSourceArgs
///                 {
///                     Parameters = new[]
///                     {
///                         new AzureNative.Compute.Inputs.GalleryScriptParameterArgs
///                         {
///                             DefaultValue = "westus",
///                             Name = "location",
///                             Required = true,
///                             Type = AzureNative.Compute.GalleryScriptParameterType.String,
///                         },
///                         new AzureNative.Compute.Inputs.GalleryScriptParameterArgs
///                         {
///                             DefaultValue = "default value of parameter",
///                             Description = "description of the parameter",
///                             Name = "myGalleryScriptParameter1",
///                             Required = true,
///                             Type = AzureNative.Compute.GalleryScriptParameterType.String,
///                         },
///                         new AzureNative.Compute.Inputs.GalleryScriptParameterArgs
///                         {
///                             DefaultValue = "default value of parameter",
///                             Description = "description of the parameter",
///                             Name = "myGalleryScriptParameter2",
///                             Required = false,
///                             Type = AzureNative.Compute.GalleryScriptParameterType.String,
///                         },
///                         new AzureNative.Compute.Inputs.GalleryScriptParameterArgs
///                         {
///                             DefaultValue = "3",
///                             Description = "description of the parameter",
///                             MaxValue = "5",
///                             MinValue = "1",
///                             Name = "numberOfUnits",
///                             Required = true,
///                             Type = AzureNative.Compute.GalleryScriptParameterType.Int,
///                         },
///                         new AzureNative.Compute.Inputs.GalleryScriptParameterArgs
///                         {
///                             DefaultValue = "0.6",
///                             Description = "description of the parameter",
///                             MaxValue = "2",
///                             MinValue = "0.1",
///                             Name = "weightOfUnit",
///                             Required = true,
///                             Type = AzureNative.Compute.GalleryScriptParameterType.Double,
///                         },
///                         new AzureNative.Compute.Inputs.GalleryScriptParameterArgs
///                         {
///                             DefaultValue = "Fruit",
///                             Description = "description of the parameter",
///                             EnumValues = new[]
///                             {
///                                 "Fruit",
///                                 "Vegetable",
///                                 "Greens",
///                                 "Nuts",
///                             },
///                             Name = "typeOfProduct",
///                             Required = false,
///                             Type = AzureNative.Compute.GalleryScriptParameterType.Enum,
///                         },
///                     },
///                     ScriptLink = "https://mystorageaccount.blob.core.windows.net/mycontainer/myScript.ps1?{sasKey}",
///                 },
///                 StorageAccountType = AzureNative.Compute.StorageAccountType.Standard_LRS,
///                 TargetRegions = new[]
///                 {
///                     new AzureNative.Compute.Inputs.TargetRegionArgs
///                     {
///                         ExcludeFromLatest = false,
///                         Name = "West US",
///                         RegionalReplicaCount = 2,
///                         StorageAccountType = AzureNative.Compute.StorageAccountType.Standard_LRS,
///                     },
///                 },
///             },
///             SafetyProfile = new AzureNative.Compute.Inputs.GalleryScriptVersionSafetyProfileArgs
///             {
///                 AllowDeletionOfReplicatedLocations = false,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewGalleryScriptVersion(ctx, "galleryScriptVersion", &compute.GalleryScriptVersionArgs{
/// 			GalleryName:              pulumi.String("myGalleryName"),
/// 			GalleryScriptName:        pulumi.String("myGalleryScriptName"),
/// 			GalleryScriptVersionName: pulumi.String("1.0.0"),
/// 			Location:                 pulumi.String("West US"),
/// 			Properties: &compute.GalleryScriptVersionPropertiesArgs{
/// 				PublishingProfile: &compute.GalleryScriptVersionPublishingProfileArgs{
/// 					EndOfLifeDate: pulumi.String("2027-07-01T07:00:00Z"),
/// 					ReplicaCount:  pulumi.Int(2),
/// 					Source: &compute.ScriptSourceArgs{
/// 						Parameters: compute.GalleryScriptParameterArray{
/// 							&compute.GalleryScriptParameterArgs{
/// 								DefaultValue: pulumi.String("westus"),
/// 								Name:         pulumi.String("location"),
/// 								Required:     pulumi.Bool(true),
/// 								Type:         pulumi.String(compute.GalleryScriptParameterTypeString),
/// 							},
/// 							&compute.GalleryScriptParameterArgs{
/// 								DefaultValue: pulumi.String("default value of parameter"),
/// 								Description:  pulumi.String("description of the parameter"),
/// 								Name:         pulumi.String("myGalleryScriptParameter1"),
/// 								Required:     pulumi.Bool(true),
/// 								Type:         pulumi.String(compute.GalleryScriptParameterTypeString),
/// 							},
/// 							&compute.GalleryScriptParameterArgs{
/// 								DefaultValue: pulumi.String("default value of parameter"),
/// 								Description:  pulumi.String("description of the parameter"),
/// 								Name:         pulumi.String("myGalleryScriptParameter2"),
/// 								Required:     pulumi.Bool(false),
/// 								Type:         pulumi.String(compute.GalleryScriptParameterTypeString),
/// 							},
/// 							&compute.GalleryScriptParameterArgs{
/// 								DefaultValue: pulumi.String("3"),
/// 								Description:  pulumi.String("description of the parameter"),
/// 								MaxValue:     pulumi.String("5"),
/// 								MinValue:     pulumi.String("1"),
/// 								Name:         pulumi.String("numberOfUnits"),
/// 								Required:     pulumi.Bool(true),
/// 								Type:         pulumi.String(compute.GalleryScriptParameterTypeInt),
/// 							},
/// 							&compute.GalleryScriptParameterArgs{
/// 								DefaultValue: pulumi.String("0.6"),
/// 								Description:  pulumi.String("description of the parameter"),
/// 								MaxValue:     pulumi.String("2"),
/// 								MinValue:     pulumi.String("0.1"),
/// 								Name:         pulumi.String("weightOfUnit"),
/// 								Required:     pulumi.Bool(true),
/// 								Type:         pulumi.String(compute.GalleryScriptParameterTypeDouble),
/// 							},
/// 							&compute.GalleryScriptParameterArgs{
/// 								DefaultValue: pulumi.String("Fruit"),
/// 								Description:  pulumi.String("description of the parameter"),
/// 								EnumValues: pulumi.StringArray{
/// 									pulumi.String("Fruit"),
/// 									pulumi.String("Vegetable"),
/// 									pulumi.String("Greens"),
/// 									pulumi.String("Nuts"),
/// 								},
/// 								Name:     pulumi.String("typeOfProduct"),
/// 								Required: pulumi.Bool(false),
/// 								Type:     pulumi.String(compute.GalleryScriptParameterTypeEnum),
/// 							},
/// 						},
/// 						ScriptLink: pulumi.String("https://mystorageaccount.blob.core.windows.net/mycontainer/myScript.ps1?{sasKey}"),
/// 					},
/// 					StorageAccountType: pulumi.String(compute.StorageAccountType_Standard_LRS),
/// 					TargetRegions: compute.TargetRegionArray{
/// 						&compute.TargetRegionArgs{
/// 							ExcludeFromLatest:    pulumi.Bool(false),
/// 							Name:                 pulumi.String("West US"),
/// 							RegionalReplicaCount: pulumi.Int(2),
/// 							StorageAccountType:   pulumi.String(compute.StorageAccountType_Standard_LRS),
/// 						},
/// 					},
/// 				},
/// 				SafetyProfile: &compute.GalleryScriptVersionSafetyProfileArgs{
/// 					AllowDeletionOfReplicatedLocations: pulumi.Bool(false),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.compute.GalleryScriptVersion;
/// import com.pulumi.azurenative.compute.GalleryScriptVersionArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryScriptVersionPropertiesArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryScriptVersionPublishingProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.ScriptSourceArgs;
/// import com.pulumi.azurenative.compute.inputs.GalleryScriptVersionSafetyProfileArgs;
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
///         var galleryScriptVersion = new GalleryScriptVersion("galleryScriptVersion", GalleryScriptVersionArgs.builder()
///             .galleryName("myGalleryName")
///             .galleryScriptName("myGalleryScriptName")
///             .galleryScriptVersionName("1.0.0")
///             .location("West US")
///             .properties(GalleryScriptVersionPropertiesArgs.builder()
///                 .publishingProfile(GalleryScriptVersionPublishingProfileArgs.builder()
///                     .endOfLifeDate("2027-07-01T07:00:00Z")
///                     .replicaCount(2)
///                     .source(ScriptSourceArgs.builder()
///                         .parameters(
///                             GalleryScriptParameterArgs.builder()
///                                 .defaultValue("westus")
///                                 .name("location")
///                                 .required(true)
///                                 .type("String")
///                                 .build(),
///                             GalleryScriptParameterArgs.builder()
///                                 .defaultValue("default value of parameter")
///                                 .description("description of the parameter")
///                                 .name("myGalleryScriptParameter1")
///                                 .required(true)
///                                 .type("String")
///                                 .build(),
///                             GalleryScriptParameterArgs.builder()
///                                 .defaultValue("default value of parameter")
///                                 .description("description of the parameter")
///                                 .name("myGalleryScriptParameter2")
///                                 .required(false)
///                                 .type("String")
///                                 .build(),
///                             GalleryScriptParameterArgs.builder()
///                                 .defaultValue("3")
///                                 .description("description of the parameter")
///                                 .maxValue("5")
///                                 .minValue("1")
///                                 .name("numberOfUnits")
///                                 .required(true)
///                                 .type("Int")
///                                 .build(),
///                             GalleryScriptParameterArgs.builder()
///                                 .defaultValue("0.6")
///                                 .description("description of the parameter")
///                                 .maxValue("2")
///                                 .minValue("0.1")
///                                 .name("weightOfUnit")
///                                 .required(true)
///                                 .type("Double")
///                                 .build(),
///                             GalleryScriptParameterArgs.builder()
///                                 .defaultValue("Fruit")
///                                 .description("description of the parameter")
///                                 .enumValues(
///                                     "Fruit",
///                                     "Vegetable",
///                                     "Greens",
///                                     "Nuts")
///                                 .name("typeOfProduct")
///                                 .required(false)
///                                 .type("Enum")
///                                 .build())
///                         .scriptLink("https://mystorageaccount.blob.core.windows.net/mycontainer/myScript.ps1?{sasKey}")
///                         .build())
///                     .storageAccountType("Standard_LRS")
///                     .targetRegions(TargetRegionArgs.builder()
///                         .excludeFromLatest(false)
///                         .name("West US")
///                         .regionalReplicaCount(2)
///                         .storageAccountType("Standard_LRS")
///                         .build())
///                     .build())
///                 .safetyProfile(GalleryScriptVersionSafetyProfileArgs.builder()
///                     .allowDeletionOfReplicatedLocations(false)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const galleryScriptVersion = new azure_native.compute.GalleryScriptVersion("galleryScriptVersion", {
///     galleryName: "myGalleryName",
///     galleryScriptName: "myGalleryScriptName",
///     galleryScriptVersionName: "1.0.0",
///     location: "West US",
///     properties: {
///         publishingProfile: {
///             endOfLifeDate: "2027-07-01T07:00:00Z",
///             replicaCount: 2,
///             source: {
///                 parameters: [
///                     {
///                         defaultValue: "westus",
///                         name: "location",
///                         required: true,
///                         type: azure_native.compute.GalleryScriptParameterType.String,
///                     },
///                     {
///                         defaultValue: "default value of parameter",
///                         description: "description of the parameter",
///                         name: "myGalleryScriptParameter1",
///                         required: true,
///                         type: azure_native.compute.GalleryScriptParameterType.String,
///                     },
///                     {
///                         defaultValue: "default value of parameter",
///                         description: "description of the parameter",
///                         name: "myGalleryScriptParameter2",
///                         required: false,
///                         type: azure_native.compute.GalleryScriptParameterType.String,
///                     },
///                     {
///                         defaultValue: "3",
///                         description: "description of the parameter",
///                         maxValue: "5",
///                         minValue: "1",
///                         name: "numberOfUnits",
///                         required: true,
///                         type: azure_native.compute.GalleryScriptParameterType.Int,
///                     },
///                     {
///                         defaultValue: "0.6",
///                         description: "description of the parameter",
///                         maxValue: "2",
///                         minValue: "0.1",
///                         name: "weightOfUnit",
///                         required: true,
///                         type: azure_native.compute.GalleryScriptParameterType.Double,
///                     },
///                     {
///                         defaultValue: "Fruit",
///                         description: "description of the parameter",
///                         enumValues: [
///                             "Fruit",
///                             "Vegetable",
///                             "Greens",
///                             "Nuts",
///                         ],
///                         name: "typeOfProduct",
///                         required: false,
///                         type: azure_native.compute.GalleryScriptParameterType.Enum,
///                     },
///                 ],
///                 scriptLink: "https://mystorageaccount.blob.core.windows.net/mycontainer/myScript.ps1?{sasKey}",
///             },
///             storageAccountType: azure_native.compute.StorageAccountType.Standard_LRS,
///             targetRegions: [{
///                 excludeFromLatest: false,
///                 name: "West US",
///                 regionalReplicaCount: 2,
///                 storageAccountType: azure_native.compute.StorageAccountType.Standard_LRS,
///             }],
///         },
///         safetyProfile: {
///             allowDeletionOfReplicatedLocations: false,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// gallery_script_version = azure_native.compute.GalleryScriptVersion("galleryScriptVersion",
///     gallery_name="myGalleryName",
///     gallery_script_name="myGalleryScriptName",
///     gallery_script_version_name="1.0.0",
///     location="West US",
///     properties={
///         "publishing_profile": {
///             "end_of_life_date": "2027-07-01T07:00:00Z",
///             "replica_count": 2,
///             "source": {
///                 "parameters": [
///                     {
///                         "default_value": "westus",
///                         "name": "location",
///                         "required": True,
///                         "type": azure_native.compute.GalleryScriptParameterType.STRING,
///                     },
///                     {
///                         "default_value": "default value of parameter",
///                         "description": "description of the parameter",
///                         "name": "myGalleryScriptParameter1",
///                         "required": True,
///                         "type": azure_native.compute.GalleryScriptParameterType.STRING,
///                     },
///                     {
///                         "default_value": "default value of parameter",
///                         "description": "description of the parameter",
///                         "name": "myGalleryScriptParameter2",
///                         "required": False,
///                         "type": azure_native.compute.GalleryScriptParameterType.STRING,
///                     },
///                     {
///                         "default_value": "3",
///                         "description": "description of the parameter",
///                         "max_value": "5",
///                         "min_value": "1",
///                         "name": "numberOfUnits",
///                         "required": True,
///                         "type": azure_native.compute.GalleryScriptParameterType.INT,
///                     },
///                     {
///                         "default_value": "0.6",
///                         "description": "description of the parameter",
///                         "max_value": "2",
///                         "min_value": "0.1",
///                         "name": "weightOfUnit",
///                         "required": True,
///                         "type": azure_native.compute.GalleryScriptParameterType.DOUBLE,
///                     },
///                     {
///                         "default_value": "Fruit",
///                         "description": "description of the parameter",
///                         "enum_values": [
///                             "Fruit",
///                             "Vegetable",
///                             "Greens",
///                             "Nuts",
///                         ],
///                         "name": "typeOfProduct",
///                         "required": False,
///                         "type": azure_native.compute.GalleryScriptParameterType.ENUM,
///                     },
///                 ],
///                 "script_link": "https://mystorageaccount.blob.core.windows.net/mycontainer/myScript.ps1?{sasKey}",
///             },
///             "storage_account_type": azure_native.compute.StorageAccountType.STANDARD_LRS,
///             "target_regions": [{
///                 "exclude_from_latest": False,
///                 "name": "West US",
///                 "regional_replica_count": 2,
///                 "storage_account_type": azure_native.compute.StorageAccountType.STANDARD_LRS,
///             }],
///         },
///         "safety_profile": {
///             "allow_deletion_of_replicated_locations": False,
///         },
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   galleryScriptVersion:
///     type: azure-native:compute:GalleryScriptVersion
///     properties:
///       galleryName: myGalleryName
///       galleryScriptName: myGalleryScriptName
///       galleryScriptVersionName: 1.0.0
///       location: West US
///       properties:
///         publishingProfile:
///           endOfLifeDate: 2027-07-01T07:00:00Z
///           replicaCount: 2
///           source:
///             parameters:
///               - defaultValue: westus
///                 name: location
///                 required: true
///                 type: String
///               - defaultValue: default value of parameter
///                 description: description of the parameter
///                 name: myGalleryScriptParameter1
///                 required: true
///                 type: String
///               - defaultValue: default value of parameter
///                 description: description of the parameter
///                 name: myGalleryScriptParameter2
///                 required: false
///                 type: String
///               - defaultValue: '3'
///                 description: description of the parameter
///                 maxValue: '5'
///                 minValue: '1'
///                 name: numberOfUnits
///                 required: true
///                 type: Int
///               - defaultValue: '0.6'
///                 description: description of the parameter
///                 maxValue: '2'
///                 minValue: '0.1'
///                 name: weightOfUnit
///                 required: true
///                 type: Double
///               - defaultValue: Fruit
///                 description: description of the parameter
///                 enumValues:
///                   - Fruit
///                   - Vegetable
///                   - Greens
///                   - Nuts
///                 name: typeOfProduct
///                 required: false
///                 type: Enum
///             scriptLink: https://mystorageaccount.blob.core.windows.net/mycontainer/myScript.ps1?{sasKey}
///           storageAccountType: Standard_LRS
///           targetRegions:
///             - excludeFromLatest: false
///               name: West US
///               regionalReplicaCount: 2
///               storageAccountType: Standard_LRS
///         safetyProfile:
///           allowDeletionOfReplicatedLocations: false
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:compute:GalleryScriptVersion 1.0.0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/scripts/{galleryScriptName}/versions/{galleryScriptVersionName}
/// ```
class GalleryScriptVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Describes the properties of a gallery Script Version.
  late final pulumi.Output<GalleryScriptVersionPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GalleryScriptVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GalleryScriptVersion]. {@macro pulumi_compute_gallery_script_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GalleryScriptVersion(
    String name, {
    GalleryScriptVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:compute:GalleryScriptVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GalleryScriptVersionPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GalleryScriptVersionPropertiesResponse.fromMap(
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
