import 'package:pulumi/pulumi.dart' as pulumi;
import 'goal_template_args.dart';
import 'goal_template_properties_response.dart';
import 'system_data_response.dart';

/// Goal template a AzureResilienceProviderHub resource
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2025-02-01-preview, 2026-04-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureresiliencemanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### GoalTemplates_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var goalTemplate = new AzureNative.AzureResilienceManagement.GoalTemplate("goalTemplate", new()
///     {
///         GoalTemplateName = "gt1",
///         Properties = new AzureNative.AzureResilienceManagement.Inputs.GoalTemplatePropertiesArgs
///         {
///             GoalType = AzureNative.AzureResilienceManagement.GoalType.Resiliency,
///             RegionalRecoveryPointObjective = "PT15M",
///             RegionalRecoveryTimeObjective = "PT30M",
///             RequireDisasterRecovery = AzureNative.AzureResilienceManagement.RequirementSelected.NotRequired,
///             RequireHighAvailability = AzureNative.AzureResilienceManagement.RequirementSelected.Required,
///         },
///         ServiceGroupName = "zumt",
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
/// 	azureresiliencemanagement "github.com/pulumi/pulumi-azure-native-sdk/azureresiliencemanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azureresiliencemanagement.NewGoalTemplate(ctx, "goalTemplate", &azureresiliencemanagement.GoalTemplateArgs{
/// 			GoalTemplateName: pulumi.String("gt1"),
/// 			Properties: &azureresiliencemanagement.GoalTemplatePropertiesArgs{
/// 				GoalType:                       pulumi.String(azureresiliencemanagement.GoalTypeResiliency),
/// 				RegionalRecoveryPointObjective: pulumi.String("PT15M"),
/// 				RegionalRecoveryTimeObjective:  pulumi.String("PT30M"),
/// 				RequireDisasterRecovery:        pulumi.String(azureresiliencemanagement.RequirementSelectedNotRequired),
/// 				RequireHighAvailability:        pulumi.String(azureresiliencemanagement.RequirementSelectedRequired),
/// 			},
/// 			ServiceGroupName: pulumi.String("zumt"),
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
/// resource "azure-native_azureresiliencemanagement_goaltemplate" "goalTemplate" {
///   goal_template_name = "gt1"
///   properties = {
///     goal_type                         = "Resiliency"
///     regional_recovery_point_objective = "PT15M"
///     regional_recovery_time_objective  = "PT30M"
///     require_disaster_recovery         = "NotRequired"
///     require_high_availability         = "Required"
///   }
///   service_group_name = "zumt"
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
/// import com.pulumi.azurenative.azureresiliencemanagement.GoalTemplate;
/// import com.pulumi.azurenative.azureresiliencemanagement.GoalTemplateArgs;
/// import com.pulumi.azurenative.azureresiliencemanagement.inputs.GoalTemplatePropertiesArgs;
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
///         var goalTemplate = new GoalTemplate("goalTemplate", GoalTemplateArgs.builder()
///             .goalTemplateName("gt1")
///             .properties(GoalTemplatePropertiesArgs.builder()
///                 .goalType("Resiliency")
///                 .regionalRecoveryPointObjective("PT15M")
///                 .regionalRecoveryTimeObjective("PT30M")
///                 .requireDisasterRecovery("NotRequired")
///                 .requireHighAvailability("Required")
///                 .build())
///             .serviceGroupName("zumt")
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
/// const goalTemplate = new azure_native.azureresiliencemanagement.GoalTemplate("goalTemplate", {
///     goalTemplateName: "gt1",
///     properties: {
///         goalType: azure_native.azureresiliencemanagement.GoalType.Resiliency,
///         regionalRecoveryPointObjective: "PT15M",
///         regionalRecoveryTimeObjective: "PT30M",
///         requireDisasterRecovery: azure_native.azureresiliencemanagement.RequirementSelected.NotRequired,
///         requireHighAvailability: azure_native.azureresiliencemanagement.RequirementSelected.Required,
///     },
///     serviceGroupName: "zumt",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// goal_template = azure_native.azureresiliencemanagement.GoalTemplate("goalTemplate",
///     goal_template_name="gt1",
///     properties={
///         "goal_type": azure_native.azureresiliencemanagement.GoalType.RESILIENCY,
///         "regional_recovery_point_objective": "PT15M",
///         "regional_recovery_time_objective": "PT30M",
///         "require_disaster_recovery": azure_native.azureresiliencemanagement.RequirementSelected.NOT_REQUIRED,
///         "require_high_availability": azure_native.azureresiliencemanagement.RequirementSelected.REQUIRED,
///     },
///     service_group_name="zumt")
///
/// ```
///
/// ```yaml
/// resources:
///   goalTemplate:
///     type: azure-native:azureresiliencemanagement:GoalTemplate
///     properties:
///       goalTemplateName: gt1
///       properties:
///         goalType: Resiliency
///         regionalRecoveryPointObjective: PT15M
///         regionalRecoveryTimeObjective: PT30M
///         requireDisasterRecovery: NotRequired
///         requireHighAvailability: Required
///       serviceGroupName: zumt
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### GoalTemplates_CreateOrUpdate_MinimumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var goalTemplate = new AzureNative.AzureResilienceManagement.GoalTemplate("goalTemplate", new()
///     {
///         GoalTemplateName = "gt1",
///         Properties = new AzureNative.AzureResilienceManagement.Inputs.GoalTemplatePropertiesArgs
///         {
///             GoalType = AzureNative.AzureResilienceManagement.GoalType.Resiliency,
///         },
///         ServiceGroupName = "sg1",
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
/// 	azureresiliencemanagement "github.com/pulumi/pulumi-azure-native-sdk/azureresiliencemanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azureresiliencemanagement.NewGoalTemplate(ctx, "goalTemplate", &azureresiliencemanagement.GoalTemplateArgs{
/// 			GoalTemplateName: pulumi.String("gt1"),
/// 			Properties: &azureresiliencemanagement.GoalTemplatePropertiesArgs{
/// 				GoalType: pulumi.String(azureresiliencemanagement.GoalTypeResiliency),
/// 			},
/// 			ServiceGroupName: pulumi.String("sg1"),
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
/// resource "azure-native_azureresiliencemanagement_goaltemplate" "goalTemplate" {
///   goal_template_name = "gt1"
///   properties = {
///     goal_type = "Resiliency"
///   }
///   service_group_name = "sg1"
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
/// import com.pulumi.azurenative.azureresiliencemanagement.GoalTemplate;
/// import com.pulumi.azurenative.azureresiliencemanagement.GoalTemplateArgs;
/// import com.pulumi.azurenative.azureresiliencemanagement.inputs.GoalTemplatePropertiesArgs;
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
///         var goalTemplate = new GoalTemplate("goalTemplate", GoalTemplateArgs.builder()
///             .goalTemplateName("gt1")
///             .properties(GoalTemplatePropertiesArgs.builder()
///                 .goalType("Resiliency")
///                 .build())
///             .serviceGroupName("sg1")
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
/// const goalTemplate = new azure_native.azureresiliencemanagement.GoalTemplate("goalTemplate", {
///     goalTemplateName: "gt1",
///     properties: {
///         goalType: azure_native.azureresiliencemanagement.GoalType.Resiliency,
///     },
///     serviceGroupName: "sg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// goal_template = azure_native.azureresiliencemanagement.GoalTemplate("goalTemplate",
///     goal_template_name="gt1",
///     properties={
///         "goal_type": azure_native.azureresiliencemanagement.GoalType.RESILIENCY,
///     },
///     service_group_name="sg1")
///
/// ```
///
/// ```yaml
/// resources:
///   goalTemplate:
///     type: azure-native:azureresiliencemanagement:GoalTemplate
///     properties:
///       goalTemplateName: gt1
///       properties:
///         goalType: Resiliency
///       serviceGroupName: sg1
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
/// $ pulumi import azure-native:azureresiliencemanagement:GoalTemplate gt1 /providers/Microsoft.Management/serviceGroups/{serviceGroupName}/providers/Microsoft.AzureResilienceManagement/goalTemplates/{goalTemplateName}
/// ```
class GoalTemplate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<GoalTemplatePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GoalTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GoalTemplate]. {@macro pulumi_azureresiliencemanagement_goal_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GoalTemplate(
    String name, {
    GoalTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azureresiliencemanagement:GoalTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GoalTemplatePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoalTemplatePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
