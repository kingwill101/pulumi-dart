import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'workflow_version_v2_args.dart';
import 'workflow_version_v2_properties_response.dart';

/// Workflow Version Resource
///
/// Uses Azure REST API version 2025-08-15-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkflowVersionV2s_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workflowVersionV2 = new AzureNative.Edge.WorkflowVersionV2("workflowVersionV2", new()
///     {
///         ExtendedLocation = new AzureNative.Edge.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "szjrwimeqyiue",
///             Type = AzureNative.Edge.ExtendedLocationType.EdgeZone,
///         },
///         Properties = new AzureNative.Edge.Inputs.WorkflowVersionV2PropertiesArgs
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
///         VersionName = "abcde",
///         WorkflowName = "abcde",
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
/// 		_, err := edge.NewWorkflowVersionV2(ctx, "workflowVersionV2", &edge.WorkflowVersionV2Args{
/// 			ExtendedLocation: &edge.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("szjrwimeqyiue"),
/// 				Type: pulumi.String(edge.ExtendedLocationTypeEdgeZone),
/// 			},
/// 			Properties: &edge.WorkflowVersionV2PropertiesArgs{
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
/// 			VersionName:       pulumi.String("abcde"),
/// 			WorkflowName:      pulumi.String("abcde"),
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
/// resource "azure-native_edge_workflowversionv2" "workflowVersionV2" {
///   extended_location = {
///     name = "szjrwimeqyiue"
///     type = "EdgeZone"
///   }
///   properties = {
///     specification = {}
///     stage_spec = [{
///       "name"          = "amrbjd"
///       "specification" = {}
///       "taskOption" = {
///         "concurrency" = 3
///         "errorAction" = {
///           "maxToleratedFailures" = 0
///           "mode"                 = "stopOnAnyFailure"
///         }
///       }
///       "tasks" = [{
///         "name"          = "xxmeyvmgydbcwxqwjhadjxjod"
///         "specification" = {}
///         "targetId"      = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
///       }]
///     }]
///   }
///   resource_group_name = "rgconfigurationmanager"
///   version_name        = "abcde"
///   workflow_name       = "abcde"
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
/// import com.pulumi.azurenative.edge.WorkflowVersionV2;
/// import com.pulumi.azurenative.edge.WorkflowVersionV2Args;
/// import com.pulumi.azurenative.edge.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import com.pulumi.azurenative.edge.inputs.WorkflowVersionV2PropertiesArgs;
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
///         var workflowVersionV2 = new WorkflowVersionV2("workflowVersionV2", WorkflowVersionV2Args.builder()
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("szjrwimeqyiue")
///                 .type("EdgeZone")
///                 .build())
///             .properties(WorkflowVersionV2PropertiesArgs.builder()
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
///             .versionName("abcde")
///             .workflowName("abcde")
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
/// const workflowVersionV2 = new azure_native.edge.WorkflowVersionV2("workflowVersionV2", {
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
///     versionName: "abcde",
///     workflowName: "abcde",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workflow_version_v2 = azure_native.edge.WorkflowVersionV2("workflowVersionV2",
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
///     version_name="abcde",
///     workflow_name="abcde")
///
/// ```
///
/// ```yaml
/// resources:
///   workflowVersionV2:
///     type: azure-native:edge:WorkflowVersionV2
///     properties:
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
///       versionName: abcde
///       workflowName: abcde
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
/// $ pulumi import azure-native:edge:WorkflowVersionV2 ys /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/workflows/{workflowName}/versions/{versionName}
/// ```
class WorkflowVersionV2 extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The complex type of the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<WorkflowVersionV2PropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkflowVersionV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkflowVersionV2]. {@macro pulumi_edge_workflow_version_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkflowVersionV2(
    String name, {
    WorkflowVersionV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:edge:WorkflowVersionV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<WorkflowVersionV2PropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowVersionV2PropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WorkflowVersionV2] resource.
  WorkflowVersionV2.reference(String urn)
    : super(
        'azure-native:edge:WorkflowVersionV2',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<WorkflowVersionV2PropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowVersionV2PropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
