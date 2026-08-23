import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_collectors_operation_args.dart';
import 'system_data_response.dart';

/// Import collector resource.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-15.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ImportCollectorsOperations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var importCollectorsOperation = new AzureNative.Migrate.ImportCollectorsOperation("importCollectorsOperation", new()
///     {
///         DiscoverySiteId = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourcegroups/ayagrawRG/providers/microsoft.offazure/importsites/actualSEA37d4importSite",
///         ImportCollectorName = "importCollectore7d5",
///         ProjectName = "app18700project",
///         ProvisioningState = AzureNative.Migrate.ProvisioningState.Succeeded,
///         ResourceGroupName = "ayagrawRG",
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
/// 	migrate "github.com/pulumi/pulumi-azure-native-sdk/migrate/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrate.NewImportCollectorsOperation(ctx, "importCollectorsOperation", &migrate.ImportCollectorsOperationArgs{
/// 			DiscoverySiteId:     pulumi.String("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourcegroups/ayagrawRG/providers/microsoft.offazure/importsites/actualSEA37d4importSite"),
/// 			ImportCollectorName: pulumi.String("importCollectore7d5"),
/// 			ProjectName:         pulumi.String("app18700project"),
/// 			ProvisioningState:   pulumi.String(migrate.ProvisioningStateSucceeded),
/// 			ResourceGroupName:   pulumi.String("ayagrawRG"),
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
/// resource "azure-native_migrate_importcollectorsoperation" "importCollectorsOperation" {
///   discovery_site_id     = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourcegroups/ayagrawRG/providers/microsoft.offazure/importsites/actualSEA37d4importSite"
///   import_collector_name = "importCollectore7d5"
///   project_name          = "app18700project"
///   provisioning_state    = "Succeeded"
///   resource_group_name   = "ayagrawRG"
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
/// import com.pulumi.azurenative.migrate.ImportCollectorsOperation;
/// import com.pulumi.azurenative.migrate.ImportCollectorsOperationArgs;
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
///         var importCollectorsOperation = new ImportCollectorsOperation("importCollectorsOperation", ImportCollectorsOperationArgs.builder()
///             .discoverySiteId("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourcegroups/ayagrawRG/providers/microsoft.offazure/importsites/actualSEA37d4importSite")
///             .importCollectorName("importCollectore7d5")
///             .projectName("app18700project")
///             .provisioningState("Succeeded")
///             .resourceGroupName("ayagrawRG")
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
/// const importCollectorsOperation = new azure_native.migrate.ImportCollectorsOperation("importCollectorsOperation", {
///     discoverySiteId: "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourcegroups/ayagrawRG/providers/microsoft.offazure/importsites/actualSEA37d4importSite",
///     importCollectorName: "importCollectore7d5",
///     projectName: "app18700project",
///     provisioningState: azure_native.migrate.ProvisioningState.Succeeded,
///     resourceGroupName: "ayagrawRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// import_collectors_operation = azure_native.migrate.ImportCollectorsOperation("importCollectorsOperation",
///     discovery_site_id="/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourcegroups/ayagrawRG/providers/microsoft.offazure/importsites/actualSEA37d4importSite",
///     import_collector_name="importCollectore7d5",
///     project_name="app18700project",
///     provisioning_state=azure_native.migrate.ProvisioningState.SUCCEEDED,
///     resource_group_name="ayagrawRG")
///
/// ```
///
/// ```yaml
/// resources:
///   importCollectorsOperation:
///     type: azure-native:migrate:ImportCollectorsOperation
///     properties:
///       discoverySiteId: /subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourcegroups/ayagrawRG/providers/microsoft.offazure/importsites/actualSEA37d4importSite
///       importCollectorName: importCollectore7d5
///       projectName: app18700project
///       provisioningState: Succeeded
///       resourceGroupName: ayagrawRG
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
/// $ pulumi import azure-native:migrate:ImportCollectorsOperation importCollectore7d5 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/importcollectors/{importCollectorName}
/// ```
class ImportCollectorsOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the Timestamp when collector was created.
  late final pulumi.Output<String> createdTimestamp;
  /// Gets the discovery site id.
  late final pulumi.Output<String?> discoverySiteId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String?> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Timestamp when collector was last updated.
  late final pulumi.Output<String> updatedTimestamp;

  /// Creates a new [ImportCollectorsOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImportCollectorsOperation]. {@macro pulumi_migrate_import_collectors_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImportCollectorsOperation(
    String name, {
    ImportCollectorsOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:ImportCollectorsOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    discoverySiteId = registerOutput<String?>('discoverySiteId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedTimestamp = registerOutput<String>('updatedTimestamp');
  }
}
