import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference_response.dart';
import 'restore_point_args.dart';
import 'restore_point_instance_view_response.dart';
import 'restore_point_source_metadata_response.dart';
import 'system_data_response.dart';

/// Restore Point details.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-08-01, 2022-11-01, 2023-03-01, 2023-07-01, 2023-09-01, 2024-03-01, 2024-07-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Copy a restore point to a different region
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var restorePoint = new AzureNative.Compute.RestorePoint("restorePoint", new()
///     {
///         ResourceGroupName = "myResourceGroup",
///         RestorePointCollectionName = "rpcName",
///         RestorePointName = "rpName",
///         SourceRestorePoint = new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///         {
///             Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/sourceRpcName/restorePoints/sourceRpName",
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
/// 		_, err := compute.NewRestorePoint(ctx, "restorePoint", &compute.RestorePointArgs{
/// 			ResourceGroupName:          pulumi.String("myResourceGroup"),
/// 			RestorePointCollectionName: pulumi.String("rpcName"),
/// 			RestorePointName:           pulumi.String("rpName"),
/// 			SourceRestorePoint: &compute.ApiEntityReferenceArgs{
/// 				Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/sourceRpcName/restorePoints/sourceRpName"),
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
/// import com.pulumi.azurenative.compute.RestorePoint;
/// import com.pulumi.azurenative.compute.RestorePointArgs;
/// import com.pulumi.azurenative.compute.inputs.ApiEntityReferenceArgs;
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
///         var restorePoint = new RestorePoint("restorePoint", RestorePointArgs.builder()
///             .resourceGroupName("myResourceGroup")
///             .restorePointCollectionName("rpcName")
///             .restorePointName("rpName")
///             .sourceRestorePoint(ApiEntityReferenceArgs.builder()
///                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/sourceRpcName/restorePoints/sourceRpName")
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
/// const restorePoint = new azure_native.compute.RestorePoint("restorePoint", {
///     resourceGroupName: "myResourceGroup",
///     restorePointCollectionName: "rpcName",
///     restorePointName: "rpName",
///     sourceRestorePoint: {
///         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/sourceRpcName/restorePoints/sourceRpName",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// restore_point = azure_native.compute.RestorePoint("restorePoint",
///     resource_group_name="myResourceGroup",
///     restore_point_collection_name="rpcName",
///     restore_point_name="rpName",
///     source_restore_point={
///         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/sourceRpcName/restorePoints/sourceRpName",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   restorePoint:
///     type: azure-native:compute:RestorePoint
///     properties:
///       resourceGroupName: myResourceGroup
///       restorePointCollectionName: rpcName
///       restorePointName: rpName
///       sourceRestorePoint:
///         id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/restorePointCollections/sourceRpcName/restorePoints/sourceRpName
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a restore point
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var restorePoint = new AzureNative.Compute.RestorePoint("restorePoint", new()
///     {
///         ExcludeDisks = new[]
///         {
///             new AzureNative.Compute.Inputs.ApiEntityReferenceArgs
///             {
///                 Id = "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/disk123",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         RestorePointCollectionName = "rpcName",
///         RestorePointName = "rpName",
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
/// 		_, err := compute.NewRestorePoint(ctx, "restorePoint", &compute.RestorePointArgs{
/// 			ExcludeDisks: compute.ApiEntityReferenceArray{
/// 				&compute.ApiEntityReferenceArgs{
/// 					Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/disk123"),
/// 				},
/// 			},
/// 			ResourceGroupName:          pulumi.String("myResourceGroup"),
/// 			RestorePointCollectionName: pulumi.String("rpcName"),
/// 			RestorePointName:           pulumi.String("rpName"),
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
/// import com.pulumi.azurenative.compute.RestorePoint;
/// import com.pulumi.azurenative.compute.RestorePointArgs;
/// import com.pulumi.azurenative.compute.inputs.ApiEntityReferenceArgs;
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
///         var restorePoint = new RestorePoint("restorePoint", RestorePointArgs.builder()
///             .excludeDisks(ApiEntityReferenceArgs.builder()
///                 .id("/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/disk123")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .restorePointCollectionName("rpcName")
///             .restorePointName("rpName")
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
/// const restorePoint = new azure_native.compute.RestorePoint("restorePoint", {
///     excludeDisks: [{
///         id: "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/disk123",
///     }],
///     resourceGroupName: "myResourceGroup",
///     restorePointCollectionName: "rpcName",
///     restorePointName: "rpName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// restore_point = azure_native.compute.RestorePoint("restorePoint",
///     exclude_disks=[{
///         "id": "/subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/disk123",
///     }],
///     resource_group_name="myResourceGroup",
///     restore_point_collection_name="rpcName",
///     restore_point_name="rpName")
///
/// ```
///
/// ```yaml
/// resources:
///   restorePoint:
///     type: azure-native:compute:RestorePoint
///     properties:
///       excludeDisks:
///         - id: /subscriptions/{subscription-id}/resourceGroups/myResourceGroup/providers/Microsoft.Compute/disks/disk123
///       resourceGroupName: myResourceGroup
///       restorePointCollectionName: rpcName
///       restorePointName: rpName
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
/// $ pulumi import azure-native:compute:RestorePoint rpName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/restorePointCollections/{restorePointCollectionName}/restorePoints/{restorePointName}
/// ```
class RestorePoint extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// ConsistencyMode of the RestorePoint. Can be specified in the input while creating a restore point. For now, only CrashConsistent is accepted as a valid input. Please refer to https://aka.ms/RestorePoints for more details.
  late final pulumi.Output<String?> consistencyMode;

  /// List of disk resource ids that the customer wishes to exclude from the restore point. If no disks are specified, all disks will be included.
  late final pulumi.Output<List<Map<String, dynamic>>?> excludeDisks;

  /// The restore point instance view.
  late final pulumi.Output<RestorePointInstanceViewResponse> instanceView;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Gets the provisioning state of the restore point.
  late final pulumi.Output<String> provisioningState;

  /// Gets the details of the VM captured at the time of the restore point creation.
  late final pulumi.Output<RestorePointSourceMetadataResponse?> sourceMetadata;

  /// Resource Id of the source restore point from which a copy needs to be created.
  late final pulumi.Output<ApiEntityReferenceResponse?> sourceRestorePoint;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Gets the creation time of the restore point.
  late final pulumi.Output<String?> timeCreated;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RestorePoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestorePoint]. {@macro pulumi_compute_restore_point_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestorePoint(
    String name, {
    RestorePointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:compute:RestorePoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    consistencyMode = registerOutput<String?>('consistencyMode');
    excludeDisks = registerOutput<List<Map<String, dynamic>>?>('excludeDisks');
    instanceView = registerOutput<RestorePointInstanceViewResponse>(
      'instanceView',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RestorePointInstanceViewResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sourceMetadata = registerOutput<RestorePointSourceMetadataResponse?>(
      'sourceMetadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RestorePointSourceMetadataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sourceRestorePoint = registerOutput<ApiEntityReferenceResponse?>(
      'sourceRestorePoint',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ApiEntityReferenceResponse.fromMap(
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
    timeCreated = registerOutput<String?>('timeCreated');
    type = registerOutput<String>('type');
  }
}
