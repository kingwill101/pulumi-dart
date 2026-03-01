import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_deployment_args.dart';
import 'workload_deployment_model_properties_response.dart';
import 'workload_deployment_model_response_system_data.dart';

/// Workload deployment model.
///
/// Uses Azure REST API version 2022-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkloadDeployment_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadDeployment = new AzureNative.Migrate.WorkloadDeployment("workloadDeployment", new()
///     {
///         ModernizeProjectName = "l6r8",
///         Properties = new AzureNative.Migrate.Inputs.WorkloadDeploymentModelPropertiesArgs
///         {
///             CustomProperties =
///             {
///                 { "instanceType", "IISAKSWorkloadDeployment" },
///             },
///             DisplayName = "wqe",
///             TargetPlatform = AzureNative.Migrate.WorkloadDeploymentTarget.AzureKubernetesService,
///             WorkloadInstanceProperties = new AzureNative.Migrate.Inputs.WorkloadInstanceModelPropertiesArgs
///             {
///                 CustomProperties =
///                 {
///                     { "instanceType", "IISWorkload" },
///                     { "webAppArmId", "xseseqsrzdiga" },
///                     { "webAppSiteName", "mirgzmy" },
///                 },
///                 DisplayName = "juoorbubchvk",
///                 MasterSiteName = "ubks",
///                 MigrateAgentId = "aqgzsxqbk",
///                 Name = "wonkuhgsafzviuwqerzdmme",
///                 SourceName = "weuxcqzwpeyzsjhdgqflhxlwjhbz",
///                 SourcePlatform = "eh",
///             },
///         },
///         ResourceGroupName = "rgmigrateEngine",
///         Tags =
///         {
///             { "key8241", "gcyxztzr" },
///         },
///         WorkloadDeploymentName = "l4t",
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
/// 		_, err := migrate.NewWorkloadDeployment(ctx, "workloadDeployment", &migrate.WorkloadDeploymentArgs{
/// 			ModernizeProjectName: pulumi.String("l6r8"),
/// 			Properties: &migrate.WorkloadDeploymentModelPropertiesArgs{
/// 				CustomProperties: pulumi.Any{
/// 					InstanceType: pulumi.String("IISAKSWorkloadDeployment"),
/// 				},
/// 				DisplayName:    pulumi.String("wqe"),
/// 				TargetPlatform: pulumi.String(migrate.WorkloadDeploymentTargetAzureKubernetesService),
/// 				WorkloadInstanceProperties: &migrate.WorkloadInstanceModelPropertiesArgs{
/// 					CustomProperties: pulumi.Any{
/// 						InstanceType:   pulumi.String("IISWorkload"),
/// 						WebAppArmId:    pulumi.String("xseseqsrzdiga"),
/// 						WebAppSiteName: pulumi.String("mirgzmy"),
/// 					},
/// 					DisplayName:    pulumi.String("juoorbubchvk"),
/// 					MasterSiteName: pulumi.String("ubks"),
/// 					MigrateAgentId: pulumi.String("aqgzsxqbk"),
/// 					Name:           pulumi.String("wonkuhgsafzviuwqerzdmme"),
/// 					SourceName:     pulumi.String("weuxcqzwpeyzsjhdgqflhxlwjhbz"),
/// 					SourcePlatform: pulumi.String("eh"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgmigrateEngine"),
/// 			Tags: pulumi.StringMap{
/// 				"key8241": pulumi.String("gcyxztzr"),
/// 			},
/// 			WorkloadDeploymentName: pulumi.String("l4t"),
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
/// import com.pulumi.azurenative.migrate.WorkloadDeployment;
/// import com.pulumi.azurenative.migrate.WorkloadDeploymentArgs;
/// import com.pulumi.azurenative.migrate.inputs.WorkloadDeploymentModelPropertiesArgs;
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
///         var workloadDeployment = new WorkloadDeployment("workloadDeployment", WorkloadDeploymentArgs.builder()
///             .modernizeProjectName("l6r8")
///             .properties(WorkloadDeploymentModelPropertiesArgs.builder()
///                 .customProperties(Map.of("instanceType", "IISAKSWorkloadDeployment"))
///                 .displayName("wqe")
///                 .targetPlatform("AzureKubernetesService")
///                 .workloadInstanceProperties(WorkloadInstanceModelPropertiesArgs.builder()
///                     .customProperties(Map.ofEntries(
///                         Map.entry("instanceType", "IISWorkload"),
///                         Map.entry("webAppArmId", "xseseqsrzdiga"),
///                         Map.entry("webAppSiteName", "mirgzmy")
///                     ))
///                     .displayName("juoorbubchvk")
///                     .masterSiteName("ubks")
///                     .migrateAgentId("aqgzsxqbk")
///                     .name("wonkuhgsafzviuwqerzdmme")
///                     .sourceName("weuxcqzwpeyzsjhdgqflhxlwjhbz")
///                     .sourcePlatform("eh")
///                     .build())
///                 .build())
///             .resourceGroupName("rgmigrateEngine")
///             .tags(Map.of("key8241", "gcyxztzr"))
///             .workloadDeploymentName("l4t")
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
/// const workloadDeployment = new azure_native.migrate.WorkloadDeployment("workloadDeployment", {
///     modernizeProjectName: "l6r8",
///     properties: {
///         customProperties: {
///             instanceType: "IISAKSWorkloadDeployment",
///         },
///         displayName: "wqe",
///         targetPlatform: azure_native.migrate.WorkloadDeploymentTarget.AzureKubernetesService,
///         workloadInstanceProperties: {
///             customProperties: {
///                 instanceType: "IISWorkload",
///                 webAppArmId: "xseseqsrzdiga",
///                 webAppSiteName: "mirgzmy",
///             },
///             displayName: "juoorbubchvk",
///             masterSiteName: "ubks",
///             migrateAgentId: "aqgzsxqbk",
///             name: "wonkuhgsafzviuwqerzdmme",
///             sourceName: "weuxcqzwpeyzsjhdgqflhxlwjhbz",
///             sourcePlatform: "eh",
///         },
///     },
///     resourceGroupName: "rgmigrateEngine",
///     tags: {
///         key8241: "gcyxztzr",
///     },
///     workloadDeploymentName: "l4t",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_deployment = azure_native.migrate.WorkloadDeployment("workloadDeployment",
///     modernize_project_name="l6r8",
///     properties={
///         "custom_properties": {
///             "instance_type": "IISAKSWorkloadDeployment",
///         },
///         "display_name": "wqe",
///         "target_platform": azure_native.migrate.WorkloadDeploymentTarget.AZURE_KUBERNETES_SERVICE,
///         "workload_instance_properties": {
///             "custom_properties": {
///                 "instance_type": "IISWorkload",
///                 "web_app_arm_id": "xseseqsrzdiga",
///                 "web_app_site_name": "mirgzmy",
///             },
///             "display_name": "juoorbubchvk",
///             "master_site_name": "ubks",
///             "migrate_agent_id": "aqgzsxqbk",
///             "name": "wonkuhgsafzviuwqerzdmme",
///             "source_name": "weuxcqzwpeyzsjhdgqflhxlwjhbz",
///             "source_platform": "eh",
///         },
///     },
///     resource_group_name="rgmigrateEngine",
///     tags={
///         "key8241": "gcyxztzr",
///     },
///     workload_deployment_name="l4t")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadDeployment:
///     type: azure-native:migrate:WorkloadDeployment
///     properties:
///       modernizeProjectName: l6r8
///       properties:
///         customProperties:
///           instanceType: IISAKSWorkloadDeployment
///         displayName: wqe
///         targetPlatform: AzureKubernetesService
///         workloadInstanceProperties:
///           customProperties:
///             instanceType: IISWorkload
///             webAppArmId: xseseqsrzdiga
///             webAppSiteName: mirgzmy
///           displayName: juoorbubchvk
///           masterSiteName: ubks
///           migrateAgentId: aqgzsxqbk
///           name: wonkuhgsafzviuwqerzdmme
///           sourceName: weuxcqzwpeyzsjhdgqflhxlwjhbz
///           sourcePlatform: eh
///       resourceGroupName: rgmigrateEngine
///       tags:
///         key8241: gcyxztzr
///       workloadDeploymentName: l4t
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### WorkloadDeployment_Create_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadDeployment = new AzureNative.Migrate.WorkloadDeployment("workloadDeployment", new()
///     {
///         ModernizeProjectName = "tc",
///         ResourceGroupName = "rgmigrateEngine",
///         WorkloadDeploymentName = "wo2rs4",
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
/// 		_, err := migrate.NewWorkloadDeployment(ctx, "workloadDeployment", &migrate.WorkloadDeploymentArgs{
/// 			ModernizeProjectName:   pulumi.String("tc"),
/// 			ResourceGroupName:      pulumi.String("rgmigrateEngine"),
/// 			WorkloadDeploymentName: pulumi.String("wo2rs4"),
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
/// import com.pulumi.azurenative.migrate.WorkloadDeployment;
/// import com.pulumi.azurenative.migrate.WorkloadDeploymentArgs;
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
///         var workloadDeployment = new WorkloadDeployment("workloadDeployment", WorkloadDeploymentArgs.builder()
///             .modernizeProjectName("tc")
///             .resourceGroupName("rgmigrateEngine")
///             .workloadDeploymentName("wo2rs4")
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
/// const workloadDeployment = new azure_native.migrate.WorkloadDeployment("workloadDeployment", {
///     modernizeProjectName: "tc",
///     resourceGroupName: "rgmigrateEngine",
///     workloadDeploymentName: "wo2rs4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_deployment = azure_native.migrate.WorkloadDeployment("workloadDeployment",
///     modernize_project_name="tc",
///     resource_group_name="rgmigrateEngine",
///     workload_deployment_name="wo2rs4")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadDeployment:
///     type: azure-native:migrate:WorkloadDeployment
///     properties:
///       modernizeProjectName: tc
///       resourceGroupName: rgmigrateEngine
///       workloadDeploymentName: wo2rs4
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
/// $ pulumi import azure-native:migrate:WorkloadDeployment obqwiueoajtezyusejl /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/modernizeProjects/{modernizeProjectName}/workloadDeployments/{workloadDeploymentName}
/// ```
class WorkloadDeployment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the name of the resource.
  late final pulumi.Output<String> name;
  /// Workload deployment model properties.
  late final pulumi.Output<WorkloadDeploymentModelPropertiesResponse> properties;
  late final pulumi.Output<WorkloadDeploymentModelResponseSystemData> systemData;
  /// Gets or sets the resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [WorkloadDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadDeployment]. {@macro pulumi_migrate_workload_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadDeployment(
    String name, {
    WorkloadDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:WorkloadDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<WorkloadDeploymentModelPropertiesResponse>('properties');
    this.systemData = registerOutput<WorkloadDeploymentModelResponseSystemData>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
