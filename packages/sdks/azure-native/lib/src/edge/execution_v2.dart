import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_v2_args.dart';
import 'execution_v2_properties_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// ExecutionV2 Resource
///
/// Uses Azure REST API version 2025-08-15-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ExecutionV2s_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var executionV2 = new AzureNative.Edge.ExecutionV2("executionV2", new()
///     {
///         ExecutionName = "abcde",
///         ExtendedLocation = new AzureNative.Edge.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "szjrwimeqyiue",
///             Type = AzureNative.Edge.ExtendedLocationType.EdgeZone,
///         },
///         Properties = new AzureNative.Edge.Inputs.ExecutionV2PropertiesArgs
///         {
///             Specification = null,
///             WorkflowVersionId = "embiuscnm",
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
/// 		_, err := edge.NewExecutionV2(ctx, "executionV2", &edge.ExecutionV2Args{
/// 			ExecutionName: pulumi.String("abcde"),
/// 			ExtendedLocation: &edge.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("szjrwimeqyiue"),
/// 				Type: pulumi.String(edge.ExtendedLocationTypeEdgeZone),
/// 			},
/// 			Properties: &edge.ExecutionV2PropertiesArgs{
/// 				Specification:     pulumi.Any(map[string]interface{}{}),
/// 				WorkflowVersionId: pulumi.String("embiuscnm"),
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
/// resource "azure-native_edge_executionv2" "executionV2" {
///   execution_name = "abcde"
///   extended_location = {
///     name = "szjrwimeqyiue"
///     type = "EdgeZone"
///   }
///   properties = {
///     specification       = {}
///     workflow_version_id = "embiuscnm"
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
/// import com.pulumi.azurenative.edge.ExecutionV2;
/// import com.pulumi.azurenative.edge.ExecutionV2Args;
/// import com.pulumi.azurenative.edge.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import com.pulumi.azurenative.edge.inputs.ExecutionV2PropertiesArgs;
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
///         var executionV2 = new ExecutionV2("executionV2", ExecutionV2Args.builder()
///             .executionName("abcde")
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("szjrwimeqyiue")
///                 .type("EdgeZone")
///                 .build())
///             .properties(ExecutionV2PropertiesArgs.builder()
///                 .specification(Map.ofEntries(
///                 ))
///                 .workflowVersionId("embiuscnm")
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
/// const executionV2 = new azure_native.edge.ExecutionV2("executionV2", {
///     executionName: "abcde",
///     extendedLocation: {
///         name: "szjrwimeqyiue",
///         type: azure_native.edge.ExtendedLocationType.EdgeZone,
///     },
///     properties: {
///         specification: {},
///         workflowVersionId: "embiuscnm",
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
/// execution_v2 = azure_native.edge.ExecutionV2("executionV2",
///     execution_name="abcde",
///     extended_location={
///         "name": "szjrwimeqyiue",
///         "type": azure_native.edge.ExtendedLocationType.EDGE_ZONE,
///     },
///     properties={
///         "specification": {},
///         "workflow_version_id": "embiuscnm",
///     },
///     resource_group_name="rgconfigurationmanager",
///     version_name="abcde",
///     workflow_name="abcde")
///
/// ```
///
/// ```yaml
/// resources:
///   executionV2:
///     type: azure-native:edge:ExecutionV2
///     properties:
///       executionName: abcde
///       extendedLocation:
///         name: szjrwimeqyiue
///         type: EdgeZone
///       properties:
///         specification: {}
///         workflowVersionId: embiuscnm
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
/// $ pulumi import azure-native:edge:ExecutionV2 oojcidijeira /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/workflows/{workflowName}/versions/{versionName}/executions/{executionName}
/// ```
class ExecutionV2 extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The complex type of the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ExecutionV2PropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ExecutionV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExecutionV2]. {@macro pulumi_edge_execution_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExecutionV2(
    String name, {
    ExecutionV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:edge:ExecutionV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<ExecutionV2PropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExecutionV2PropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ExecutionV2] resource.
  ExecutionV2.reference(String urn)
    : super(
        'azure-native:edge:ExecutionV2',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<ExecutionV2PropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExecutionV2PropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
