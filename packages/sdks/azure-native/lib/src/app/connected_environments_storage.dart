import 'package:pulumi/pulumi.dart' as pulumi;
import 'connected_environment_storage_response_properties.dart';
import 'connected_environments_storage_args.dart';
import 'system_data_response.dart';

/// Storage resource for connectedEnvironment.
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
///     var connectedEnvironmentsStorage = new AzureNative.App.ConnectedEnvironmentsStorage("connectedEnvironmentsStorage", new()
///     {
///         ConnectedEnvironmentName = "env",
///         Properties = new AzureNative.App.Inputs.ConnectedEnvironmentStoragePropertiesArgs
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
/// 		_, err := app.NewConnectedEnvironmentsStorage(ctx, "connectedEnvironmentsStorage", &app.ConnectedEnvironmentsStorageArgs{
/// 			ConnectedEnvironmentName: pulumi.String("env"),
/// 			Properties: &app.ConnectedEnvironmentStoragePropertiesArgs{
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
/// import com.pulumi.azurenative.app.ConnectedEnvironmentsStorage;
/// import com.pulumi.azurenative.app.ConnectedEnvironmentsStorageArgs;
/// import com.pulumi.azurenative.app.inputs.ConnectedEnvironmentStoragePropertiesArgs;
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
///         var connectedEnvironmentsStorage = new ConnectedEnvironmentsStorage("connectedEnvironmentsStorage", ConnectedEnvironmentsStorageArgs.builder()
///             .connectedEnvironmentName("env")
///             .properties(ConnectedEnvironmentStoragePropertiesArgs.builder()
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
/// const connectedEnvironmentsStorage = new azure_native.app.ConnectedEnvironmentsStorage("connectedEnvironmentsStorage", {
///     connectedEnvironmentName: "env",
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
/// connected_environments_storage = azure_native.app.ConnectedEnvironmentsStorage("connectedEnvironmentsStorage",
///     connected_environment_name="env",
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
///   connectedEnvironmentsStorage:
///     type: azure-native:app:ConnectedEnvironmentsStorage
///     properties:
///       connectedEnvironmentName: env
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
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:app:ConnectedEnvironmentsStorage jlaw-demo1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/connectedEnvironments/{connectedEnvironmentName}/storages/{storageName}
/// ```
class ConnectedEnvironmentsStorage extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Storage properties
  late final pulumi.Output<ConnectedEnvironmentStorageResponseProperties> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectedEnvironmentsStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectedEnvironmentsStorage]. {@macro pulumi_app_connected_environments_storage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectedEnvironmentsStorage(
    String name, {
    ConnectedEnvironmentsStorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:ConnectedEnvironmentsStorage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConnectedEnvironmentStorageResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectedEnvironmentStorageResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
