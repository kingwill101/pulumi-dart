import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_agent_properties_base_response.dart';
import 'server_collectors_operation_args.dart';
import 'system_data_response.dart';

/// Physical server collector resource.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-15.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ServerCollectorsOperations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverCollectorsOperation = new AzureNative.Migrate.ServerCollectorsOperation("serverCollectorsOperation", new()
///     {
///         AgentProperties = new AzureNative.Migrate.Inputs.CollectorAgentPropertiesBaseArgs
///         {
///             Id = "498e4965-bbb1-47c2-8613-345baff9c509",
///             SpnDetails = new AzureNative.Migrate.Inputs.CollectorAgentSpnPropertiesBaseArgs
///             {
///                 ApplicationId = "65153d2f-9afb-44e8-b3ca-1369150b7354",
///                 Audience = "65153d2f-9afb-44e8-b3ca-1369150b7354",
///                 Authority = "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 ObjectId = "ddde6f96-87c8-420b-9d4d-f16a5090519e",
///                 TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///         },
///         DiscoverySiteId = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/ServerSites/walter7155site",
///         ProjectName = "app18700project",
///         ProvisioningState = AzureNative.Migrate.ProvisioningState.Succeeded,
///         ResourceGroupName = "ayagrawRG",
///         ServerCollectorName = "walter389fcollector",
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
/// 		_, err := migrate.NewServerCollectorsOperation(ctx, "serverCollectorsOperation", &migrate.ServerCollectorsOperationArgs{
/// 			AgentProperties: &migrate.CollectorAgentPropertiesBaseArgs{
/// 				Id: pulumi.String("498e4965-bbb1-47c2-8613-345baff9c509"),
/// 				SpnDetails: &migrate.CollectorAgentSpnPropertiesBaseArgs{
/// 					ApplicationId: pulumi.String("65153d2f-9afb-44e8-b3ca-1369150b7354"),
/// 					Audience:      pulumi.String("65153d2f-9afb-44e8-b3ca-1369150b7354"),
/// 					Authority:     pulumi.String("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 					ObjectId:      pulumi.String("ddde6f96-87c8-420b-9d4d-f16a5090519e"),
/// 					TenantId:      pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 				},
/// 			},
/// 			DiscoverySiteId:     pulumi.String("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/ServerSites/walter7155site"),
/// 			ProjectName:         pulumi.String("app18700project"),
/// 			ProvisioningState:   pulumi.String(migrate.ProvisioningStateSucceeded),
/// 			ResourceGroupName:   pulumi.String("ayagrawRG"),
/// 			ServerCollectorName: pulumi.String("walter389fcollector"),
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
/// import com.pulumi.azurenative.migrate.ServerCollectorsOperation;
/// import com.pulumi.azurenative.migrate.ServerCollectorsOperationArgs;
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
///         var serverCollectorsOperation = new ServerCollectorsOperation("serverCollectorsOperation", ServerCollectorsOperationArgs.builder()
///             .agentProperties(CollectorAgentPropertiesBaseArgs.builder()
///                 .id("498e4965-bbb1-47c2-8613-345baff9c509")
///                 .spnDetails(CollectorAgentSpnPropertiesBaseArgs.builder()
///                     .applicationId("65153d2f-9afb-44e8-b3ca-1369150b7354")
///                     .audience("65153d2f-9afb-44e8-b3ca-1369150b7354")
///                     .authority("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47")
///                     .objectId("ddde6f96-87c8-420b-9d4d-f16a5090519e")
///                     .tenantId("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                     .build())
///                 .build())
///             .discoverySiteId("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/ServerSites/walter7155site")
///             .projectName("app18700project")
///             .provisioningState("Succeeded")
///             .resourceGroupName("ayagrawRG")
///             .serverCollectorName("walter389fcollector")
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
/// const serverCollectorsOperation = new azure_native.migrate.ServerCollectorsOperation("serverCollectorsOperation", {
///     agentProperties: {
///         id: "498e4965-bbb1-47c2-8613-345baff9c509",
///         spnDetails: {
///             applicationId: "65153d2f-9afb-44e8-b3ca-1369150b7354",
///             audience: "65153d2f-9afb-44e8-b3ca-1369150b7354",
///             authority: "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///             objectId: "ddde6f96-87c8-420b-9d4d-f16a5090519e",
///             tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///     },
///     discoverySiteId: "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/ServerSites/walter7155site",
///     projectName: "app18700project",
///     provisioningState: azure_native.migrate.ProvisioningState.Succeeded,
///     resourceGroupName: "ayagrawRG",
///     serverCollectorName: "walter389fcollector",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_collectors_operation = azure_native.migrate.ServerCollectorsOperation("serverCollectorsOperation",
///     agent_properties={
///         "id": "498e4965-bbb1-47c2-8613-345baff9c509",
///         "spn_details": {
///             "application_id": "65153d2f-9afb-44e8-b3ca-1369150b7354",
///             "audience": "65153d2f-9afb-44e8-b3ca-1369150b7354",
///             "authority": "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///             "object_id": "ddde6f96-87c8-420b-9d4d-f16a5090519e",
///             "tenant_id": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///     },
///     discovery_site_id="/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/ServerSites/walter7155site",
///     project_name="app18700project",
///     provisioning_state=azure_native.migrate.ProvisioningState.SUCCEEDED,
///     resource_group_name="ayagrawRG",
///     server_collector_name="walter389fcollector")
///
/// ```
///
/// ```yaml
/// resources:
///   serverCollectorsOperation:
///     type: azure-native:migrate:ServerCollectorsOperation
///     properties:
///       agentProperties:
///         id: 498e4965-bbb1-47c2-8613-345baff9c509
///         spnDetails:
///           applicationId: 65153d2f-9afb-44e8-b3ca-1369150b7354
///           audience: 65153d2f-9afb-44e8-b3ca-1369150b7354
///           authority: https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47
///           objectId: ddde6f96-87c8-420b-9d4d-f16a5090519e
///           tenantId: 72f988bf-86f1-41af-91ab-2d7cd011db47
///       discoverySiteId: /subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/ServerSites/walter7155site
///       projectName: app18700project
///       provisioningState: Succeeded
///       resourceGroupName: ayagrawRG
///       serverCollectorName: walter389fcollector
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
/// $ pulumi import azure-native:migrate:ServerCollectorsOperation walter389fcollector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/servercollectors/{serverCollectorName}
/// ```
class ServerCollectorsOperation extends pulumi.CustomResource {
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

  /// Creates a new [ServerCollectorsOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerCollectorsOperation]. {@macro pulumi_migrate_server_collectors_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerCollectorsOperation(
    String name, {
    ServerCollectorsOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:ServerCollectorsOperation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentProperties = registerOutput<CollectorAgentPropertiesBaseResponse?>(
      'agentProperties',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    discoverySiteId = registerOutput<String?>('discoverySiteId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String?>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
    updatedTimestamp = registerOutput<String>('updatedTimestamp');
  }
}
