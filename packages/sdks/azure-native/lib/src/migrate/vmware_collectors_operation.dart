import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_agent_properties_base_response.dart';
import 'system_data_response.dart';
import 'vmware_collectors_operation_args.dart';

/// VMware collector resource.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-15.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VmwareCollectorsOperations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vmwareCollectorsOperation = new AzureNative.Migrate.VmwareCollectorsOperation("vmwareCollectorsOperation", new()
///     {
///         AgentProperties = new AzureNative.Migrate.Inputs.CollectorAgentPropertiesBaseArgs
///         {
///             Id = "fe243486-3318-41fa-aaba-c48b5df75308",
///             LastHeartbeatUtc = "2022-03-29T12:10:08.9167289Z",
///             SpnDetails = new AzureNative.Migrate.Inputs.CollectorAgentSpnPropertiesBaseArgs
///             {
///                 ApplicationId = "82b3e452-c0e8-4662-8347-58282925ae84",
///                 Audience = "82b3e452-c0e8-4662-8347-58282925ae84",
///                 Authority = "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 ObjectId = "3fc89111-1405-4938-9214-37aa4739401d",
///                 TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///             Version = "1.0.8.383",
///         },
///         DiscoverySiteId = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/VMwareSites/Vmware2744site",
///         ProjectName = "app18700project",
///         ProvisioningState = AzureNative.Migrate.ProvisioningState.Succeeded,
///         ResourceGroupName = "ayagrawRG",
///         VmWareCollectorName = "Vmware2258collector",
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
/// 		_, err := migrate.NewVmwareCollectorsOperation(ctx, "vmwareCollectorsOperation", &migrate.VmwareCollectorsOperationArgs{
/// 			AgentProperties: &migrate.CollectorAgentPropertiesBaseArgs{
/// 				Id:               pulumi.String("fe243486-3318-41fa-aaba-c48b5df75308"),
/// 				LastHeartbeatUtc: pulumi.String("2022-03-29T12:10:08.9167289Z"),
/// 				SpnDetails: &migrate.CollectorAgentSpnPropertiesBaseArgs{
/// 					ApplicationId: pulumi.String("82b3e452-c0e8-4662-8347-58282925ae84"),
/// 					Audience:      pulumi.String("82b3e452-c0e8-4662-8347-58282925ae84"),
/// 					Authority:     pulumi.String("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 					ObjectId:      pulumi.String("3fc89111-1405-4938-9214-37aa4739401d"),
/// 					TenantId:      pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 				},
/// 				Version: pulumi.String("1.0.8.383"),
/// 			},
/// 			DiscoverySiteId:     pulumi.String("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/VMwareSites/Vmware2744site"),
/// 			ProjectName:         pulumi.String("app18700project"),
/// 			ProvisioningState:   pulumi.String(migrate.ProvisioningStateSucceeded),
/// 			ResourceGroupName:   pulumi.String("ayagrawRG"),
/// 			VmWareCollectorName: pulumi.String("Vmware2258collector"),
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
/// resource "azure-native_migrate_vmwarecollectorsoperation" "vmwareCollectorsOperation" {
///   agent_properties = {
///     id                 = "fe243486-3318-41fa-aaba-c48b5df75308"
///     last_heartbeat_utc = "2022-03-29T12:10:08.9167289Z"
///     spn_details = {
///       application_id = "82b3e452-c0e8-4662-8347-58282925ae84"
///       audience       = "82b3e452-c0e8-4662-8347-58282925ae84"
///       authority      = "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47"
///       object_id      = "3fc89111-1405-4938-9214-37aa4739401d"
///       tenant_id      = "72f988bf-86f1-41af-91ab-2d7cd011db47"
///     }
///     version = "1.0.8.383"
///   }
///   discovery_site_id      = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/VMwareSites/Vmware2744site"
///   project_name           = "app18700project"
///   provisioning_state     = "Succeeded"
///   resource_group_name    = "ayagrawRG"
///   vm_ware_collector_name = "Vmware2258collector"
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
/// import com.pulumi.azurenative.migrate.VmwareCollectorsOperation;
/// import com.pulumi.azurenative.migrate.VmwareCollectorsOperationArgs;
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
///         var vmwareCollectorsOperation = new VmwareCollectorsOperation("vmwareCollectorsOperation", VmwareCollectorsOperationArgs.builder()
///             .agentProperties(CollectorAgentPropertiesBaseArgs.builder()
///                 .id("fe243486-3318-41fa-aaba-c48b5df75308")
///                 .lastHeartbeatUtc("2022-03-29T12:10:08.9167289Z")
///                 .spnDetails(CollectorAgentSpnPropertiesBaseArgs.builder()
///                     .applicationId("82b3e452-c0e8-4662-8347-58282925ae84")
///                     .audience("82b3e452-c0e8-4662-8347-58282925ae84")
///                     .authority("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47")
///                     .objectId("3fc89111-1405-4938-9214-37aa4739401d")
///                     .tenantId("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                     .build())
///                 .version("1.0.8.383")
///                 .build())
///             .discoverySiteId("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/VMwareSites/Vmware2744site")
///             .projectName("app18700project")
///             .provisioningState("Succeeded")
///             .resourceGroupName("ayagrawRG")
///             .vmWareCollectorName("Vmware2258collector")
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
/// const vmwareCollectorsOperation = new azure_native.migrate.VmwareCollectorsOperation("vmwareCollectorsOperation", {
///     agentProperties: {
///         id: "fe243486-3318-41fa-aaba-c48b5df75308",
///         lastHeartbeatUtc: "2022-03-29T12:10:08.9167289Z",
///         spnDetails: {
///             applicationId: "82b3e452-c0e8-4662-8347-58282925ae84",
///             audience: "82b3e452-c0e8-4662-8347-58282925ae84",
///             authority: "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///             objectId: "3fc89111-1405-4938-9214-37aa4739401d",
///             tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///         version: "1.0.8.383",
///     },
///     discoverySiteId: "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/VMwareSites/Vmware2744site",
///     projectName: "app18700project",
///     provisioningState: azure_native.migrate.ProvisioningState.Succeeded,
///     resourceGroupName: "ayagrawRG",
///     vmWareCollectorName: "Vmware2258collector",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vmware_collectors_operation = azure_native.migrate.VmwareCollectorsOperation("vmwareCollectorsOperation",
///     agent_properties={
///         "id": "fe243486-3318-41fa-aaba-c48b5df75308",
///         "last_heartbeat_utc": "2022-03-29T12:10:08.9167289Z",
///         "spn_details": {
///             "application_id": "82b3e452-c0e8-4662-8347-58282925ae84",
///             "audience": "82b3e452-c0e8-4662-8347-58282925ae84",
///             "authority": "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///             "object_id": "3fc89111-1405-4938-9214-37aa4739401d",
///             "tenant_id": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         },
///         "version": "1.0.8.383",
///     },
///     discovery_site_id="/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/VMwareSites/Vmware2744site",
///     project_name="app18700project",
///     provisioning_state=azure_native.migrate.ProvisioningState.SUCCEEDED,
///     resource_group_name="ayagrawRG",
///     vm_ware_collector_name="Vmware2258collector")
///
/// ```
///
/// ```yaml
/// resources:
///   vmwareCollectorsOperation:
///     type: azure-native:migrate:VmwareCollectorsOperation
///     properties:
///       agentProperties:
///         id: fe243486-3318-41fa-aaba-c48b5df75308
///         lastHeartbeatUtc: 2022-03-29T12:10:08.9167289Z
///         spnDetails:
///           applicationId: 82b3e452-c0e8-4662-8347-58282925ae84
///           audience: 82b3e452-c0e8-4662-8347-58282925ae84
///           authority: https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47
///           objectId: 3fc89111-1405-4938-9214-37aa4739401d
///           tenantId: 72f988bf-86f1-41af-91ab-2d7cd011db47
///         version: 1.0.8.383
///       discoverySiteId: /subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/ayagrawRG/providers/Microsoft.OffAzure/VMwareSites/Vmware2744site
///       projectName: app18700project
///       provisioningState: Succeeded
///       resourceGroupName: ayagrawRG
///       vmWareCollectorName: Vmware2258collector
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
/// $ pulumi import azure-native:migrate:VmwareCollectorsOperation Vmware2258collector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/vmwarecollectors/{vmWareCollectorName}
/// ```
class VmwareCollectorsOperation extends pulumi.CustomResource {
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
  late final pulumi.Output<String?> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Timestamp when collector was last updated.
  late final pulumi.Output<String> updatedTimestamp;

  /// Creates a new [VmwareCollectorsOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VmwareCollectorsOperation]. {@macro pulumi_migrate_vmware_collectors_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VmwareCollectorsOperation(
    String name, {
    VmwareCollectorsOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:VmwareCollectorsOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentProperties = registerOutput<CollectorAgentPropertiesBaseResponse?>('agentProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CollectorAgentPropertiesBaseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
