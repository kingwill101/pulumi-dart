import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_migration_service_args.dart';
import 'system_data_response.dart';

/// A SQL Migration Service.
///
/// Uses Azure REST API version 2023-07-15-preview. In version 2.x of the Azure Native provider, it used API version 2022-03-30-preview.
///
/// Other available API versions: 2021-10-30-preview, 2022-01-30-preview, 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update SQL Migration Service with maximum parameters.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlMigrationService = new AzureNative.DataMigration.SqlMigrationService("sqlMigrationService", new()
///     {
///         Location = "northeurope",
///         ResourceGroupName = "testrg",
///         SqlMigrationServiceName = "testagent",
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
/// 		_, err := datamigration.NewSqlMigrationService(ctx, "sqlMigrationService", &datamigration.SqlMigrationServiceArgs{
/// 			Location:                pulumi.String("northeurope"),
/// 			ResourceGroupName:       pulumi.String("testrg"),
/// 			SqlMigrationServiceName: pulumi.String("testagent"),
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
/// import com.pulumi.azurenative.datamigration.SqlMigrationService;
/// import com.pulumi.azurenative.datamigration.SqlMigrationServiceArgs;
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
///         var sqlMigrationService = new SqlMigrationService("sqlMigrationService", SqlMigrationServiceArgs.builder()
///             .location("northeurope")
///             .resourceGroupName("testrg")
///             .sqlMigrationServiceName("testagent")
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
/// const sqlMigrationService = new azure_native.datamigration.SqlMigrationService("sqlMigrationService", {
///     location: "northeurope",
///     resourceGroupName: "testrg",
///     sqlMigrationServiceName: "testagent",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_migration_service = azure_native.datamigration.SqlMigrationService("sqlMigrationService",
///     location="northeurope",
///     resource_group_name="testrg",
///     sql_migration_service_name="testagent")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlMigrationService:
///     type: azure-native:datamigration:SqlMigrationService
///     properties:
///       location: northeurope
///       resourceGroupName: testrg
///       sqlMigrationServiceName: testagent
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update SQL Migration Service with minimum parameters.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlMigrationService = new AzureNative.DataMigration.SqlMigrationService("sqlMigrationService", new()
///     {
///         Location = "northeurope",
///         ResourceGroupName = "testrg",
///         SqlMigrationServiceName = "testagent",
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
/// 		_, err := datamigration.NewSqlMigrationService(ctx, "sqlMigrationService", &datamigration.SqlMigrationServiceArgs{
/// 			Location:                pulumi.String("northeurope"),
/// 			ResourceGroupName:       pulumi.String("testrg"),
/// 			SqlMigrationServiceName: pulumi.String("testagent"),
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
/// import com.pulumi.azurenative.datamigration.SqlMigrationService;
/// import com.pulumi.azurenative.datamigration.SqlMigrationServiceArgs;
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
///         var sqlMigrationService = new SqlMigrationService("sqlMigrationService", SqlMigrationServiceArgs.builder()
///             .location("northeurope")
///             .resourceGroupName("testrg")
///             .sqlMigrationServiceName("testagent")
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
/// const sqlMigrationService = new azure_native.datamigration.SqlMigrationService("sqlMigrationService", {
///     location: "northeurope",
///     resourceGroupName: "testrg",
///     sqlMigrationServiceName: "testagent",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_migration_service = azure_native.datamigration.SqlMigrationService("sqlMigrationService",
///     location="northeurope",
///     resource_group_name="testrg",
///     sql_migration_service_name="testagent")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlMigrationService:
///     type: azure-native:datamigration:SqlMigrationService
///     properties:
///       location: northeurope
///       resourceGroupName: testrg
///       sqlMigrationServiceName: testagent
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
/// $ pulumi import azure-native:datamigration:SqlMigrationService testagent /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataMigration/sqlMigrationServices/{sqlMigrationServiceName}
/// ```
class SqlMigrationService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Current state of the Integration runtime.
  late final pulumi.Output<String> integrationRuntimeState;
  late final pulumi.Output<String?> location;
  late final pulumi.Output<String> name;

  /// Provisioning state to track the async operation status.
  late final pulumi.Output<String> provisioningState;
  late final pulumi.Output<SystemDataResponse> systemData;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String> type;

  /// Creates a new [SqlMigrationService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlMigrationService]. {@macro pulumi_datamigration_sql_migration_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlMigrationService(
    String name, {
    SqlMigrationServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:datamigration:SqlMigrationService',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    integrationRuntimeState = registerOutput<String>('integrationRuntimeState');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
