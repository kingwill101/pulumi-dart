import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_properties_response.dart';
import 'vmware_collector_args.dart';

/// Uses Azure REST API version 2019-10-01. In version 2.x of the Azure Native provider, it used API version 2019-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VMwareCollectors_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vMwareCollector = new AzureNative.Migrate.VMwareCollector("vMwareCollector", new()
///     {
///         ETag = "\"01003d32-0000-0d00-0000-5d74d2e50000\"",
///         ProjectName = "abgoyalWEselfhostb72bproject",
///         Properties = new AzureNative.Migrate.Inputs.CollectorPropertiesArgs
///         {
///             AgentProperties = new AzureNative.Migrate.Inputs.CollectorAgentPropertiesArgs
///             {
///                 SpnDetails = new AzureNative.Migrate.Inputs.CollectorBodyAgentSpnPropertiesArgs
///                 {
///                     ApplicationId = "fc717575-8173-4b21-92a5-658b655e613e",
///                     Audience = "https://72f988bf-86f1-41af-91ab-2d7cd011db47/PortalvCenterbc2fagentauthaadapp",
///                     Authority = "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                     ObjectId = "29d94f38-db94-4980-aec0-0cfd55ab1cd0",
///                     TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 },
///             },
///             DiscoverySiteId = "/subscriptions/6393a73f-8d55-47ef-b6dd-179b3e0c7910/resourceGroups/abgoyal-westEurope/providers/Microsoft.OffAzure/VMwareSites/PortalvCenterbc2fsite",
///         },
///         ResourceGroupName = "abgoyal-westEurope",
///         VmWareCollectorName = "PortalvCenterbc2fcollector",
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
/// 		_, err := migrate.NewVMwareCollector(ctx, "vMwareCollector", &migrate.VMwareCollectorArgs{
/// 			ETag:        pulumi.String("\"01003d32-0000-0d00-0000-5d74d2e50000\""),
/// 			ProjectName: pulumi.String("abgoyalWEselfhostb72bproject"),
/// 			Properties: &migrate.CollectorPropertiesArgs{
/// 				AgentProperties: &migrate.CollectorAgentPropertiesArgs{
/// 					SpnDetails: &migrate.CollectorBodyAgentSpnPropertiesArgs{
/// 						ApplicationId: pulumi.String("fc717575-8173-4b21-92a5-658b655e613e"),
/// 						Audience:      pulumi.String("https://72f988bf-86f1-41af-91ab-2d7cd011db47/PortalvCenterbc2fagentauthaadapp"),
/// 						Authority:     pulumi.String("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 						ObjectId:      pulumi.String("29d94f38-db94-4980-aec0-0cfd55ab1cd0"),
/// 						TenantId:      pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 					},
/// 				},
/// 				DiscoverySiteId: pulumi.String("/subscriptions/6393a73f-8d55-47ef-b6dd-179b3e0c7910/resourceGroups/abgoyal-westEurope/providers/Microsoft.OffAzure/VMwareSites/PortalvCenterbc2fsite"),
/// 			},
/// 			ResourceGroupName:   pulumi.String("abgoyal-westEurope"),
/// 			VmWareCollectorName: pulumi.String("PortalvCenterbc2fcollector"),
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
/// import com.pulumi.azurenative.migrate.VMwareCollector;
/// import com.pulumi.azurenative.migrate.VMwareCollectorArgs;
/// import com.pulumi.azurenative.migrate.inputs.CollectorPropertiesArgs;
/// import com.pulumi.azurenative.migrate.inputs.CollectorAgentPropertiesArgs;
/// import com.pulumi.azurenative.migrate.inputs.CollectorBodyAgentSpnPropertiesArgs;
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
///         var vMwareCollector = new VMwareCollector("vMwareCollector", VMwareCollectorArgs.builder()
///             .eTag("\"01003d32-0000-0d00-0000-5d74d2e50000\"")
///             .projectName("abgoyalWEselfhostb72bproject")
///             .properties(CollectorPropertiesArgs.builder()
///                 .agentProperties(CollectorAgentPropertiesArgs.builder()
///                     .spnDetails(CollectorBodyAgentSpnPropertiesArgs.builder()
///                         .applicationId("fc717575-8173-4b21-92a5-658b655e613e")
///                         .audience("https://72f988bf-86f1-41af-91ab-2d7cd011db47/PortalvCenterbc2fagentauthaadapp")
///                         .authority("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47")
///                         .objectId("29d94f38-db94-4980-aec0-0cfd55ab1cd0")
///                         .tenantId("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                         .build())
///                     .build())
///                 .discoverySiteId("/subscriptions/6393a73f-8d55-47ef-b6dd-179b3e0c7910/resourceGroups/abgoyal-westEurope/providers/Microsoft.OffAzure/VMwareSites/PortalvCenterbc2fsite")
///                 .build())
///             .resourceGroupName("abgoyal-westEurope")
///             .vmWareCollectorName("PortalvCenterbc2fcollector")
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
/// const vMwareCollector = new azure_native.migrate.VMwareCollector("vMwareCollector", {
///     eTag: "\"01003d32-0000-0d00-0000-5d74d2e50000\"",
///     projectName: "abgoyalWEselfhostb72bproject",
///     properties: {
///         agentProperties: {
///             spnDetails: {
///                 applicationId: "fc717575-8173-4b21-92a5-658b655e613e",
///                 audience: "https://72f988bf-86f1-41af-91ab-2d7cd011db47/PortalvCenterbc2fagentauthaadapp",
///                 authority: "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 objectId: "29d94f38-db94-4980-aec0-0cfd55ab1cd0",
///                 tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///         },
///         discoverySiteId: "/subscriptions/6393a73f-8d55-47ef-b6dd-179b3e0c7910/resourceGroups/abgoyal-westEurope/providers/Microsoft.OffAzure/VMwareSites/PortalvCenterbc2fsite",
///     },
///     resourceGroupName: "abgoyal-westEurope",
///     vmWareCollectorName: "PortalvCenterbc2fcollector",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// v_mware_collector = azure_native.migrate.VMwareCollector("vMwareCollector",
///     e_tag="\"01003d32-0000-0d00-0000-5d74d2e50000\"",
///     project_name="abgoyalWEselfhostb72bproject",
///     properties={
///         "agent_properties": {
///             "spn_details": {
///                 "application_id": "fc717575-8173-4b21-92a5-658b655e613e",
///                 "audience": "https://72f988bf-86f1-41af-91ab-2d7cd011db47/PortalvCenterbc2fagentauthaadapp",
///                 "authority": "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 "object_id": "29d94f38-db94-4980-aec0-0cfd55ab1cd0",
///                 "tenant_id": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///         },
///         "discovery_site_id": "/subscriptions/6393a73f-8d55-47ef-b6dd-179b3e0c7910/resourceGroups/abgoyal-westEurope/providers/Microsoft.OffAzure/VMwareSites/PortalvCenterbc2fsite",
///     },
///     resource_group_name="abgoyal-westEurope",
///     vm_ware_collector_name="PortalvCenterbc2fcollector")
///
/// ```
///
/// ```yaml
/// resources:
///   vMwareCollector:
///     type: azure-native:migrate:VMwareCollector
///     properties:
///       eTag: '"01003d32-0000-0d00-0000-5d74d2e50000"'
///       projectName: abgoyalWEselfhostb72bproject
///       properties:
///         agentProperties:
///           spnDetails:
///             applicationId: fc717575-8173-4b21-92a5-658b655e613e
///             audience: https://72f988bf-86f1-41af-91ab-2d7cd011db47/PortalvCenterbc2fagentauthaadapp
///             authority: https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47
///             objectId: 29d94f38-db94-4980-aec0-0cfd55ab1cd0
///             tenantId: 72f988bf-86f1-41af-91ab-2d7cd011db47
///         discoverySiteId: /subscriptions/6393a73f-8d55-47ef-b6dd-179b3e0c7910/resourceGroups/abgoyal-westEurope/providers/Microsoft.OffAzure/VMwareSites/PortalvCenterbc2fsite
///       resourceGroupName: abgoyal-westEurope
///       vmWareCollectorName: PortalvCenterbc2fcollector
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
/// $ pulumi import azure-native:migrate:VMwareCollector PortalvCenterbc2fcollector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/vmwarecollectors/{vmWareCollectorName}
/// ```
class VMwareCollector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String?> eTag;
  late final pulumi.Output<String> name;
  late final pulumi.Output<CollectorPropertiesResponse> properties;
  late final pulumi.Output<String> type;

  /// Creates a new [VMwareCollector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VMwareCollector]. {@macro pulumi_migrate_vmware_collector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VMwareCollector(
    String name, {
    VMwareCollectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:VMwareCollector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CollectorPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CollectorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
