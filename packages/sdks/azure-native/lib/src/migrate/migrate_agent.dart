import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_agent_args.dart';
import 'migrate_agent_model_properties_response.dart';
import 'migrate_agent_model_response_system_data.dart';

/// MigrateAgent model.
///
/// Uses Azure REST API version 2022-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MigrateAgent_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migrateAgent = new AzureNative.Migrate.MigrateAgent("migrateAgent", new()
///     {
///         AgentName = "l",
///         ModernizeProjectName = "rq1yec",
///         Properties = new AzureNative.Migrate.Inputs.MigrateAgentModelPropertiesArgs
///         {
///             AuthenticationIdentity = new AzureNative.Migrate.Inputs.IdentityModelArgs
///             {
///                 AadAuthority = "isbicanvfefdaci",
///                 ApplicationId = "dibfqwjrnzikktkwe",
///                 Audience = "yrfxszjhkczoyfi",
///                 ObjectId = "xfhhdosr",
///                 TenantId = "uwceuawplakwjswbvllffbsz",
///             },
///             CustomProperties = null,
///             MachineId = "sihoniqzqfz",
///             MachineName = "glhejppirkiamgxxro",
///         },
///         ResourceGroupName = "rgmigrateEngine",
///         Tags =
///         {
///             { "key5560", "jgffrfcgjrm" },
///         },
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
/// 		_, err := migrate.NewMigrateAgent(ctx, "migrateAgent", &migrate.MigrateAgentArgs{
/// 			AgentName:            pulumi.String("l"),
/// 			ModernizeProjectName: pulumi.String("rq1yec"),
/// 			Properties: &migrate.MigrateAgentModelPropertiesArgs{
/// 				AuthenticationIdentity: &migrate.IdentityModelArgs{
/// 					AadAuthority:  pulumi.String("isbicanvfefdaci"),
/// 					ApplicationId: pulumi.String("dibfqwjrnzikktkwe"),
/// 					Audience:      pulumi.String("yrfxszjhkczoyfi"),
/// 					ObjectId:      pulumi.String("xfhhdosr"),
/// 					TenantId:      pulumi.String("uwceuawplakwjswbvllffbsz"),
/// 				},
/// 				CustomProperties: &migrate.VMwareMigrateAgentModelCustomPropertiesArgs{},
/// 				MachineId:        pulumi.String("sihoniqzqfz"),
/// 				MachineName:      pulumi.String("glhejppirkiamgxxro"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgmigrateEngine"),
/// 			Tags: pulumi.StringMap{
/// 				"key5560": pulumi.String("jgffrfcgjrm"),
/// 			},
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
/// import com.pulumi.azurenative.migrate.MigrateAgent;
/// import com.pulumi.azurenative.migrate.MigrateAgentArgs;
/// import com.pulumi.azurenative.migrate.inputs.MigrateAgentModelPropertiesArgs;
/// import com.pulumi.azurenative.migrate.inputs.IdentityModelArgs;
/// import com.pulumi.azurenative.migrate.inputs.VMwareMigrateAgentModelCustomPropertiesArgs;
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
///         var migrateAgent = new MigrateAgent("migrateAgent", MigrateAgentArgs.builder()
///             .agentName("l")
///             .modernizeProjectName("rq1yec")
///             .properties(MigrateAgentModelPropertiesArgs.builder()
///                 .authenticationIdentity(IdentityModelArgs.builder()
///                     .aadAuthority("isbicanvfefdaci")
///                     .applicationId("dibfqwjrnzikktkwe")
///                     .audience("yrfxszjhkczoyfi")
///                     .objectId("xfhhdosr")
///                     .tenantId("uwceuawplakwjswbvllffbsz")
///                     .build())
///                 .customProperties(VMwareMigrateAgentModelCustomPropertiesArgs.builder()
///                     .build())
///                 .machineId("sihoniqzqfz")
///                 .machineName("glhejppirkiamgxxro")
///                 .build())
///             .resourceGroupName("rgmigrateEngine")
///             .tags(Map.of("key5560", "jgffrfcgjrm"))
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
/// const migrateAgent = new azure_native.migrate.MigrateAgent("migrateAgent", {
///     agentName: "l",
///     modernizeProjectName: "rq1yec",
///     properties: {
///         authenticationIdentity: {
///             aadAuthority: "isbicanvfefdaci",
///             applicationId: "dibfqwjrnzikktkwe",
///             audience: "yrfxszjhkczoyfi",
///             objectId: "xfhhdosr",
///             tenantId: "uwceuawplakwjswbvllffbsz",
///         },
///         customProperties: {},
///         machineId: "sihoniqzqfz",
///         machineName: "glhejppirkiamgxxro",
///     },
///     resourceGroupName: "rgmigrateEngine",
///     tags: {
///         key5560: "jgffrfcgjrm",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migrate_agent = azure_native.migrate.MigrateAgent("migrateAgent",
///     agent_name="l",
///     modernize_project_name="rq1yec",
///     properties={
///         "authentication_identity": {
///             "aad_authority": "isbicanvfefdaci",
///             "application_id": "dibfqwjrnzikktkwe",
///             "audience": "yrfxszjhkczoyfi",
///             "object_id": "xfhhdosr",
///             "tenant_id": "uwceuawplakwjswbvllffbsz",
///         },
///         "custom_properties": {},
///         "machine_id": "sihoniqzqfz",
///         "machine_name": "glhejppirkiamgxxro",
///     },
///     resource_group_name="rgmigrateEngine",
///     tags={
///         "key5560": "jgffrfcgjrm",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   migrateAgent:
///     type: azure-native:migrate:MigrateAgent
///     properties:
///       agentName: l
///       modernizeProjectName: rq1yec
///       properties:
///         authenticationIdentity:
///           aadAuthority: isbicanvfefdaci
///           applicationId: dibfqwjrnzikktkwe
///           audience: yrfxszjhkczoyfi
///           objectId: xfhhdosr
///           tenantId: uwceuawplakwjswbvllffbsz
///         customProperties: {}
///         machineId: sihoniqzqfz
///         machineName: glhejppirkiamgxxro
///       resourceGroupName: rgmigrateEngine
///       tags:
///         key5560: jgffrfcgjrm
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### MigrateAgent_Create_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migrateAgent = new AzureNative.Migrate.MigrateAgent("migrateAgent", new()
///     {
///         AgentName = "e85v",
///         ModernizeProjectName = "l77ak",
///         ResourceGroupName = "rgmigrateEngine",
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
/// 		_, err := migrate.NewMigrateAgent(ctx, "migrateAgent", &migrate.MigrateAgentArgs{
/// 			AgentName:            pulumi.String("e85v"),
/// 			ModernizeProjectName: pulumi.String("l77ak"),
/// 			ResourceGroupName:    pulumi.String("rgmigrateEngine"),
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
/// import com.pulumi.azurenative.migrate.MigrateAgent;
/// import com.pulumi.azurenative.migrate.MigrateAgentArgs;
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
///         var migrateAgent = new MigrateAgent("migrateAgent", MigrateAgentArgs.builder()
///             .agentName("e85v")
///             .modernizeProjectName("l77ak")
///             .resourceGroupName("rgmigrateEngine")
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
/// const migrateAgent = new azure_native.migrate.MigrateAgent("migrateAgent", {
///     agentName: "e85v",
///     modernizeProjectName: "l77ak",
///     resourceGroupName: "rgmigrateEngine",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migrate_agent = azure_native.migrate.MigrateAgent("migrateAgent",
///     agent_name="e85v",
///     modernize_project_name="l77ak",
///     resource_group_name="rgmigrateEngine")
///
/// ```
///
/// ```yaml
/// resources:
///   migrateAgent:
///     type: azure-native:migrate:MigrateAgent
///     properties:
///       agentName: e85v
///       modernizeProjectName: l77ak
///       resourceGroupName: rgmigrateEngine
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
/// $ pulumi import azure-native:migrate:MigrateAgent icysfvhjjgwhxx /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/modernizeProjects/{modernizeProjectName}/migrateAgents/{agentName}
/// ```
class MigrateAgent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the name of the resource.
  late final pulumi.Output<String> name;
  /// MigrateAgent model properties.
  late final pulumi.Output<MigrateAgentModelPropertiesResponse> properties;
  late final pulumi.Output<MigrateAgentModelResponseSystemData> systemData;
  /// Gets or sets the resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [MigrateAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MigrateAgent]. {@macro pulumi_migrate_migrate_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MigrateAgent(
    String name, {
    MigrateAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:MigrateAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<MigrateAgentModelPropertiesResponse>('properties');
    this.systemData = registerOutput<MigrateAgentModelResponseSystemData>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
