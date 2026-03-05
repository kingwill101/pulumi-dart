import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location_response.dart';
import 'system_data_response.dart';
import 'workflow_version_args.dart';
import 'workflow_version_properties_response.dart';

/// Workflow Version Resource
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkflowVersions_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workflowVersion = new AzureNative.Edge.WorkflowVersion("workflowVersion", new()
///     {
///         ContextName = "testname",
///         ExtendedLocation = new AzureNative.Edge.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "szjrwimeqyiue",
///             Type = AzureNative.Edge.ExtendedLocationType.EdgeZone,
///         },
///         Properties = new AzureNative.Edge.Inputs.WorkflowVersionPropertiesArgs
///         {
///             Specification = null,
///             StageSpec = new[]
///             {
///                 new AzureNative.Edge.Inputs.StageSpecArgs
///                 {
///                     Name = "amrbjd",
///                     Specification = null,
///                     TaskOption = new AzureNative.Edge.Inputs.TaskOptionArgs
///                     {
///                         Concurrency = 3,
///                         ErrorAction = new AzureNative.Edge.Inputs.ErrorActionArgs
///                         {
///                             MaxToleratedFailures = 0,
///                             Mode = AzureNative.Edge.ErrorActionMode.StopOnAnyFailure,
///                         },
///                     },
///                     Tasks = new[]
///                     {
///                         new AzureNative.Edge.Inputs.TaskSpecArgs
///                         {
///                             Name = "xxmeyvmgydbcwxqwjhadjxjod",
///                             Specification = null,
///                             TargetId = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}",
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rgconfigurationmanager",
///         VersionName = "testname",
///         WorkflowName = "testname",
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
/// 	edge "github.com/pulumi/pulumi-azure-native-sdk/edge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := edge.NewWorkflowVersion(ctx, "workflowVersion", &edge.WorkflowVersionArgs{
/// 			ContextName: pulumi.String("testname"),
/// 			ExtendedLocation: &edge.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("szjrwimeqyiue"),
/// 				Type: pulumi.String(edge.ExtendedLocationTypeEdgeZone),
/// 			},
/// 			Properties: &edge.WorkflowVersionPropertiesArgs{
/// 				Specification: pulumi.Any(map[string]interface{}{}),
/// 				StageSpec: edge.StageSpecArray{
/// 					&edge.StageSpecArgs{
/// 						Name:          pulumi.String("amrbjd"),
/// 						Specification: pulumi.Any(map[string]interface{}{}),
/// 						TaskOption: &edge.TaskOptionArgs{
/// 							Concurrency: pulumi.Int(3),
/// 							ErrorAction: &edge.ErrorActionArgs{
/// 								MaxToleratedFailures: pulumi.Int(0),
/// 								Mode:                 pulumi.String(edge.ErrorActionModeStopOnAnyFailure),
/// 							},
/// 						},
/// 						Tasks: edge.TaskSpecArray{
/// 							&edge.TaskSpecArgs{
/// 								Name:          pulumi.String("xxmeyvmgydbcwxqwjhadjxjod"),
/// 								Specification: pulumi.Any(map[string]interface{}{}),
/// 								TargetId:      pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgconfigurationmanager"),
/// 			VersionName:       pulumi.String("testname"),
/// 			WorkflowName:      pulumi.String("testname"),
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
/// import com.pulumi.azurenative.edge.WorkflowVersion;
/// import com.pulumi.azurenative.edge.WorkflowVersionArgs;
/// import com.pulumi.azurenative.edge.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import com.pulumi.azurenative.edge.inputs.WorkflowVersionPropertiesArgs;
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
///         var workflowVersion = new WorkflowVersion("workflowVersion", WorkflowVersionArgs.builder()
///             .contextName("testname")
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("szjrwimeqyiue")
///                 .type("EdgeZone")
///                 .build())
///             .properties(WorkflowVersionPropertiesArgs.builder()
///                 .specification(Map.ofEntries(
///                 ))
///                 .stageSpec(StageSpecArgs.builder()
///                     .name("amrbjd")
///                     .specification(Map.ofEntries(
///                     ))
///                     .taskOption(TaskOptionArgs.builder()
///                         .concurrency(3)
///                         .errorAction(ErrorActionArgs.builder()
///                             .maxToleratedFailures(0)
///                             .mode("stopOnAnyFailure")
///                             .build())
///                         .build())
///                     .tasks(TaskSpecArgs.builder()
///                         .name("xxmeyvmgydbcwxqwjhadjxjod")
///                         .specification(Map.ofEntries(
///                         ))
///                         .targetId("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("rgconfigurationmanager")
///             .versionName("testname")
///             .workflowName("testname")
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
/// const workflowVersion = new azure_native.edge.WorkflowVersion("workflowVersion", {
///     contextName: "testname",
///     extendedLocation: {
///         name: "szjrwimeqyiue",
///         type: azure_native.edge.ExtendedLocationType.EdgeZone,
///     },
///     properties: {
///         specification: {},
///         stageSpec: [{
///             name: "amrbjd",
///             specification: {},
///             taskOption: {
///                 concurrency: 3,
///                 errorAction: {
///                     maxToleratedFailures: 0,
///                     mode: azure_native.edge.ErrorActionMode.StopOnAnyFailure,
///                 },
///             },
///             tasks: [{
///                 name: "xxmeyvmgydbcwxqwjhadjxjod",
///                 specification: {},
///                 targetId: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}",
///             }],
///         }],
///     },
///     resourceGroupName: "rgconfigurationmanager",
///     versionName: "testname",
///     workflowName: "testname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workflow_version = azure_native.edge.WorkflowVersion("workflowVersion",
///     context_name="testname",
///     extended_location={
///         "name": "szjrwimeqyiue",
///         "type": azure_native.edge.ExtendedLocationType.EDGE_ZONE,
///     },
///     properties={
///         "specification": {},
///         "stage_spec": [{
///             "name": "amrbjd",
///             "specification": {},
///             "task_option": {
///                 "concurrency": 3,
///                 "error_action": {
///                     "max_tolerated_failures": 0,
///                     "mode": azure_native.edge.ErrorActionMode.STOP_ON_ANY_FAILURE,
///                 },
///             },
///             "tasks": [{
///                 "name": "xxmeyvmgydbcwxqwjhadjxjod",
///                 "specification": {},
///                 "target_id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}",
///             }],
///         }],
///     },
///     resource_group_name="rgconfigurationmanager",
///     version_name="testname",
///     workflow_name="testname")
///
/// ```
///
/// ```yaml
/// resources:
///   workflowVersion:
///     type: azure-native:edge:WorkflowVersion
///     properties:
///       contextName: testname
///       extendedLocation:
///         name: szjrwimeqyiue
///         type: EdgeZone
///       properties:
///         specification: {}
///         stageSpec:
///           - name: amrbjd
///             specification: {}
///             taskOption:
///               concurrency: 3
///               errorAction:
///                 maxToleratedFailures: 0
///                 mode: stopOnAnyFailure
///             tasks:
///               - name: xxmeyvmgydbcwxqwjhadjxjod
///                 specification: {}
///                 targetId: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
///       resourceGroupName: rgconfigurationmanager
///       versionName: testname
///       workflowName: testname
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
/// $ pulumi import azure-native:edge:WorkflowVersion rsghgriwbtckmabbcxmqbvshybhw /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/contexts/{contextName}/workflows/{workflowName}/versions/{versionName}
/// ```
class WorkflowVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The complex type of the extended location.
  late final pulumi.Output<AzureResourceManagerCommonTypesExtendedLocationResponse?> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<WorkflowVersionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkflowVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkflowVersion]. {@macro pulumi_edge_workflow_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkflowVersion(
    String name, {
    WorkflowVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:edge:WorkflowVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    extendedLocation = registerOutput<AzureResourceManagerCommonTypesExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureResourceManagerCommonTypesExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<WorkflowVersionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowVersionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
