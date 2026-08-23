import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'workflow_v2_args.dart';
import 'workflow_v2_properties_response.dart';

/// WorkflowV2 Resource
///
/// Uses Azure REST API version 2025-08-15-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkflowV2s_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workflowV2 = new AzureNative.Edge.WorkflowV2("workflowV2", new()
///     {
///         ExtendedLocation = new AzureNative.Edge.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "szjrwimeqyiue",
///             Type = AzureNative.Edge.ExtendedLocationType.EdgeZone,
///         },
///         Location = "gpuieexasolrnrvwfcyinbl",
///         ResourceGroupName = "rgconfigurationmanager",
///         Tags =
///         {
///             { "key40", "kk" },
///         },
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
/// 		_, err := edge.NewWorkflowV2(ctx, "workflowV2", &edge.WorkflowV2Args{
/// 			ExtendedLocation: &edge.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("szjrwimeqyiue"),
/// 				Type: pulumi.String(edge.ExtendedLocationTypeEdgeZone),
/// 			},
/// 			Location:          pulumi.String("gpuieexasolrnrvwfcyinbl"),
/// 			ResourceGroupName: pulumi.String("rgconfigurationmanager"),
/// 			Tags: pulumi.StringMap{
/// 				"key40": pulumi.String("kk"),
/// 			},
/// 			WorkflowName: pulumi.String("abcde"),
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
/// resource "azure-native_edge_workflowv2" "workflowV2" {
///   extended_location = {
///     name = "szjrwimeqyiue"
///     type = "EdgeZone"
///   }
///   location            = "gpuieexasolrnrvwfcyinbl"
///   resource_group_name = "rgconfigurationmanager"
///   tags = {
///     "key40" = "kk"
///   }
///   workflow_name = "abcde"
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
/// import com.pulumi.azurenative.edge.WorkflowV2;
/// import com.pulumi.azurenative.edge.WorkflowV2Args;
/// import com.pulumi.azurenative.edge.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
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
///         var workflowV2 = new WorkflowV2("workflowV2", WorkflowV2Args.builder()
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("szjrwimeqyiue")
///                 .type("EdgeZone")
///                 .build())
///             .location("gpuieexasolrnrvwfcyinbl")
///             .resourceGroupName("rgconfigurationmanager")
///             .tags(Map.of("key40", "kk"))
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
/// const workflowV2 = new azure_native.edge.WorkflowV2("workflowV2", {
///     extendedLocation: {
///         name: "szjrwimeqyiue",
///         type: azure_native.edge.ExtendedLocationType.EdgeZone,
///     },
///     location: "gpuieexasolrnrvwfcyinbl",
///     resourceGroupName: "rgconfigurationmanager",
///     tags: {
///         key40: "kk",
///     },
///     workflowName: "abcde",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workflow_v2 = azure_native.edge.WorkflowV2("workflowV2",
///     extended_location={
///         "name": "szjrwimeqyiue",
///         "type": azure_native.edge.ExtendedLocationType.EDGE_ZONE,
///     },
///     location="gpuieexasolrnrvwfcyinbl",
///     resource_group_name="rgconfigurationmanager",
///     tags={
///         "key40": "kk",
///     },
///     workflow_name="abcde")
///
/// ```
///
/// ```yaml
/// resources:
///   workflowV2:
///     type: azure-native:edge:WorkflowV2
///     properties:
///       extendedLocation:
///         name: szjrwimeqyiue
///         type: EdgeZone
///       location: gpuieexasolrnrvwfcyinbl
///       resourceGroupName: rgconfigurationmanager
///       tags:
///         key40: kk
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
/// $ pulumi import azure-native:edge:WorkflowV2 hspfvfrdci /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/workflows/{workflowName}
/// ```
class WorkflowV2 extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The complex type of the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<WorkflowV2PropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WorkflowV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkflowV2]. {@macro pulumi_edge_workflow_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkflowV2(
    String name, {
    WorkflowV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:edge:WorkflowV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<WorkflowV2PropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowV2PropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
