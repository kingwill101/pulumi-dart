import 'package:pulumi/pulumi.dart' as pulumi;
import 'pure_storage_policy_args.dart';
import 'system_data_response.dart';

/// An instance describing a Pure Storage Policy Based Management policy
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PureStoragePolicies_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pureStoragePolicy = new AzureNative.AVS.PureStoragePolicy("pureStoragePolicy", new()
///     {
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
///         StoragePolicyDefinition = "storagePolicyDefinition1",
///         StoragePolicyName = "storagePolicy1",
///         StoragePoolId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/PureStorage.Block/storagePools/storagePool1",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewPureStoragePolicy(ctx, "pureStoragePolicy", &avs.PureStoragePolicyArgs{
/// 			PrivateCloudName:        pulumi.String("cloud1"),
/// 			ResourceGroupName:       pulumi.String("group1"),
/// 			StoragePolicyDefinition: pulumi.String("storagePolicyDefinition1"),
/// 			StoragePolicyName:       pulumi.String("storagePolicy1"),
/// 			StoragePoolId:           pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/PureStorage.Block/storagePools/storagePool1"),
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
/// resource "azure-native_avs_purestoragepolicy" "pureStoragePolicy" {
///   private_cloud_name        = "cloud1"
///   resource_group_name       = "group1"
///   storage_policy_definition = "storagePolicyDefinition1"
///   storage_policy_name       = "storagePolicy1"
///   storage_pool_id           = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/PureStorage.Block/storagePools/storagePool1"
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
/// import com.pulumi.azurenative.avs.PureStoragePolicy;
/// import com.pulumi.azurenative.avs.PureStoragePolicyArgs;
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
///         var pureStoragePolicy = new PureStoragePolicy("pureStoragePolicy", PureStoragePolicyArgs.builder()
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
///             .storagePolicyDefinition("storagePolicyDefinition1")
///             .storagePolicyName("storagePolicy1")
///             .storagePoolId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/PureStorage.Block/storagePools/storagePool1")
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
/// const pureStoragePolicy = new azure_native.avs.PureStoragePolicy("pureStoragePolicy", {
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
///     storagePolicyDefinition: "storagePolicyDefinition1",
///     storagePolicyName: "storagePolicy1",
///     storagePoolId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/PureStorage.Block/storagePools/storagePool1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pure_storage_policy = azure_native.avs.PureStoragePolicy("pureStoragePolicy",
///     private_cloud_name="cloud1",
///     resource_group_name="group1",
///     storage_policy_definition="storagePolicyDefinition1",
///     storage_policy_name="storagePolicy1",
///     storage_pool_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/PureStorage.Block/storagePools/storagePool1")
///
/// ```
///
/// ```yaml
/// resources:
///   pureStoragePolicy:
///     type: azure-native:avs:PureStoragePolicy
///     properties:
///       privateCloudName: cloud1
///       resourceGroupName: group1
///       storagePolicyDefinition: storagePolicyDefinition1
///       storagePolicyName: storagePolicy1
///       storagePoolId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/PureStorage.Block/storagePools/storagePool1
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
/// $ pulumi import azure-native:avs:PureStoragePolicy storagePolicy1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/pureStoragePolicies/{storagePolicyName}
/// ```
class PureStoragePolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The state of the Pure Storage Policy Based Management policy provisioning
  late final pulumi.Output<String> provisioningState;
  /// Definition of a Pure Storage Policy Based Management policy
  late final pulumi.Output<String> storagePolicyDefinition;
  /// Azure resource ID of the Pure Storage Pool associated with the storage policy
  late final pulumi.Output<String> storagePoolId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PureStoragePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PureStoragePolicy]. {@macro pulumi_avs_pure_storage_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PureStoragePolicy(
    String name, {
    PureStoragePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:PureStoragePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    storagePolicyDefinition = registerOutput<String>('storagePolicyDefinition');
    storagePoolId = registerOutput<String>('storagePoolId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
