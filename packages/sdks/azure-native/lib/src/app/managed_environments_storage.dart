import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_environment_storage_response_properties.dart';
import 'managed_environments_storage_args.dart';
import 'system_data_response.dart';

/// Storage resource for managedEnvironment.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update environments storage
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedEnvironmentsStorage = new AzureNative.App.ManagedEnvironmentsStorage("managedEnvironmentsStorage", new()
///     {
///         EnvironmentName = "managedEnv",
///         Properties = new AzureNative.App.Inputs.ManagedEnvironmentStoragePropertiesArgs
///         {
///             AzureFile = new AzureNative.App.Inputs.AzureFilePropertiesArgs
///             {
///                 AccessMode = AzureNative.App.AccessMode.ReadOnly,
///                 AccountKey = "key",
///                 AccountName = "account1",
///                 ShareName = "share1",
///             },
///         },
///         ResourceGroupName = "examplerg",
///         StorageName = "jlaw-demo1",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewManagedEnvironmentsStorage(ctx, "managedEnvironmentsStorage", &app.ManagedEnvironmentsStorageArgs{
/// 			EnvironmentName: pulumi.String("managedEnv"),
/// 			Properties: &app.ManagedEnvironmentStoragePropertiesArgs{
/// 				AzureFile: &app.AzureFilePropertiesArgs{
/// 					AccessMode:  pulumi.String(app.AccessModeReadOnly),
/// 					AccountKey:  pulumi.String("key"),
/// 					AccountName: pulumi.String("account1"),
/// 					ShareName:   pulumi.String("share1"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			StorageName:       pulumi.String("jlaw-demo1"),
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
/// import com.pulumi.azurenative.app.ManagedEnvironmentsStorage;
/// import com.pulumi.azurenative.app.ManagedEnvironmentsStorageArgs;
/// import com.pulumi.azurenative.app.inputs.ManagedEnvironmentStoragePropertiesArgs;
/// import com.pulumi.azurenative.app.inputs.AzureFilePropertiesArgs;
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
///         var managedEnvironmentsStorage = new ManagedEnvironmentsStorage("managedEnvironmentsStorage", ManagedEnvironmentsStorageArgs.builder()
///             .environmentName("managedEnv")
///             .properties(ManagedEnvironmentStoragePropertiesArgs.builder()
///                 .azureFile(AzureFilePropertiesArgs.builder()
///                     .accessMode("ReadOnly")
///                     .accountKey("key")
///                     .accountName("account1")
///                     .shareName("share1")
///                     .build())
///                 .build())
///             .resourceGroupName("examplerg")
///             .storageName("jlaw-demo1")
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
/// const managedEnvironmentsStorage = new azure_native.app.ManagedEnvironmentsStorage("managedEnvironmentsStorage", {
///     environmentName: "managedEnv",
///     properties: {
///         azureFile: {
///             accessMode: azure_native.app.AccessMode.ReadOnly,
///             accountKey: "key",
///             accountName: "account1",
///             shareName: "share1",
///         },
///     },
///     resourceGroupName: "examplerg",
///     storageName: "jlaw-demo1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_environments_storage = azure_native.app.ManagedEnvironmentsStorage("managedEnvironmentsStorage",
///     environment_name="managedEnv",
///     properties={
///         "azure_file": {
///             "access_mode": azure_native.app.AccessMode.READ_ONLY,
///             "account_key": "key",
///             "account_name": "account1",
///             "share_name": "share1",
///         },
///     },
///     resource_group_name="examplerg",
///     storage_name="jlaw-demo1")
///
/// ```
///
/// ```yaml
/// resources:
///   managedEnvironmentsStorage:
///     type: azure-native:app:ManagedEnvironmentsStorage
///     properties:
///       environmentName: managedEnv
///       properties:
///         azureFile:
///           accessMode: ReadOnly
///           accountKey: key
///           accountName: account1
///           shareName: share1
///       resourceGroupName: examplerg
///       storageName: jlaw-demo1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update environments storage for NFS Azure file
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedEnvironmentsStorage = new AzureNative.App.ManagedEnvironmentsStorage("managedEnvironmentsStorage", new()
///     {
///         EnvironmentName = "managedEnv",
///         Properties = new AzureNative.App.Inputs.ManagedEnvironmentStoragePropertiesArgs
///         {
///             NfsAzureFile = new AzureNative.App.Inputs.NfsAzureFilePropertiesArgs
///             {
///                 AccessMode = AzureNative.App.AccessMode.ReadOnly,
///                 Server = "server1",
///                 ShareName = "share1",
///             },
///         },
///         ResourceGroupName = "examplerg",
///         StorageName = "jlaw-demo1",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewManagedEnvironmentsStorage(ctx, "managedEnvironmentsStorage", &app.ManagedEnvironmentsStorageArgs{
/// 			EnvironmentName: pulumi.String("managedEnv"),
/// 			Properties: &app.ManagedEnvironmentStoragePropertiesArgs{
/// 				NfsAzureFile: &app.NfsAzureFilePropertiesArgs{
/// 					AccessMode: pulumi.String(app.AccessModeReadOnly),
/// 					Server:     pulumi.String("server1"),
/// 					ShareName:  pulumi.String("share1"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			StorageName:       pulumi.String("jlaw-demo1"),
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
/// import com.pulumi.azurenative.app.ManagedEnvironmentsStorage;
/// import com.pulumi.azurenative.app.ManagedEnvironmentsStorageArgs;
/// import com.pulumi.azurenative.app.inputs.ManagedEnvironmentStoragePropertiesArgs;
/// import com.pulumi.azurenative.app.inputs.NfsAzureFilePropertiesArgs;
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
///         var managedEnvironmentsStorage = new ManagedEnvironmentsStorage("managedEnvironmentsStorage", ManagedEnvironmentsStorageArgs.builder()
///             .environmentName("managedEnv")
///             .properties(ManagedEnvironmentStoragePropertiesArgs.builder()
///                 .nfsAzureFile(NfsAzureFilePropertiesArgs.builder()
///                     .accessMode("ReadOnly")
///                     .server("server1")
///                     .shareName("share1")
///                     .build())
///                 .build())
///             .resourceGroupName("examplerg")
///             .storageName("jlaw-demo1")
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
/// const managedEnvironmentsStorage = new azure_native.app.ManagedEnvironmentsStorage("managedEnvironmentsStorage", {
///     environmentName: "managedEnv",
///     properties: {
///         nfsAzureFile: {
///             accessMode: azure_native.app.AccessMode.ReadOnly,
///             server: "server1",
///             shareName: "share1",
///         },
///     },
///     resourceGroupName: "examplerg",
///     storageName: "jlaw-demo1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_environments_storage = azure_native.app.ManagedEnvironmentsStorage("managedEnvironmentsStorage",
///     environment_name="managedEnv",
///     properties={
///         "nfs_azure_file": {
///             "access_mode": azure_native.app.AccessMode.READ_ONLY,
///             "server": "server1",
///             "share_name": "share1",
///         },
///     },
///     resource_group_name="examplerg",
///     storage_name="jlaw-demo1")
///
/// ```
///
/// ```yaml
/// resources:
///   managedEnvironmentsStorage:
///     type: azure-native:app:ManagedEnvironmentsStorage
///     properties:
///       environmentName: managedEnv
///       properties:
///         nfsAzureFile:
///           accessMode: ReadOnly
///           server: server1
///           shareName: share1
///       resourceGroupName: examplerg
///       storageName: jlaw-demo1
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
/// $ pulumi import azure-native:app:ManagedEnvironmentsStorage jlaw-demo1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/managedEnvironments/{environmentName}/storages/{storageName}
/// ```
class ManagedEnvironmentsStorage extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Storage properties
  late final pulumi.Output<ManagedEnvironmentStorageResponseProperties>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedEnvironmentsStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedEnvironmentsStorage]. {@macro pulumi_app_managed_environments_storage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedEnvironmentsStorage(
    String name, {
    ManagedEnvironmentsStorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:app:ManagedEnvironmentsStorage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ManagedEnvironmentStorageResponseProperties>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedEnvironmentStorageResponseProperties.fromMap(
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
    type = registerOutput<String>('type');
  }
}
