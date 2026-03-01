import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_point_collection_args.dart';
import 'restore_point_collection_source_properties_response.dart';
import 'restore_point_response.dart';
import 'system_data_response.dart';

/// Create or update Restore Point collection parameters.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a restore point collection for cross region copy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var restorePointCollection = new AzureNative.Compute.RestorePointCollection("restorePointCollection", new()
///     {
///         Location = "norwayeast",
///         ResourceGroupName = "myResourceGroup",
///         RestorePointCollectionName = "myRpc",
///         Source = new AzureNative.Compute.Inputs.RestorePointCollectionSourcePropertiesArgs
///         {
///             Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/sourceRpcName",
///         },
///         Tags =
///         {
///             { "myTag1", "tagValue1" },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewRestorePointCollection(ctx, "restorePointCollection", &compute.RestorePointCollectionArgs{
/// 			Location:                   pulumi.String("norwayeast"),
/// 			ResourceGroupName:          pulumi.String("myResourceGroup"),
/// 			RestorePointCollectionName: pulumi.String("myRpc"),
/// 			Source: &compute.RestorePointCollectionSourcePropertiesArgs{
/// 				Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/sourceRpcName"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"myTag1": pulumi.String("tagValue1"),
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
/// import com.pulumi.azurenative.compute.RestorePointCollection;
/// import com.pulumi.azurenative.compute.RestorePointCollectionArgs;
/// import com.pulumi.azurenative.compute.inputs.RestorePointCollectionSourcePropertiesArgs;
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
///         var restorePointCollection = new RestorePointCollection("restorePointCollection", RestorePointCollectionArgs.builder()
///             .location("norwayeast")
///             .resourceGroupName("myResourceGroup")
///             .restorePointCollectionName("myRpc")
///             .source(RestorePointCollectionSourcePropertiesArgs.builder()
///                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/sourceRpcName")
///                 .build())
///             .tags(Map.of("myTag1", "tagValue1"))
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
/// const restorePointCollection = new azure_native.compute.RestorePointCollection("restorePointCollection", {
///     location: "norwayeast",
///     resourceGroupName: "myResourceGroup",
///     restorePointCollectionName: "myRpc",
///     source: {
///         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/sourceRpcName",
///     },
///     tags: {
///         myTag1: "tagValue1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// restore_point_collection = azure_native.compute.RestorePointCollection("restorePointCollection",
///     location="norwayeast",
///     resource_group_name="myResourceGroup",
///     restore_point_collection_name="myRpc",
///     source={
///         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/sourceRpcName",
///     },
///     tags={
///         "myTag1": "tagValue1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   restorePointCollection:
///     type: azure-native:compute:RestorePointCollection
///     properties:
///       location: norwayeast
///       resourceGroupName: myResourceGroup
///       restorePointCollectionName: myRpc
///       source:
///         id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/sourceRpcName
///       tags:
///         myTag1: tagValue1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a restore point collection.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var restorePointCollection = new AzureNative.Compute.RestorePointCollection("restorePointCollection", new()
///     {
///         Location = "norwayeast",
///         ResourceGroupName = "myResourceGroup",
///         RestorePointCollectionName = "myRpc",
///         Source = new AzureNative.Compute.Inputs.RestorePointCollectionSourcePropertiesArgs
///         {
///             Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVM",
///         },
///         Tags =
///         {
///             { "myTag1", "tagValue1" },
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewRestorePointCollection(ctx, "restorePointCollection", &compute.RestorePointCollectionArgs{
/// 			Location:                   pulumi.String("norwayeast"),
/// 			ResourceGroupName:          pulumi.String("myResourceGroup"),
/// 			RestorePointCollectionName: pulumi.String("myRpc"),
/// 			Source: &compute.RestorePointCollectionSourcePropertiesArgs{
/// 				Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVM"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"myTag1": pulumi.String("tagValue1"),
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
/// import com.pulumi.azurenative.compute.RestorePointCollection;
/// import com.pulumi.azurenative.compute.RestorePointCollectionArgs;
/// import com.pulumi.azurenative.compute.inputs.RestorePointCollectionSourcePropertiesArgs;
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
///         var restorePointCollection = new RestorePointCollection("restorePointCollection", RestorePointCollectionArgs.builder()
///             .location("norwayeast")
///             .resourceGroupName("myResourceGroup")
///             .restorePointCollectionName("myRpc")
///             .source(RestorePointCollectionSourcePropertiesArgs.builder()
///                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVM")
///                 .build())
///             .tags(Map.of("myTag1", "tagValue1"))
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
/// const restorePointCollection = new azure_native.compute.RestorePointCollection("restorePointCollection", {
///     location: "norwayeast",
///     resourceGroupName: "myResourceGroup",
///     restorePointCollectionName: "myRpc",
///     source: {
///         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVM",
///     },
///     tags: {
///         myTag1: "tagValue1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// restore_point_collection = azure_native.compute.RestorePointCollection("restorePointCollection",
///     location="norwayeast",
///     resource_group_name="myResourceGroup",
///     restore_point_collection_name="myRpc",
///     source={
///         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVM",
///     },
///     tags={
///         "myTag1": "tagValue1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   restorePointCollection:
///     type: azure-native:compute:RestorePointCollection
///     properties:
///       location: norwayeast
///       resourceGroupName: myResourceGroup
///       restorePointCollectionName: myRpc
///       source:
///         id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVM
///       tags:
///         myTag1: tagValue1
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
/// $ pulumi import azure-native:compute:RestorePointCollection myRpc /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/restorePointCollections/{restorePointCollectionName}
/// ```
class RestorePointCollection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the restore point collection.
  late final pulumi.Output<String> provisioningState;
  /// The unique id of the restore point collection.
  late final pulumi.Output<String> restorePointCollectionId;
  /// A list containing all restore points created under this restore point collection.
  late final pulumi.Output<List<RestorePointResponse>> restorePoints;
  /// The properties of the source resource that this restore point collection is created from.
  late final pulumi.Output<RestorePointCollectionSourcePropertiesResponse?> source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RestorePointCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestorePointCollection]. {@macro pulumi_compute_restore_point_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestorePointCollection(
    String name, {
    RestorePointCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:RestorePointCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.restorePointCollectionId = registerOutput<String>('restorePointCollectionId');
    this.restorePoints = registerOutput<List<RestorePointResponse>>('restorePoints');
    this.source = registerOutput<RestorePointCollectionSourcePropertiesResponse?>('source');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
