import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_service_args.dart';
import 'system_data_response.dart';

/// A Migration Service.
///
/// Uses Azure REST API version 2023-07-15-preview. In version 2.x of the Azure Native provider, it used API version 2023-07-15-preview.
///
/// Other available API versions: 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Migration Service with maximum parameters.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migrationService = new AzureNative.DataMigration.MigrationService("migrationService", new()
///     {
///         Location = "northeurope",
///         MigrationServiceName = "testagent",
///         ResourceGroupName = "testrg",
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
/// 	datamigration "github.com/pulumi/pulumi-azure-native-sdk/datamigration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datamigration.NewMigrationService(ctx, "migrationService", &datamigration.MigrationServiceArgs{
/// 			Location:             pulumi.String("northeurope"),
/// 			MigrationServiceName: pulumi.String("testagent"),
/// 			ResourceGroupName:    pulumi.String("testrg"),
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
/// import com.pulumi.azurenative.datamigration.MigrationService;
/// import com.pulumi.azurenative.datamigration.MigrationServiceArgs;
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
///         var migrationService = new MigrationService("migrationService", MigrationServiceArgs.builder()
///             .location("northeurope")
///             .migrationServiceName("testagent")
///             .resourceGroupName("testrg")
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
/// const migrationService = new azure_native.datamigration.MigrationService("migrationService", {
///     location: "northeurope",
///     migrationServiceName: "testagent",
///     resourceGroupName: "testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migration_service = azure_native.datamigration.MigrationService("migrationService",
///     location="northeurope",
///     migration_service_name="testagent",
///     resource_group_name="testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   migrationService:
///     type: azure-native:datamigration:MigrationService
///     properties:
///       location: northeurope
///       migrationServiceName: testagent
///       resourceGroupName: testrg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Migration Service with minimum parameters.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migrationService = new AzureNative.DataMigration.MigrationService("migrationService", new()
///     {
///         Location = "northeurope",
///         MigrationServiceName = "testagent",
///         ResourceGroupName = "testrg",
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
/// 	datamigration "github.com/pulumi/pulumi-azure-native-sdk/datamigration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datamigration.NewMigrationService(ctx, "migrationService", &datamigration.MigrationServiceArgs{
/// 			Location:             pulumi.String("northeurope"),
/// 			MigrationServiceName: pulumi.String("testagent"),
/// 			ResourceGroupName:    pulumi.String("testrg"),
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
/// import com.pulumi.azurenative.datamigration.MigrationService;
/// import com.pulumi.azurenative.datamigration.MigrationServiceArgs;
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
///         var migrationService = new MigrationService("migrationService", MigrationServiceArgs.builder()
///             .location("northeurope")
///             .migrationServiceName("testagent")
///             .resourceGroupName("testrg")
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
/// const migrationService = new azure_native.datamigration.MigrationService("migrationService", {
///     location: "northeurope",
///     migrationServiceName: "testagent",
///     resourceGroupName: "testrg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migration_service = azure_native.datamigration.MigrationService("migrationService",
///     location="northeurope",
///     migration_service_name="testagent",
///     resource_group_name="testrg")
///
/// ```
///
/// ```yaml
/// resources:
///   migrationService:
///     type: azure-native:datamigration:MigrationService
///     properties:
///       location: northeurope
///       migrationServiceName: testagent
///       resourceGroupName: testrg
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
/// $ pulumi import azure-native:datamigration:MigrationService testagent /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataMigration/migrationServices/{migrationServiceName}
/// ```
class MigrationService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Current state of the Integration runtime.
  late final pulumi.Output<String> integrationRuntimeState;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state to track the async operation status.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MigrationService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MigrationService]. {@macro pulumi_datamigration_migration_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MigrationService(
    String name, {
    MigrationServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datamigration:MigrationService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    integrationRuntimeState = registerOutput<String>('integrationRuntimeState');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
