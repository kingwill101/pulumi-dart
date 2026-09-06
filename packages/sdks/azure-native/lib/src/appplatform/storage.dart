import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account_response.dart';
import 'storage_args.dart';
import 'system_data_response.dart';

/// Storage resource payload.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Storages_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var storage = new AzureNative.AppPlatform.Storage("storage", new()
///     {
///         Properties = new AzureNative.AppPlatform.Inputs.StorageAccountArgs
///         {
///             AccountKey = "account-key-of-storage-account",
///             AccountName = "storage-account-name",
///             StorageType = "StorageAccount",
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
///         StorageName = "mystorage",
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
/// 	appplatform "github.com/pulumi/pulumi-azure-native-sdk/appplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appplatform.NewStorage(ctx, "storage", &appplatform.StorageArgs{
/// 			Properties: &appplatform.StorageAccountArgs{
/// 				AccountKey:  pulumi.String("account-key-of-storage-account"),
/// 				AccountName: pulumi.String("storage-account-name"),
/// 				StorageType: pulumi.String("StorageAccount"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
/// 			StorageName:       pulumi.String("mystorage"),
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
/// resource "azure-native_appplatform_storage" "storage" {
///   properties = {
///     account_key  = "account-key-of-storage-account"
///     account_name = "storage-account-name"
///     storage_type = "StorageAccount"
///   }
///   resource_group_name = "myResourceGroup"
///   service_name        = "myservice"
///   storage_name        = "mystorage"
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
/// import com.pulumi.azurenative.appplatform.Storage;
/// import com.pulumi.azurenative.appplatform.StorageArgs;
/// import com.pulumi.azurenative.appplatform.inputs.StorageAccountArgs;
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
///         var storage = new Storage("storage", StorageArgs.builder()
///             .properties(StorageAccountArgs.builder()
///                 .accountKey("account-key-of-storage-account")
///                 .accountName("storage-account-name")
///                 .storageType("StorageAccount")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
///             .storageName("mystorage")
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
/// const storage = new azure_native.appplatform.Storage("storage", {
///     properties: {
///         accountKey: "account-key-of-storage-account",
///         accountName: "storage-account-name",
///         storageType: "StorageAccount",
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
///     storageName: "mystorage",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// storage = azure_native.appplatform.Storage("storage",
///     properties={
///         "account_key": "account-key-of-storage-account",
///         "account_name": "storage-account-name",
///         "storage_type": "StorageAccount",
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice",
///     storage_name="mystorage")
///
/// ```
///
/// ```yaml
/// resources:
///   storage:
///     type: azure-native:appplatform:Storage
///     properties:
///       properties:
///         accountKey: account-key-of-storage-account
///         accountName: storage-account-name
///         storageType: StorageAccount
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
///       storageName: mystorage
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
/// $ pulumi import azure-native:appplatform:Storage mystorage /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/storages/{storageName}
/// ```
class Storage extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Properties of the storage resource payload.
  late final pulumi.Output<StorageAccountResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Storage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Storage]. {@macro pulumi_appplatform_storage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Storage(
    String name, {
    StorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:Storage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StorageAccountResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageAccountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Storage] resource.
  Storage.reference(String urn)
    : super(
        'azure-native:appplatform:Storage',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StorageAccountResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageAccountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
