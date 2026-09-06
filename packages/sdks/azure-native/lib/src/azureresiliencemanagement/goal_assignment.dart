import 'package:pulumi/pulumi.dart' as pulumi;
import 'goal_assignment_args.dart';
import 'goal_assignment_properties_response.dart';
import 'system_data_response.dart';

/// Goal assignment a AzureResilienceProviderHub resource
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2025-02-01-preview, 2026-04-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureresiliencemanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### GoalAssignments_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var goalAssignment = new AzureNative.AzureResilienceManagement.GoalAssignment("goalAssignment", new()
///     {
///         GoalAssignmentName = "ga1",
///         Properties = new AzureNative.AzureResilienceManagement.Inputs.GoalAssignmentPropertiesArgs
///         {
///             GoalAssignmentType = AzureNative.AzureResilienceManagement.GoalAssignmentType.Resiliency,
///             GoalTemplateId = "/providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1",
///             ServiceLevelResources = new[]
///             {
///                 new AzureNative.AzureResilienceManagement.Inputs.ServiceLevelResourceArgs
///                 {
///                     ServiceLevelIndicatorResourceId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine",
///                     ServiceLevelObjectiveResourceId = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine",
///                 },
///             },
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
/// 		_, err := azureresiliencemanagement.NewGoalAssignment(ctx, "goalAssignment", &azureresiliencemanagement.GoalAssignmentArgs{
/// 			GoalAssignmentName: pulumi.String("ga1"),
/// 			Properties: &azureresiliencemanagement.GoalAssignmentPropertiesArgs{
/// 				GoalAssignmentType: pulumi.String(azureresiliencemanagement.GoalAssignmentTypeResiliency),
/// 				GoalTemplateId:     pulumi.String("/providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1"),
/// 				ServiceLevelResources: azureresiliencemanagement.ServiceLevelResourceArray{
/// 					&azureresiliencemanagement.ServiceLevelResourceArgs{
/// 						ServiceLevelIndicatorResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine"),
/// 						ServiceLevelObjectiveResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine"),
/// 					},
/// 				},
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
/// resource "azure-native_azureresiliencemanagement_goalassignment" "goalAssignment" {
///   goal_assignment_name = "ga1"
///   properties = {
///     goal_assignment_type = "Resiliency"
///     goal_template_id     = "/providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1"
///     service_level_resources = [{
///       "serviceLevelIndicatorResourceId" = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine"
///       "serviceLevelObjectiveResourceId" = "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine"
///     }]
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
/// import com.pulumi.azurenative.azureresiliencemanagement.GoalAssignment;
/// import com.pulumi.azurenative.azureresiliencemanagement.GoalAssignmentArgs;
/// import com.pulumi.azurenative.azureresiliencemanagement.inputs.GoalAssignmentPropertiesArgs;
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
///         var goalAssignment = new GoalAssignment("goalAssignment", GoalAssignmentArgs.builder()
///             .goalAssignmentName("ga1")
///             .properties(GoalAssignmentPropertiesArgs.builder()
///                 .goalAssignmentType("Resiliency")
///                 .goalTemplateId("/providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1")
///                 .serviceLevelResources(ServiceLevelResourceArgs.builder()
///                     .serviceLevelIndicatorResourceId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine")
///                     .serviceLevelObjectiveResourceId("/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine")
///                     .build())
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
/// const goalAssignment = new azure_native.azureresiliencemanagement.GoalAssignment("goalAssignment", {
///     goalAssignmentName: "ga1",
///     properties: {
///         goalAssignmentType: azure_native.azureresiliencemanagement.GoalAssignmentType.Resiliency,
///         goalTemplateId: "/providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1",
///         serviceLevelResources: [{
///             serviceLevelIndicatorResourceId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine",
///             serviceLevelObjectiveResourceId: "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine",
///         }],
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
/// goal_assignment = azure_native.azureresiliencemanagement.GoalAssignment("goalAssignment",
///     goal_assignment_name="ga1",
///     properties={
///         "goal_assignment_type": azure_native.azureresiliencemanagement.GoalAssignmentType.RESILIENCY,
///         "goal_template_id": "/providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1",
///         "service_level_resources": [{
///             "service_level_indicator_resource_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine",
///             "service_level_objective_resource_id": "/subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine",
///         }],
///     },
///     service_group_name="sg1")
///
/// ```
///
/// ```yaml
/// resources:
///   goalAssignment:
///     type: azure-native:azureresiliencemanagement:GoalAssignment
///     properties:
///       goalAssignmentName: ga1
///       properties:
///         goalAssignmentType: Resiliency
///         goalTemplateId: /providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1
///         serviceLevelResources:
///           - serviceLevelIndicatorResourceId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine
///             serviceLevelObjectiveResourceId: /subscriptions/12345678-1234-1234-1234-123456789012/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/virtualMachines/MyVirtualMachine
///       serviceGroupName: sg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### GoalAssignments_CreateOrUpdate_MinimumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var goalAssignment = new AzureNative.AzureResilienceManagement.GoalAssignment("goalAssignment", new()
///     {
///         GoalAssignmentName = "ga1",
///         Properties = new AzureNative.AzureResilienceManagement.Inputs.GoalAssignmentPropertiesArgs
///         {
///             GoalAssignmentType = AzureNative.AzureResilienceManagement.GoalAssignmentType.Resiliency,
///             GoalTemplateId = "/providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1",
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
/// 		_, err := azureresiliencemanagement.NewGoalAssignment(ctx, "goalAssignment", &azureresiliencemanagement.GoalAssignmentArgs{
/// 			GoalAssignmentName: pulumi.String("ga1"),
/// 			Properties: &azureresiliencemanagement.GoalAssignmentPropertiesArgs{
/// 				GoalAssignmentType: pulumi.String(azureresiliencemanagement.GoalAssignmentTypeResiliency),
/// 				GoalTemplateId:     pulumi.String("/providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1"),
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
/// resource "azure-native_azureresiliencemanagement_goalassignment" "goalAssignment" {
///   goal_assignment_name = "ga1"
///   properties = {
///     goal_assignment_type = "Resiliency"
///     goal_template_id     = "/providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1"
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
/// import com.pulumi.azurenative.azureresiliencemanagement.GoalAssignment;
/// import com.pulumi.azurenative.azureresiliencemanagement.GoalAssignmentArgs;
/// import com.pulumi.azurenative.azureresiliencemanagement.inputs.GoalAssignmentPropertiesArgs;
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
///         var goalAssignment = new GoalAssignment("goalAssignment", GoalAssignmentArgs.builder()
///             .goalAssignmentName("ga1")
///             .properties(GoalAssignmentPropertiesArgs.builder()
///                 .goalAssignmentType("Resiliency")
///                 .goalTemplateId("/providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1")
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
/// const goalAssignment = new azure_native.azureresiliencemanagement.GoalAssignment("goalAssignment", {
///     goalAssignmentName: "ga1",
///     properties: {
///         goalAssignmentType: azure_native.azureresiliencemanagement.GoalAssignmentType.Resiliency,
///         goalTemplateId: "/providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1",
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
/// goal_assignment = azure_native.azureresiliencemanagement.GoalAssignment("goalAssignment",
///     goal_assignment_name="ga1",
///     properties={
///         "goal_assignment_type": azure_native.azureresiliencemanagement.GoalAssignmentType.RESILIENCY,
///         "goal_template_id": "/providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1",
///     },
///     service_group_name="sg1")
///
/// ```
///
/// ```yaml
/// resources:
///   goalAssignment:
///     type: azure-native:azureresiliencemanagement:GoalAssignment
///     properties:
///       goalAssignmentName: ga1
///       properties:
///         goalAssignmentType: Resiliency
///         goalTemplateId: /providers/Microsoft.AzureResilienceManagement/goaltemplates/gt1
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
/// $ pulumi import azure-native:azureresiliencemanagement:GoalAssignment ga1 /providers/Microsoft.Management/serviceGroups/{serviceGroupName}/providers/Microsoft.AzureResilienceManagement/goalAssignments/{goalAssignmentName}
/// ```
class GoalAssignment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<GoalAssignmentPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [GoalAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GoalAssignment]. {@macro pulumi_azureresiliencemanagement_goal_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GoalAssignment(
    String name, {
    GoalAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azureresiliencemanagement:GoalAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GoalAssignmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoalAssignmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [GoalAssignment] resource.
  GoalAssignment.reference(String urn)
    : super(
        'azure-native:azureresiliencemanagement:GoalAssignment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<GoalAssignmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoalAssignmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
