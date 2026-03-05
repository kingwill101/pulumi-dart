import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_agent_properties_base_response.dart';
import 'sql_collector_operation_args.dart';
import 'system_data_response.dart';

/// The SQL collector REST object.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-15.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SqlCollectorOperations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlCollectorOperation = new AzureNative.Migrate.SqlCollectorOperation("sqlCollectorOperation", new()
///     {
///         AgentProperties = new AzureNative.Migrate.Inputs.CollectorAgentPropertiesBaseArgs
///         {
///             Id = "630da710-4d44-41f7-a189-72fe3db5502b-agent",
///             SpnDetails = new AzureNative.Migrate.Inputs.CollectorAgentSpnPropertiesBaseArgs
///             {
///                 ApplicationId = "db9c4c3d-477c-4d5a-817b-318276713565",
///                 Audience = "db9c4c3d-477c-4d5a-817b-318276713565",
///                 Authority = "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 ObjectId = "e50236ad-ad07-47d4-af71-ed7b52d200d5",
///                 TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///         },
///         CollectorName = "fci-test0c1esqlsitecollector",
///         DiscoverySiteId = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/bansalankit-rg/providers/Microsoft.OffAzure/MasterSites/fci-ankit-test6065mastersite/SqlSites/fci-ankit-test6065sqlsites",
///         ProjectName = "fci-test6904project",
///         ResourceGroupName = "rgmigrate",
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
/// 		_, err := migrate.NewSqlCollectorOperation(ctx, "sqlCollectorOperation", &migrate.SqlCollectorOperationArgs{
/// 			AgentProperties: &migrate.CollectorAgentPropertiesBaseArgs{
/// 				Id: pulumi.String("630da710-4d44-41f7-a189-72fe3db5502b-agent"),
/// 				SpnDetails: &migrate.CollectorAgentSpnPropertiesBaseArgs{
/// 					ApplicationId: pulumi.String("db9c4c3d-477c-4d5a-817b-318276713565"),
/// 					Audience:      pulumi.String("db9c4c3d-477c-4d5a-817b-318276713565"),
/// 					Authority:     pulumi.String("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 					ObjectId:      pulumi.String("e50236ad-ad07-47d4-af71-ed7b52d200d5"),
/// 					TenantId:      pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 				},
/// 			},
/// 			CollectorName:     pulumi.String("fci-test0c1esqlsitecollector"),
/// 			DiscoverySiteId:   pulumi.String("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/bansalankit-rg/providers/Microsoft.OffAzure/MasterSites/fci-ankit-test6065mastersite/SqlSites/fci-ankit-test6065sqlsites"),
/// 			ProjectName:       pulumi.String("fci-test6904project"),
/// 			ResourceGroupName: pulumi.String("rgmigrate"),
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
/// import com.pulumi.azurenative.migrate.SqlCollectorOperation;
/// import com.pulumi.azurenative.migrate.SqlCollectorOperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.CollectorAgentPropertiesBaseArgs;
/// import com.pulumi.azurenative.migrate.inputs.CollectorAgentSpnPropertiesBaseArgs;
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
///         var sqlCollectorOperation = new SqlCollectorOperation("sqlCollectorOperation", SqlCollectorOperationArgs.builder()
///             .agentProperties(CollectorAgentPropertiesBaseArgs.builder()
///                 .id("630da710-4d44-41f7-a189-72fe3db5502b-agent")
///                 .spnDetails(CollectorAgentSpnPropertiesBaseArgs.builder()
///                     .applicationId("db9c4c3d-477c-4d5a-817b-318276713565")
///                     .audience("db9c4c3d-477c-4d5a-817b-318276713565")
///                     .authority("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47")
///                     .objectId("e50236ad-ad07-47d4-af71-ed7b52d200d5")
///                     .tenantId("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                     .build())
///                 .build())
///             .collectorName("fci-test0c1esqlsitecollector")
///             .discoverySiteId("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/bansalankit-rg/providers/Microsoft.OffAzure/MasterSites/fci-ankit-test6065mastersite/SqlSites/fci-ankit-test6065sqlsites")
///             .projectName("fci-test6904project")
///             .resourceGroupName("rgmigrate")
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
/// const sqlCollectorOperation = new azure_native.migrate.SqlCollectorOperation("sqlCollectorOperation", {
///     agentProperties: {
///         id: "630da710-4d44-41f7-a189-72fe3db5502b-agent",
///         spnDetails: {
///             applicationId: "db9c4c3d-477c-4d5a-817b-318276713565",
///             audience: "db9c4c3d-477c-4d5a-817b-318276713565",
///             authority: "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///             objectId: "e50236ad-ad07-47d4-af71-ed7b52d200d5",
///             tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///     },
///     collectorName: "fci-test0c1esqlsitecollector",
///     discoverySiteId: "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/bansalankit-rg/providers/Microsoft.OffAzure/MasterSites/fci-ankit-test6065mastersite/SqlSites/fci-ankit-test6065sqlsites",
///     projectName: "fci-test6904project",
///     resourceGroupName: "rgmigrate",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_collector_operation = azure_native.migrate.SqlCollectorOperation("sqlCollectorOperation",
///     agent_properties={
///         "id": "630da710-4d44-41f7-a189-72fe3db5502b-agent",
///         "spn_details": {
///             "application_id": "db9c4c3d-477c-4d5a-817b-318276713565",
///             "audience": "db9c4c3d-477c-4d5a-817b-318276713565",
///             "authority": "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///             "object_id": "e50236ad-ad07-47d4-af71-ed7b52d200d5",
///             "tenant_id": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///     },
///     collector_name="fci-test0c1esqlsitecollector",
///     discovery_site_id="/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/bansalankit-rg/providers/Microsoft.OffAzure/MasterSites/fci-ankit-test6065mastersite/SqlSites/fci-ankit-test6065sqlsites",
///     project_name="fci-test6904project",
///     resource_group_name="rgmigrate")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlCollectorOperation:
///     type: azure-native:migrate:SqlCollectorOperation
///     properties:
///       agentProperties:
///         id: 630da710-4d44-41f7-a189-72fe3db5502b-agent
///         spnDetails:
///           applicationId: db9c4c3d-477c-4d5a-817b-318276713565
///           audience: db9c4c3d-477c-4d5a-817b-318276713565
///           authority: https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47
///           objectId: e50236ad-ad07-47d4-af71-ed7b52d200d5
///           tenantId: 72f988bf-86f1-41af-91ab-2d7cd011db47
///       collectorName: fci-test0c1esqlsitecollector
///       discoverySiteId: /subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/bansalankit-rg/providers/Microsoft.OffAzure/MasterSites/fci-ankit-test6065mastersite/SqlSites/fci-ankit-test6065sqlsites
///       projectName: fci-test6904project
///       resourceGroupName: rgmigrate
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
/// $ pulumi import azure-native:migrate:SqlCollectorOperation fci-test0c1esqlsitecollector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/sqlcollectors/{collectorName}
/// ```
class SqlCollectorOperation extends pulumi.CustomResource {
  /// Gets or sets the collector agent properties.
  late final pulumi.Output<CollectorAgentPropertiesBaseResponse?>
  agentProperties;

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

  /// Creates a new [SqlCollectorOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlCollectorOperation]. {@macro pulumi_migrate_sql_collector_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlCollectorOperation(
    String name, {
    SqlCollectorOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:SqlCollectorOperation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentProperties = registerOutput<CollectorAgentPropertiesBaseResponse?>(
      'agentProperties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CollectorAgentPropertiesBaseResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    discoverySiteId = registerOutput<String?>('discoverySiteId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
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
    updatedTimestamp = registerOutput<String>('updatedTimestamp');
  }
}
