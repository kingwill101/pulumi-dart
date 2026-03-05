import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'system_data_response.dart';

/// Contains information about an application in a Batch account.
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01, 2024-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native batch [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApplicationCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var application = new AzureNative.Batch.Application("application", new()
///     {
///         AccountName = "sampleacct",
///         AllowUpdates = false,
///         ApplicationName = "app1",
///         DisplayName = "myAppName",
///         ResourceGroupName = "default-azurebatch-japaneast",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewApplication(ctx, "application", &batch.ApplicationArgs{
/// 			AccountName:       pulumi.String("sampleacct"),
/// 			AllowUpdates:      pulumi.Bool(false),
/// 			ApplicationName:   pulumi.String("app1"),
/// 			DisplayName:       pulumi.String("myAppName"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
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
/// import com.pulumi.azurenative.batch.Application;
/// import com.pulumi.azurenative.batch.ApplicationArgs;
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
///         var application = new Application("application", ApplicationArgs.builder()
///             .accountName("sampleacct")
///             .allowUpdates(false)
///             .applicationName("app1")
///             .displayName("myAppName")
///             .resourceGroupName("default-azurebatch-japaneast")
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
/// const application = new azure_native.batch.Application("application", {
///     accountName: "sampleacct",
///     allowUpdates: false,
///     applicationName: "app1",
///     displayName: "myAppName",
///     resourceGroupName: "default-azurebatch-japaneast",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application = azure_native.batch.Application("application",
///     account_name="sampleacct",
///     allow_updates=False,
///     application_name="app1",
///     display_name="myAppName",
///     resource_group_name="default-azurebatch-japaneast")
///
/// ```
///
/// ```yaml
/// resources:
///   application:
///     type: azure-native:batch:Application
///     properties:
///       accountName: sampleacct
///       allowUpdates: false
///       applicationName: app1
///       displayName: myAppName
///       resourceGroupName: default-azurebatch-japaneast
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
/// $ pulumi import azure-native:batch:Application app1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications/{applicationName}
/// ```
class Application extends pulumi.CustomResource {
  /// A value indicating whether packages within the application may be overwritten using the same version string.
  late final pulumi.Output<bool?> allowUpdates;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The package to use if a client requests the application but does not specify a version. This property can only be set to the name of an existing package.
  late final pulumi.Output<String?> defaultVersion;

  /// The display name for the application.
  late final pulumi.Output<String?> displayName;

  /// The ETag of the resource, used for concurrency statements.
  late final pulumi.Output<String> etag;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_batch_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:batch:Application',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowUpdates = registerOutput<bool?>('allowUpdates');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    defaultVersion = registerOutput<String?>('defaultVersion');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
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
