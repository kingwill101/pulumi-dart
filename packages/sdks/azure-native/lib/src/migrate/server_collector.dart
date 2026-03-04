import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_properties_response.dart';
import 'server_collector_args.dart';

/// Uses Azure REST API version 2019-10-01. In version 2.x of the Azure Native provider, it used API version 2019-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ServerCollectors_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverCollector = new AzureNative.Migrate.ServerCollector("serverCollector", new()
///     {
///         ETag = "\"00000606-0000-0d00-0000-605999bf0000\"",
///         ProjectName = "app11141project",
///         Properties = new AzureNative.Migrate.Inputs.CollectorPropertiesArgs
///         {
///             AgentProperties = new AzureNative.Migrate.Inputs.CollectorAgentPropertiesArgs
///             {
///                 SpnDetails = new AzureNative.Migrate.Inputs.CollectorBodyAgentSpnPropertiesArgs
///                 {
///                     ApplicationId = "ad9f701a-cc08-4421-b51f-b5762d58e9ba",
///                     Audience = "https://72f988bf-86f1-41af-91ab-2d7cd011db47/app23df4authandaccessaadapp",
///                     Authority = "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                     ObjectId = "b4975e42-9248-4a36-b99f-37eca377ea00",
///                     TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 },
///             },
///             DiscoverySiteId = "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/pajindTest/providers/Microsoft.OffAzure/ServerSites/app21141site",
///         },
///         ResourceGroupName = "pajindtest",
///         ServerCollectorName = "app23df4collector",
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
/// 		_, err := migrate.NewServerCollector(ctx, "serverCollector", &migrate.ServerCollectorArgs{
/// 			ETag:        pulumi.String("\"00000606-0000-0d00-0000-605999bf0000\""),
/// 			ProjectName: pulumi.String("app11141project"),
/// 			Properties: &migrate.CollectorPropertiesArgs{
/// 				AgentProperties: &migrate.CollectorAgentPropertiesArgs{
/// 					SpnDetails: &migrate.CollectorBodyAgentSpnPropertiesArgs{
/// 						ApplicationId: pulumi.String("ad9f701a-cc08-4421-b51f-b5762d58e9ba"),
/// 						Audience:      pulumi.String("https://72f988bf-86f1-41af-91ab-2d7cd011db47/app23df4authandaccessaadapp"),
/// 						Authority:     pulumi.String("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 						ObjectId:      pulumi.String("b4975e42-9248-4a36-b99f-37eca377ea00"),
/// 						TenantId:      pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 					},
/// 				},
/// 				DiscoverySiteId: pulumi.String("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/pajindTest/providers/Microsoft.OffAzure/ServerSites/app21141site"),
/// 			},
/// 			ResourceGroupName:   pulumi.String("pajindtest"),
/// 			ServerCollectorName: pulumi.String("app23df4collector"),
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
/// import com.pulumi.azurenative.migrate.ServerCollector;
/// import com.pulumi.azurenative.migrate.ServerCollectorArgs;
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
///         var serverCollector = new ServerCollector("serverCollector", ServerCollectorArgs.builder()
///             .eTag("\"00000606-0000-0d00-0000-605999bf0000\"")
///             .projectName("app11141project")
///             .properties(CollectorPropertiesArgs.builder()
///                 .agentProperties(CollectorAgentPropertiesArgs.builder()
///                     .spnDetails(CollectorBodyAgentSpnPropertiesArgs.builder()
///                         .applicationId("ad9f701a-cc08-4421-b51f-b5762d58e9ba")
///                         .audience("https://72f988bf-86f1-41af-91ab-2d7cd011db47/app23df4authandaccessaadapp")
///                         .authority("https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47")
///                         .objectId("b4975e42-9248-4a36-b99f-37eca377ea00")
///                         .tenantId("72f988bf-86f1-41af-91ab-2d7cd011db47")
///                         .build())
///                     .build())
///                 .discoverySiteId("/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/pajindTest/providers/Microsoft.OffAzure/ServerSites/app21141site")
///                 .build())
///             .resourceGroupName("pajindtest")
///             .serverCollectorName("app23df4collector")
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
/// const serverCollector = new azure_native.migrate.ServerCollector("serverCollector", {
///     eTag: "\"00000606-0000-0d00-0000-605999bf0000\"",
///     projectName: "app11141project",
///     properties: {
///         agentProperties: {
///             spnDetails: {
///                 applicationId: "ad9f701a-cc08-4421-b51f-b5762d58e9ba",
///                 audience: "https://72f988bf-86f1-41af-91ab-2d7cd011db47/app23df4authandaccessaadapp",
///                 authority: "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 objectId: "b4975e42-9248-4a36-b99f-37eca377ea00",
///                 tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///         },
///         discoverySiteId: "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/pajindTest/providers/Microsoft.OffAzure/ServerSites/app21141site",
///     },
///     resourceGroupName: "pajindtest",
///     serverCollectorName: "app23df4collector",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_collector = azure_native.migrate.ServerCollector("serverCollector",
///     e_tag="\"00000606-0000-0d00-0000-605999bf0000\"",
///     project_name="app11141project",
///     properties={
///         "agent_properties": {
///             "spn_details": {
///                 "application_id": "ad9f701a-cc08-4421-b51f-b5762d58e9ba",
///                 "audience": "https://72f988bf-86f1-41af-91ab-2d7cd011db47/app23df4authandaccessaadapp",
///                 "authority": "https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47",
///                 "object_id": "b4975e42-9248-4a36-b99f-37eca377ea00",
///                 "tenant_id": "72f988bf-86f1-41af-91ab-2d7cd011db47",
///             },
///         },
///         "discovery_site_id": "/subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/pajindTest/providers/Microsoft.OffAzure/ServerSites/app21141site",
///     },
///     resource_group_name="pajindtest",
///     server_collector_name="app23df4collector")
///
/// ```
///
/// ```yaml
/// resources:
///   serverCollector:
///     type: azure-native:migrate:ServerCollector
///     properties:
///       eTag: '"00000606-0000-0d00-0000-605999bf0000"'
///       projectName: app11141project
///       properties:
///         agentProperties:
///           spnDetails:
///             applicationId: ad9f701a-cc08-4421-b51f-b5762d58e9ba
///             audience: https://72f988bf-86f1-41af-91ab-2d7cd011db47/app23df4authandaccessaadapp
///             authority: https://login.windows.net/72f988bf-86f1-41af-91ab-2d7cd011db47
///             objectId: b4975e42-9248-4a36-b99f-37eca377ea00
///             tenantId: 72f988bf-86f1-41af-91ab-2d7cd011db47
///         discoverySiteId: /subscriptions/4bd2aa0f-2bd2-4d67-91a8-5a4533d58600/resourceGroups/pajindTest/providers/Microsoft.OffAzure/ServerSites/app21141site
///       resourceGroupName: pajindtest
///       serverCollectorName: app23df4collector
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
/// $ pulumi import azure-native:migrate:ServerCollector app23df4collector /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/servercollectors/{serverCollectorName}
/// ```
class ServerCollector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String?> eTag;
  late final pulumi.Output<String> name;
  late final pulumi.Output<CollectorPropertiesResponse> properties;
  late final pulumi.Output<String> type;

  /// Creates a new [ServerCollector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerCollector]. {@macro pulumi_migrate_server_collector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerCollector(
    String name, {
    ServerCollectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:ServerCollector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CollectorPropertiesResponse>('properties');
    type = registerOutput<String>('type');
  }
}
