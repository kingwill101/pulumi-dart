import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_properties_response.dart';
import 'hyper_vcollector_args.dart';

/// Uses Azure REST API version 2019-10-01. In version 2.x of the Azure Native provider, it used API version 2019-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### HyperVCollectors_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hyperVCollector = new AzureNative.Migrate.HyperVCollector("hyperVCollector", new()
///     {
///         ETag = "\"00000981-0000-0300-0000-5d74cd5f0000\"",
///         HyperVCollectorName = "migrateprojectce73collector",
///         ProjectName = "migrateprojectce73project",
///         Properties = new AzureNative.Migrate.Inputs.CollectorPropertiesArgs
///         {
///             AgentProperties = new AzureNative.Migrate.Inputs.CollectorAgentPropertiesArgs
///             {
///                 SpnDetails = new AzureNative.Migrate.Inputs.CollectorBodyAgentSpnPropertiesArgs
///                 {
///                     ApplicationId = "827f1053-44dc-439f-b832-05416dcce12b",
///                     Audience = "https://72f988bf-86f1-41af-91ab-2d7cd011db47/migrateprojectce73agentauthaadapp",
///                     Authority = "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                     ObjectId = "be75098e-c0fc-4ac4-98c7-282ebbcf8370",
///                     TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 },
///             },
///             DiscoverySiteId = "/subscriptions/8c3c936a-c09b-4de3-830b-3f5f244d72e9/resourceGroups/ContosoITHyperV/providers/Microsoft.OffAzure/HyperVSites/migrateprojectce73site",
///         },
///         ResourceGroupName = "contosoithyperv",
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
/// 		_, err := migrate.NewHyperVCollector(ctx, "hyperVCollector", &migrate.HyperVCollectorArgs{
/// 			ETag:                pulumi.String("\"00000981-0000-0300-0000-5d74cd5f0000\""),
/// 			HyperVCollectorName: pulumi.String("migrateprojectce73collector"),
/// 			ProjectName:         pulumi.String("migrateprojectce73project"),
/// 			Properties: &migrate.CollectorPropertiesArgs{
/// 				AgentProperties: &migrate.CollectorAgentPropertiesArgs{
/// 					SpnDetails: &migrate.CollectorBodyAgentSpnPropertiesArgs{
/// 						ApplicationId: pulumi.String("827f1053-44dc-439f-b832-05416dcce12b"),
/// 						Audience:      pulumi.String("https://72f988bf-86f1-41af-91ab-2d7cd011db47/migrateprojectce73agentauthaadapp"),
/// 						Authority:     pulumi.String("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 						ObjectId:      pulumi.String("be75098e-c0fc-4ac4-98c7-282ebbcf8370"),
/// 						TenantId:      pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 					},
/// 				},
/// 				DiscoverySiteId: pulumi.String("/subscriptions/8c3c936a-c09b-4de3-830b-3f5f244d72e9/resourceGroups/ContosoITHyperV/providers/Microsoft.OffAzure/HyperVSites/migrateprojectce73site"),
/// 			},
/// 			ResourceGroupName: pulumi.String("contosoithyperv"),
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
/// import com.pulumi.azurenative.migrate.HyperVCollector;
/// import com.pulumi.azurenative.migrate.HyperVCollectorArgs;
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
///         var hyperVCollector = new HyperVCollector("hyperVCollector", HyperVCollectorArgs.builder()
///             .eTag("\"00000981-0000-0300-0000-5d74cd5f0000\"")
///             .hyperVCollectorName("migrateprojectce73collector")
///             .projectName("migrateprojectce73project")
///             .properties(CollectorPropertiesArgs.builder()
///                 .agentProperties(CollectorAgentPropertiesArgs.builder()
///                     .spnDetails(CollectorBodyAgentSpnPropertiesArgs.builder()
///                         .applicationId("827f1053-44dc-439f-b832-05416dcce12b")
///                         .audience("https://72f988bf-86f1-41af-91ab-2d7cd011db47/migrateprojectce73agentauthaadapp")
///                         .authority("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47")
///                         .objectId("be75098e-c0fc-4ac4-98c7-282ebbcf8370")
///                         .tenantId("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                         .build())
///                     .build())
///                 .discoverySiteId("/subscriptions/8c3c936a-c09b-4de3-830b-3f5f244d72e9/resourceGroups/ContosoITHyperV/providers/Microsoft.OffAzure/HyperVSites/migrateprojectce73site")
///                 .build())
///             .resourceGroupName("contosoithyperv")
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
/// const hyperVCollector = new azure_native.migrate.HyperVCollector("hyperVCollector", {
///     eTag: "\"00000981-0000-0300-0000-5d74cd5f0000\"",
///     hyperVCollectorName: "migrateprojectce73collector",
///     projectName: "migrateprojectce73project",
///     properties: {
///         agentProperties: {
///             spnDetails: {
///                 applicationId: "827f1053-44dc-439f-b832-05416dcce12b",
///                 audience: "https://72f988bf-86f1-41af-91ab-2d7cd011db47/migrateprojectce73agentauthaadapp",
///                 authority: "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 objectId: "be75098e-c0fc-4ac4-98c7-282ebbcf8370",
///                 tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///         },
///         discoverySiteId: "/subscriptions/8c3c936a-c09b-4de3-830b-3f5f244d72e9/resourceGroups/ContosoITHyperV/providers/Microsoft.OffAzure/HyperVSites/migrateprojectce73site",
///     },
///     resourceGroupName: "contosoithyperv",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hyper_v_collector = azure_native.migrate.HyperVCollector("hyperVCollector",
///     e_tag="\"00000981-0000-0300-0000-5d74cd5f0000\"",
///     hyper_v_collector_name="migrateprojectce73collector",
///     project_name="migrateprojectce73project",
///     properties={
///         "agent_properties": {
///             "spn_details": {
///                 "application_id": "827f1053-44dc-439f-b832-05416dcce12b",
///                 "audience": "https://72f988bf-86f1-41af-91ab-2d7cd011db47/migrateprojectce73agentauthaadapp",
///                 "authority": "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 "object_id": "be75098e-c0fc-4ac4-98c7-282ebbcf8370",
///                 "tenant_id": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///         },
///         "discovery_site_id": "/subscriptions/8c3c936a-c09b-4de3-830b-3f5f244d72e9/resourceGroups/ContosoITHyperV/providers/Microsoft.OffAzure/HyperVSites/migrateprojectce73site",
///     },
///     resource_group_name="contosoithyperv")
///
/// ```
///
/// ```yaml
/// resources:
///   hyperVCollector:
///     type: azure-native:migrate:HyperVCollector
///     properties:
///       eTag: '"00000981-0000-0300-0000-5d74cd5f0000"'
///       hyperVCollectorName: migrateprojectce73collector
///       projectName: migrateprojectce73project
///       properties:
///         agentProperties:
///           spnDetails:
///             applicationId: 827f1053-44dc-439f-b832-05416dcce12b
///             audience: https://72f988bf-86f1-41af-91ab-2d7cd011db47/migrateprojectce73agentauthaadapp
///             authority: https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47
///             objectId: be75098e-c0fc-4ac4-98c7-282ebbcf8370
///             tenantId: 72f988bf-86f1-41af-91ab-2d7cd011db47
///         discoverySiteId: /subscriptions/8c3c936a-c09b-4de3-830b-3f5f244d72e9/resourceGroups/ContosoITHyperV/providers/Microsoft.OffAzure/HyperVSites/migrateprojectce73site
///       resourceGroupName: contosoithyperv
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
/// $ pulumi import azure-native:migrate:HyperVCollector migrateprojectce73collector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/hypervcollectors/{hyperVCollectorName}
/// ```
class HyperVCollector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String?> eTag;
  late final pulumi.Output<String> name;
  late final pulumi.Output<CollectorPropertiesResponse> properties;
  late final pulumi.Output<String> type;

  /// Creates a new [HyperVCollector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HyperVCollector]. {@macro pulumi_migrate_hyper_vcollector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HyperVCollector(
    String name, {
    HyperVCollectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:HyperVCollector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CollectorPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CollectorPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
