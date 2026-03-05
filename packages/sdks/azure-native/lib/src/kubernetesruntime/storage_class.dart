import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_storage_class_type_properties_response.dart';
import 'storage_class_args.dart';
import 'system_data_response.dart';

/// A StorageClass resource for an Arc connected cluster (Microsoft.Kubernetes/connectedClusters)
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2024-03-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StorageClass_CreateOrUpdate_0
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storageClass = new AzureNative.KubernetesRuntime.StorageClass("storageClass", new()
///     {
///         ResourceUri = "subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1",
///         StorageClassName = "testrwx",
///         TypeProperties = new AzureNative.KubernetesRuntime.Inputs.RwxStorageClassTypePropertiesArgs
///         {
///             BackingStorageClassName = "default",
///             Type = "RWX",
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
/// 	kubernetesruntime "github.com/pulumi/pulumi-azure-native-sdk/kubernetesruntime/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kubernetesruntime.NewStorageClass(ctx, "storageClass", &kubernetesruntime.StorageClassArgs{
/// 			ResourceUri:      pulumi.String("subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1"),
/// 			StorageClassName: pulumi.String("testrwx"),
/// 			TypeProperties: &kubernetesruntime.RwxStorageClassTypePropertiesArgs{
/// 				BackingStorageClassName: pulumi.String("default"),
/// 				Type:                    pulumi.String("RWX"),
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
/// import com.pulumi.azurenative.kubernetesruntime.StorageClass;
/// import com.pulumi.azurenative.kubernetesruntime.StorageClassArgs;
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
///         var storageClass = new StorageClass("storageClass", StorageClassArgs.builder()
///             .resourceUri("subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1")
///             .storageClassName("testrwx")
///             .typeProperties(RwxStorageClassTypePropertiesArgs.builder()
///                 .backingStorageClassName("default")
///                 .type("RWX")
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
/// const storageClass = new azure_native.kubernetesruntime.StorageClass("storageClass", {
///     resourceUri: "subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1",
///     storageClassName: "testrwx",
///     typeProperties: {
///         backingStorageClassName: "default",
///         type: "RWX",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage_class = azure_native.kubernetesruntime.StorageClass("storageClass",
///     resource_uri="subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1",
///     storage_class_name="testrwx",
///     type_properties={
///         "backing_storage_class_name": "default",
///         "type": "RWX",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   storageClass:
///     type: azure-native:kubernetesruntime:StorageClass
///     properties:
///       resourceUri: subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/example/providers/Microsoft.Kubernetes/connectedClusters/cluster1
///       storageClassName: testrwx
///       typeProperties:
///         backingStorageClassName: default
///         type: RWX
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
/// $ pulumi import azure-native:kubernetesruntime:StorageClass testrwx /{resourceUri}/providers/Microsoft.KubernetesRuntime/storageClasses/{storageClassName}
/// ```
class StorageClass extends pulumi.CustomResource {
  /// The access mode: [ReadWriteOnce, ReadWriteMany] or [ReadWriteOnce]
  late final pulumi.Output<List<String>?> accessModes;

  /// Volume can be expanded or not
  late final pulumi.Output<String?> allowVolumeExpansion;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Allow single data node failure
  late final pulumi.Output<String?> dataResilience;

  /// Failover speed: NA, Slow, Fast
  late final pulumi.Output<String?> failoverSpeed;

  /// Limitations of the storage class
  late final pulumi.Output<List<String>?> limitations;

  /// Additional mount options
  late final pulumi.Output<List<String>?> mountOptions;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Performance tier
  late final pulumi.Output<String?> performance;

  /// Selection priority when multiple storage classes meet the criteria. 0: Highest, -1: Never use
  late final pulumi.Output<double?> priority;

  /// Provisioner name
  late final pulumi.Output<String?> provisioner;

  /// Resource provision state
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Properties of the StorageClass
  late final pulumi.Output<BlobStorageClassTypePropertiesResponse>
  typeProperties;

  /// Binding mode of volumes: Immediate, WaitForFirstConsumer
  late final pulumi.Output<String?> volumeBindingMode;

  /// Creates a new [StorageClass].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageClass]. {@macro pulumi_kubernetesruntime_storage_class_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageClass(
    String name, {
    StorageClassArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:kubernetesruntime:StorageClass',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessModes = registerOutput<List<String>?>('accessModes');
    allowVolumeExpansion = registerOutput<String?>('allowVolumeExpansion');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataResilience = registerOutput<String?>('dataResilience');
    failoverSpeed = registerOutput<String?>('failoverSpeed');
    limitations = registerOutput<List<String>?>('limitations');
    mountOptions = registerOutput<List<String>?>('mountOptions');
    this.name = registerOutput<String>('name');
    performance = registerOutput<String?>('performance');
    priority = registerOutput<double?>('priority');
    provisioner = registerOutput<String?>('provisioner');
    provisioningState = registerOutput<String>('provisioningState');
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
    typeProperties = registerOutput<BlobStorageClassTypePropertiesResponse>(
      'typeProperties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BlobStorageClassTypePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    volumeBindingMode = registerOutput<String?>('volumeBindingMode');
  }
}
