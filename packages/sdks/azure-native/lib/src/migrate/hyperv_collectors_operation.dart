import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_agent_properties_base_response.dart';
import 'hyperv_collectors_operation_args.dart';
import 'system_data_response.dart';

/// Hyper-V collector resource.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-15.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### HypervCollectorsOperations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hypervCollectorsOperation = new AzureNative.Migrate.HypervCollectorsOperation("hypervCollectorsOperation", new()
///     {
///         AgentProperties = new AzureNative.Migrate.Inputs.CollectorAgentPropertiesBaseArgs
///         {
///             Id = "12f1d90f-b3fa-4926-8893-e56803a09af0",
///             LastHeartbeatUtc = "2022-07-07T14:25:35.708325Z",
///             SpnDetails = new AzureNative.Migrate.Inputs.CollectorAgentSpnPropertiesBaseArgs
///             {
///                 ApplicationId = "e3bd6eaa-980b-40ae-a30e-2a5069ba097c",
///                 Audience = "e3bd6eaa-980b-40ae-a30e-2a5069ba097c",
///                 Authority = "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 ObjectId = "01b9f9e2-2d82-414c-adaa-09ce259b6b44",
///                 TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///             Version = "2.0.1993.19",
///         },
///         DiscoverySiteId = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/HyperVSites/test-60527site",
///         HypervCollectorName = "test-697cecollector",
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
/// 		_, err := migrate.NewHypervCollectorsOperation(ctx, "hypervCollectorsOperation", &migrate.HypervCollectorsOperationArgs{
/// 			AgentProperties: &migrate.CollectorAgentPropertiesBaseArgs{
/// 				Id:               pulumi.String("12f1d90f-b3fa-4926-8893-e56803a09af0"),
/// 				LastHeartbeatUtc: pulumi.String("2022-07-07T14:25:35.708325Z"),
/// 				SpnDetails: &migrate.CollectorAgentSpnPropertiesBaseArgs{
/// 					ApplicationId: pulumi.String("e3bd6eaa-980b-40ae-a30e-2a5069ba097c"),
/// 					Audience:      pulumi.String("e3bd6eaa-980b-40ae-a30e-2a5069ba097c"),
/// 					Authority:     pulumi.String("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 					ObjectId:      pulumi.String("01b9f9e2-2d82-414c-adaa-09ce259b6b44"),
/// 					TenantId:      pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 				},
/// 				Version: pulumi.String("2.0.1993.19"),
/// 			},
/// 			DiscoverySiteId:     pulumi.String("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/HyperVSites/test-60527site"),
/// 			HypervCollectorName: pulumi.String("test-697cecollector"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.migrate.HypervCollectorsOperation;
/// import com.pulumi.azurenative.migrate.HypervCollectorsOperationArgs;
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
///         var hypervCollectorsOperation = new HypervCollectorsOperation("hypervCollectorsOperation", HypervCollectorsOperationArgs.builder()
///             .agentProperties(CollectorAgentPropertiesBaseArgs.builder()
///                 .id("12f1d90f-b3fa-4926-8893-e56803a09af0")
///                 .lastHeartbeatUtc("2022-07-07T14:25:35.708325Z")
///                 .spnDetails(CollectorAgentSpnPropertiesBaseArgs.builder()
///                     .applicationId("e3bd6eaa-980b-40ae-a30e-2a5069ba097c")
///                     .audience("e3bd6eaa-980b-40ae-a30e-2a5069ba097c")
///                     .authority("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47")
///                     .objectId("01b9f9e2-2d82-414c-adaa-09ce259b6b44")
///                     .tenantId("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                     .build())
///                 .version("2.0.1993.19")
///                 .build())
///             .discoverySiteId("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/HyperVSites/test-60527site")
///             .hypervCollectorName("test-697cecollector")
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
/// const hypervCollectorsOperation = new azure_native.migrate.HypervCollectorsOperation("hypervCollectorsOperation", {
///     agentProperties: {
///         id: "12f1d90f-b3fa-4926-8893-e56803a09af0",
///         lastHeartbeatUtc: "2022-07-07T14:25:35.708325Z",
///         spnDetails: {
///             applicationId: "e3bd6eaa-980b-40ae-a30e-2a5069ba097c",
///             audience: "e3bd6eaa-980b-40ae-a30e-2a5069ba097c",
///             authority: "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///             objectId: "01b9f9e2-2d82-414c-adaa-09ce259b6b44",
///             tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///         version: "2.0.1993.19",
///     },
///     discoverySiteId: "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/HyperVSites/test-60527site",
///     hypervCollectorName: "test-697cecollector",
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
/// hyperv_collectors_operation = azure_native.migrate.HypervCollectorsOperation("hypervCollectorsOperation",
///     agent_properties={
///         "id": "12f1d90f-b3fa-4926-8893-e56803a09af0",
///         "last_heartbeat_utc": "2022-07-07T14:25:35.708325Z",
///         "spn_details": {
///             "application_id": "e3bd6eaa-980b-40ae-a30e-2a5069ba097c",
///             "audience": "e3bd6eaa-980b-40ae-a30e-2a5069ba097c",
///             "authority": "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///             "object_id": "01b9f9e2-2d82-414c-adaa-09ce259b6b44",
///             "tenant_id": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///         "version": "2.0.1993.19",
///     },
///     discovery_site_id="/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/HyperVSites/test-60527site",
///     hyperv_collector_name="test-697cecollector",
///     project_name="app18700project",
///     provisioning_state=azure_native.migrate.ProvisioningState.SUCCEEDED,
///     resource_group_name="ayagrawRG")
///
/// ```
///
/// ```yaml
/// resources:
///   hypervCollectorsOperation:
///     type: azure-native:migrate:HypervCollectorsOperation
///     properties:
///       agentProperties:
///         id: 12f1d90f-b3fa-4926-8893-e56803a09af0
///         lastHeartbeatUtc: 2022-07-07T14:25:35.708325Z
///         spnDetails:
///           applicationId: e3bd6eaa-980b-40ae-a30e-2a5069ba097c
///           audience: e3bd6eaa-980b-40ae-a30e-2a5069ba097c
///           authority: https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47
///           objectId: 01b9f9e2-2d82-414c-adaa-09ce259b6b44
///           tenantId: 72f988bf-86f1-41af-91ab-2d7cd011db47
///         version: 2.0.1993.19
///       discoverySiteId: /subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/HyperVSites/test-60527site
///       hypervCollectorName: test-697cecollector
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
/// $ pulumi import azure-native:migrate:HypervCollectorsOperation test-697cecollector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/hypervcollectors/{hypervCollectorName}
/// ```
class HypervCollectorsOperation extends pulumi.CustomResource {
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

  /// Creates a new [HypervCollectorsOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HypervCollectorsOperation]. {@macro pulumi_migrate_hyperv_collectors_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HypervCollectorsOperation(
    String name, {
    HypervCollectorsOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:HypervCollectorsOperation',
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
