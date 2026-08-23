import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_agent_properties_base_response.dart';
import 'system_data_response.dart';
import 'web_app_collector_operation_args.dart';

/// The web app collector REST object.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WebAppCollectorOperations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webAppCollectorOperation = new AzureNative.Migrate.WebAppCollectorOperation("webAppCollectorOperation", new()
///     {
///         AgentProperties = new AzureNative.Migrate.Inputs.CollectorAgentPropertiesBaseArgs
///         {
///             Id = "fed93df5-b787-4e3f-a764-e3d2b9101a59-agent",
///             LastHeartbeatUtc = "2023-11-03T05:43:02.078Z",
///             SpnDetails = new AzureNative.Migrate.Inputs.CollectorAgentSpnPropertiesBaseArgs
///             {
///                 ApplicationId = "2f70d5e8-7adc-4c64-910a-7031079efc6e",
///                 Audience = "2f70d5e8-7adc-4c64-910a-7031079efc6e",
///                 Authority = "https://login.microsoftonline.com/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 ObjectId = "2f70d5e8-7adc-4c64-910a-7031079efc6e",
///                 TenantId = "2f70d5e8-7adc-4c64-910a-7031079efc6e",
///             },
///         },
///         CollectorName = "collector1",
///         DiscoverySiteId = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sumukk-ccy-bcs/providers/Microsoft.OffAzure/MasterSites/sumukk-ccy-bcs9880mastersite/WebAppSites/sumukk-ccy-bcs9880webappsites",
///         ProjectName = "sumukk-ccy-bcs4557project",
///         ResourceGroupName = "rgopenapi",
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
/// 		_, err := migrate.NewWebAppCollectorOperation(ctx, "webAppCollectorOperation", &migrate.WebAppCollectorOperationArgs{
/// 			AgentProperties: &migrate.CollectorAgentPropertiesBaseArgs{
/// 				Id:               pulumi.String("fed93df5-b787-4e3f-a764-e3d2b9101a59-agent"),
/// 				LastHeartbeatUtc: pulumi.String("2023-11-03T05:43:02.078Z"),
/// 				SpnDetails: &migrate.CollectorAgentSpnPropertiesBaseArgs{
/// 					ApplicationId: pulumi.String("2f70d5e8-7adc-4c64-910a-7031079efc6e"),
/// 					Audience:      pulumi.String("2f70d5e8-7adc-4c64-910a-7031079efc6e"),
/// 					Authority:     pulumi.String("https://login.microsoftonline.com/72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 					ObjectId:      pulumi.String("2f70d5e8-7adc-4c64-910a-7031079efc6e"),
/// 					TenantId:      pulumi.String("2f70d5e8-7adc-4c64-910a-7031079efc6e"),
/// 				},
/// 			},
/// 			CollectorName:     pulumi.String("collector1"),
/// 			DiscoverySiteId:   pulumi.String("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sumukk-ccy-bcs/providers/Microsoft.OffAzure/MasterSites/sumukk-ccy-bcs9880mastersite/WebAppSites/sumukk-ccy-bcs9880webappsites"),
/// 			ProjectName:       pulumi.String("sumukk-ccy-bcs4557project"),
/// 			ResourceGroupName: pulumi.String("rgopenapi"),
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
/// resource "azure-native_migrate_webappcollectoroperation" "webAppCollectorOperation" {
///   agent_properties = {
///     id                 = "fed93df5-b787-4e3f-a764-e3d2b9101a59-agent"
///     last_heartbeat_utc = "2023-11-03T05:43:02.078Z"
///     spn_details = {
///       application_id = "2f70d5e8-7adc-4c64-910a-7031079efc6e"
///       audience       = "2f70d5e8-7adc-4c64-910a-7031079efc6e"
///       authority      = "https://login.microsoftonline.com/72f988bf-86f1-41af-91ab-2d7cd011db47"
///       object_id      = "2f70d5e8-7adc-4c64-910a-7031079efc6e"
///       tenant_id      = "2f70d5e8-7adc-4c64-910a-7031079efc6e"
///     }
///   }
///   collector_name      = "collector1"
///   discovery_site_id   = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sumukk-ccy-bcs/providers/Microsoft.OffAzure/MasterSites/sumukk-ccy-bcs9880mastersite/WebAppSites/sumukk-ccy-bcs9880webappsites"
///   project_name        = "sumukk-ccy-bcs4557project"
///   resource_group_name = "rgopenapi"
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
/// import com.pulumi.azurenative.migrate.WebAppCollectorOperation;
/// import com.pulumi.azurenative.migrate.WebAppCollectorOperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.CollectorAgentPropertiesBaseArgs;
/// import com.pulumi.azurenative.migrate.inputs.CollectorAgentSpnPropertiesBaseArgs;
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
///         var webAppCollectorOperation = new WebAppCollectorOperation("webAppCollectorOperation", WebAppCollectorOperationArgs.builder()
///             .agentProperties(CollectorAgentPropertiesBaseArgs.builder()
///                 .id("fed93df5-b787-4e3f-a764-e3d2b9101a59-agent")
///                 .lastHeartbeatUtc("2023-11-03T05:43:02.078Z")
///                 .spnDetails(CollectorAgentSpnPropertiesBaseArgs.builder()
///                     .applicationId("2f70d5e8-7adc-4c64-910a-7031079efc6e")
///                     .audience("2f70d5e8-7adc-4c64-910a-7031079efc6e")
///                     .authority("https://login.microsoftonline.com/72f988bf-86f1-41af-91ab-2d7cd011db47")
///                     .objectId("2f70d5e8-7adc-4c64-910a-7031079efc6e")
///                     .tenantId("2f70d5e8-7adc-4c64-910a-7031079efc6e")
///                     .build())
///                 .build())
///             .collectorName("collector1")
///             .discoverySiteId("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sumukk-ccy-bcs/providers/Microsoft.OffAzure/MasterSites/sumukk-ccy-bcs9880mastersite/WebAppSites/sumukk-ccy-bcs9880webappsites")
///             .projectName("sumukk-ccy-bcs4557project")
///             .resourceGroupName("rgopenapi")
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
/// const webAppCollectorOperation = new azure_native.migrate.WebAppCollectorOperation("webAppCollectorOperation", {
///     agentProperties: {
///         id: "fed93df5-b787-4e3f-a764-e3d2b9101a59-agent",
///         lastHeartbeatUtc: "2023-11-03T05:43:02.078Z",
///         spnDetails: {
///             applicationId: "2f70d5e8-7adc-4c64-910a-7031079efc6e",
///             audience: "2f70d5e8-7adc-4c64-910a-7031079efc6e",
///             authority: "https://login.microsoftonline.com/72f988bf-86f1-41af-91ab-2d7cd011db47",
///             objectId: "2f70d5e8-7adc-4c64-910a-7031079efc6e",
///             tenantId: "2f70d5e8-7adc-4c64-910a-7031079efc6e",
///         },
///     },
///     collectorName: "collector1",
///     discoverySiteId: "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sumukk-ccy-bcs/providers/Microsoft.OffAzure/MasterSites/sumukk-ccy-bcs9880mastersite/WebAppSites/sumukk-ccy-bcs9880webappsites",
///     projectName: "sumukk-ccy-bcs4557project",
///     resourceGroupName: "rgopenapi",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app_collector_operation = azure_native.migrate.WebAppCollectorOperation("webAppCollectorOperation",
///     agent_properties={
///         "id": "fed93df5-b787-4e3f-a764-e3d2b9101a59-agent",
///         "last_heartbeat_utc": "2023-11-03T05:43:02.078Z",
///         "spn_details": {
///             "application_id": "2f70d5e8-7adc-4c64-910a-7031079efc6e",
///             "audience": "2f70d5e8-7adc-4c64-910a-7031079efc6e",
///             "authority": "https://login.microsoftonline.com/72f988bf-86f1-41af-91ab-2d7cd011db47",
///             "object_id": "2f70d5e8-7adc-4c64-910a-7031079efc6e",
///             "tenant_id": "2f70d5e8-7adc-4c64-910a-7031079efc6e",
///         },
///     },
///     collector_name="collector1",
///     discovery_site_id="/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sumukk-ccy-bcs/providers/Microsoft.OffAzure/MasterSites/sumukk-ccy-bcs9880mastersite/WebAppSites/sumukk-ccy-bcs9880webappsites",
///     project_name="sumukk-ccy-bcs4557project",
///     resource_group_name="rgopenapi")
///
/// ```
///
/// ```yaml
/// resources:
///   webAppCollectorOperation:
///     type: azure-native:migrate:WebAppCollectorOperation
///     properties:
///       agentProperties:
///         id: fed93df5-b787-4e3f-a764-e3d2b9101a59-agent
///         lastHeartbeatUtc: 2023-11-03T05:43:02.078Z
///         spnDetails:
///           applicationId: 2f70d5e8-7adc-4c64-910a-7031079efc6e
///           audience: 2f70d5e8-7adc-4c64-910a-7031079efc6e
///           authority: https://login.microsoftonline.com/72f988bf-86f1-41af-91ab-2d7cd011db47
///           objectId: 2f70d5e8-7adc-4c64-910a-7031079efc6e
///           tenantId: 2f70d5e8-7adc-4c64-910a-7031079efc6e
///       collectorName: collector1
///       discoverySiteId: /subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/sumukk-ccy-bcs/providers/Microsoft.OffAzure/MasterSites/sumukk-ccy-bcs9880mastersite/WebAppSites/sumukk-ccy-bcs9880webappsites
///       projectName: sumukk-ccy-bcs4557project
///       resourceGroupName: rgopenapi
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
/// $ pulumi import azure-native:migrate:WebAppCollectorOperation sumukk-ccy-bcs4a93webappsitecollector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/webAppCollectors/{collectorName}
/// ```
class WebAppCollectorOperation extends pulumi.CustomResource {
  /// Gets or sets the collector agent properties.
  late final pulumi.Output<CollectorAgentPropertiesBaseResponse?> agentProperties;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets the Timestamp when collector was created.
  late final pulumi.Output<String> createdTimestamp;
  /// Gets the discovery site id.
  late final pulumi.Output<String?> discoverySiteId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Timestamp when collector was last updated.
  late final pulumi.Output<String> updatedTimestamp;

  /// Creates a new [WebAppCollectorOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppCollectorOperation]. {@macro pulumi_migrate_web_app_collector_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppCollectorOperation(
    String name, {
    WebAppCollectorOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:WebAppCollectorOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentProperties = registerOutput<CollectorAgentPropertiesBaseResponse?>('agentProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CollectorAgentPropertiesBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    discoverySiteId = registerOutput<String?>('discoverySiteId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updatedTimestamp = registerOutput<String>('updatedTimestamp');
  }
}
