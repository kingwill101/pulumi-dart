import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_instance_args.dart';
import 'workload_instance_model_properties_response.dart';
import 'workload_instance_model_response_system_data.dart';

/// Workload instance model.
///
/// Uses Azure REST API version 2022-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkloadInstance_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadInstance = new AzureNative.Migrate.WorkloadInstance("workloadInstance", new()
///     {
///         ModernizeProjectName = "mx8",
///         Properties = new AzureNative.Migrate.Inputs.WorkloadInstanceModelPropertiesArgs
///         {
///             CustomProperties =
///             {
///                 { "instanceType", "IISWorkload" },
///                 { "webAppArmId", "xseseqsrzdiga" },
///                 { "webAppSiteName", "mirgzmy" },
///             },
///             DisplayName = "juoorbubchvk",
///             MasterSiteName = "ubks",
///             MigrateAgentId = "aqgzsxqbk",
///             Name = "wonkuhgsafzviuwqerzdmme",
///             SourceName = "weuxcqzwpeyzsjhdgqflhxlwjhbz",
///             SourcePlatform = "eh",
///         },
///         ResourceGroupName = "rgmigrateEngine",
///         Tags =
///         {
///             { "key2836", "biqip" },
///         },
///         WorkloadInstanceName = "m",
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
/// 		_, err := migrate.NewWorkloadInstance(ctx, "workloadInstance", &migrate.WorkloadInstanceArgs{
/// 			ModernizeProjectName: pulumi.String("mx8"),
/// 			Properties: &migrate.WorkloadInstanceModelPropertiesArgs{
/// 				CustomProperties: pulumi.Any{
/// 					InstanceType:   pulumi.String("IISWorkload"),
/// 					WebAppArmId:    pulumi.String("xseseqsrzdiga"),
/// 					WebAppSiteName: pulumi.String("mirgzmy"),
/// 				},
/// 				DisplayName:    pulumi.String("juoorbubchvk"),
/// 				MasterSiteName: pulumi.String("ubks"),
/// 				MigrateAgentId: pulumi.String("aqgzsxqbk"),
/// 				Name:           pulumi.String("wonkuhgsafzviuwqerzdmme"),
/// 				SourceName:     pulumi.String("weuxcqzwpeyzsjhdgqflhxlwjhbz"),
/// 				SourcePlatform: pulumi.String("eh"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgmigrateEngine"),
/// 			Tags: pulumi.StringMap{
/// 				"key2836": pulumi.String("biqip"),
/// 			},
/// 			WorkloadInstanceName: pulumi.String("m"),
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
/// import com.pulumi.azurenative.migrate.WorkloadInstance;
/// import com.pulumi.azurenative.migrate.WorkloadInstanceArgs;
/// import com.pulumi.azurenative.migrate.inputs.WorkloadInstanceModelPropertiesArgs;
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
///         var workloadInstance = new WorkloadInstance("workloadInstance", WorkloadInstanceArgs.builder()
///             .modernizeProjectName("mx8")
///             .properties(WorkloadInstanceModelPropertiesArgs.builder()
///                 .customProperties(Map.ofEntries(
///                     Map.entry("instanceType", "IISWorkload"),
///                     Map.entry("webAppArmId", "xseseqsrzdiga"),
///                     Map.entry("webAppSiteName", "mirgzmy")
///                 ))
///                 .displayName("juoorbubchvk")
///                 .masterSiteName("ubks")
///                 .migrateAgentId("aqgzsxqbk")
///                 .name("wonkuhgsafzviuwqerzdmme")
///                 .sourceName("weuxcqzwpeyzsjhdgqflhxlwjhbz")
///                 .sourcePlatform("eh")
///                 .build())
///             .resourceGroupName("rgmigrateEngine")
///             .tags(Map.of("key2836", "biqip"))
///             .workloadInstanceName("m")
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
/// const workloadInstance = new azure_native.migrate.WorkloadInstance("workloadInstance", {
///     modernizeProjectName: "mx8",
///     properties: {
///         customProperties: {
///             instanceType: "IISWorkload",
///             webAppArmId: "xseseqsrzdiga",
///             webAppSiteName: "mirgzmy",
///         },
///         displayName: "juoorbubchvk",
///         masterSiteName: "ubks",
///         migrateAgentId: "aqgzsxqbk",
///         name: "wonkuhgsafzviuwqerzdmme",
///         sourceName: "weuxcqzwpeyzsjhdgqflhxlwjhbz",
///         sourcePlatform: "eh",
///     },
///     resourceGroupName: "rgmigrateEngine",
///     tags: {
///         key2836: "biqip",
///     },
///     workloadInstanceName: "m",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_instance = azure_native.migrate.WorkloadInstance("workloadInstance",
///     modernize_project_name="mx8",
///     properties={
///         "custom_properties": {
///             "instance_type": "IISWorkload",
///             "web_app_arm_id": "xseseqsrzdiga",
///             "web_app_site_name": "mirgzmy",
///         },
///         "display_name": "juoorbubchvk",
///         "master_site_name": "ubks",
///         "migrate_agent_id": "aqgzsxqbk",
///         "name": "wonkuhgsafzviuwqerzdmme",
///         "source_name": "weuxcqzwpeyzsjhdgqflhxlwjhbz",
///         "source_platform": "eh",
///     },
///     resource_group_name="rgmigrateEngine",
///     tags={
///         "key2836": "biqip",
///     },
///     workload_instance_name="m")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadInstance:
///     type: azure-native:migrate:WorkloadInstance
///     properties:
///       modernizeProjectName: mx8
///       properties:
///         customProperties:
///           instanceType: IISWorkload
///           webAppArmId: xseseqsrzdiga
///           webAppSiteName: mirgzmy
///         displayName: juoorbubchvk
///         masterSiteName: ubks
///         migrateAgentId: aqgzsxqbk
///         name: wonkuhgsafzviuwqerzdmme
///         sourceName: weuxcqzwpeyzsjhdgqflhxlwjhbz
///         sourcePlatform: eh
///       resourceGroupName: rgmigrateEngine
///       tags:
///         key2836: biqip
///       workloadInstanceName: m
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### WorkloadInstance_Create_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadInstance = new AzureNative.Migrate.WorkloadInstance("workloadInstance", new()
///     {
///         ModernizeProjectName = "tv39",
///         ResourceGroupName = "rgmigrateEngine",
///         WorkloadInstanceName = "io",
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
/// 		_, err := migrate.NewWorkloadInstance(ctx, "workloadInstance", &migrate.WorkloadInstanceArgs{
/// 			ModernizeProjectName: pulumi.String("tv39"),
/// 			ResourceGroupName:    pulumi.String("rgmigrateEngine"),
/// 			WorkloadInstanceName: pulumi.String("io"),
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
/// import com.pulumi.azurenative.migrate.WorkloadInstance;
/// import com.pulumi.azurenative.migrate.WorkloadInstanceArgs;
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
///         var workloadInstance = new WorkloadInstance("workloadInstance", WorkloadInstanceArgs.builder()
///             .modernizeProjectName("tv39")
///             .resourceGroupName("rgmigrateEngine")
///             .workloadInstanceName("io")
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
/// const workloadInstance = new azure_native.migrate.WorkloadInstance("workloadInstance", {
///     modernizeProjectName: "tv39",
///     resourceGroupName: "rgmigrateEngine",
///     workloadInstanceName: "io",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_instance = azure_native.migrate.WorkloadInstance("workloadInstance",
///     modernize_project_name="tv39",
///     resource_group_name="rgmigrateEngine",
///     workload_instance_name="io")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadInstance:
///     type: azure-native:migrate:WorkloadInstance
///     properties:
///       modernizeProjectName: tv39
///       resourceGroupName: rgmigrateEngine
///       workloadInstanceName: io
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
/// $ pulumi import azure-native:migrate:WorkloadInstance piu /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/modernizeProjects/{modernizeProjectName}/workloadInstances/{workloadInstanceName}
/// ```
class WorkloadInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets or sets the name of the resource.
  late final pulumi.Output<String> name;

  /// Workload instance model properties.
  late final pulumi.Output<WorkloadInstanceModelPropertiesResponse> properties;
  late final pulumi.Output<WorkloadInstanceModelResponseSystemData> systemData;

  /// Gets or sets the resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [WorkloadInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadInstance]. {@macro pulumi_migrate_workload_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadInstance(
    String name, {
    WorkloadInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:WorkloadInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<WorkloadInstanceModelPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WorkloadInstanceModelPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<WorkloadInstanceModelResponseSystemData>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WorkloadInstanceModelResponseSystemData.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
