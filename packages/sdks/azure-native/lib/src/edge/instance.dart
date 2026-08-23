import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'instance_args.dart';
import 'instance_properties_response.dart';
import 'system_data_response.dart';

/// Instance Resource. Represents a deployment object.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01, 2025-08-15-preview, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Instances_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new AzureNative.Edge.Instance("instance", new()
///     {
///         ExtendedLocation = new AzureNative.Edge.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "szjrwimeqyiue",
///             Type = AzureNative.Edge.ExtendedLocationType.EdgeZone,
///         },
///         InstanceName = "testname",
///         Properties = new AzureNative.Edge.Inputs.InstancePropertiesArgs
///         {
///             ActiveState = AzureNative.Edge.ActiveState.Active,
///             ReconciliationPolicy = new AzureNative.Edge.Inputs.ReconciliationPolicyPropertiesArgs
///             {
///                 Interval = "szucgzdbydcowvhprhx",
///                 State = AzureNative.Edge.ReconciliationState.Inactive,
///             },
///             SolutionScope = "testname",
///             SolutionVersionId = "acpddbkfclsgxg",
///             TargetId = "eguutiftuxrsavvckjrv",
///         },
///         ResourceGroupName = "rgconfigurationmanager",
///         SolutionName = "testname",
///         TargetName = "testname",
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
/// 		_, err := edge.NewInstance(ctx, "instance", &edge.InstanceArgs{
/// 			ExtendedLocation: &edge.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("szjrwimeqyiue"),
/// 				Type: pulumi.String(edge.ExtendedLocationTypeEdgeZone),
/// 			},
/// 			InstanceName: pulumi.String("testname"),
/// 			Properties: &edge.InstancePropertiesArgs{
/// 				ActiveState: pulumi.String(edge.ActiveStateActive),
/// 				ReconciliationPolicy: &edge.ReconciliationPolicyPropertiesArgs{
/// 					Interval: pulumi.String("szucgzdbydcowvhprhx"),
/// 					State:    pulumi.String(edge.ReconciliationStateInactive),
/// 				},
/// 				SolutionScope:     pulumi.String("testname"),
/// 				SolutionVersionId: pulumi.String("acpddbkfclsgxg"),
/// 				TargetId:          pulumi.String("eguutiftuxrsavvckjrv"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgconfigurationmanager"),
/// 			SolutionName:      pulumi.String("testname"),
/// 			TargetName:        pulumi.String("testname"),
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
/// resource "azure-native_edge_instance" "instance" {
///   extended_location = {
///     name = "szjrwimeqyiue"
///     type = "EdgeZone"
///   }
///   instance_name = "testname"
///   properties = {
///     active_state = "active"
///     reconciliation_policy = {
///       interval = "szucgzdbydcowvhprhx"
///       state    = "inactive"
///     }
///     solution_scope      = "testname"
///     solution_version_id = "acpddbkfclsgxg"
///     target_id           = "eguutiftuxrsavvckjrv"
///   }
///   resource_group_name = "rgconfigurationmanager"
///   solution_name       = "testname"
///   target_name         = "testname"
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
/// import com.pulumi.azurenative.edge.Instance;
/// import com.pulumi.azurenative.edge.InstanceArgs;
/// import com.pulumi.azurenative.edge.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import com.pulumi.azurenative.edge.inputs.InstancePropertiesArgs;
/// import com.pulumi.azurenative.edge.inputs.ReconciliationPolicyPropertiesArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("szjrwimeqyiue")
///                 .type("EdgeZone")
///                 .build())
///             .instanceName("testname")
///             .properties(InstancePropertiesArgs.builder()
///                 .activeState("active")
///                 .reconciliationPolicy(ReconciliationPolicyPropertiesArgs.builder()
///                     .interval("szucgzdbydcowvhprhx")
///                     .state("inactive")
///                     .build())
///                 .solutionScope("testname")
///                 .solutionVersionId("acpddbkfclsgxg")
///                 .targetId("eguutiftuxrsavvckjrv")
///                 .build())
///             .resourceGroupName("rgconfigurationmanager")
///             .solutionName("testname")
///             .targetName("testname")
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
/// const instance = new azure_native.edge.Instance("instance", {
///     extendedLocation: {
///         name: "szjrwimeqyiue",
///         type: azure_native.edge.ExtendedLocationType.EdgeZone,
///     },
///     instanceName: "testname",
///     properties: {
///         activeState: azure_native.edge.ActiveState.Active,
///         reconciliationPolicy: {
///             interval: "szucgzdbydcowvhprhx",
///             state: azure_native.edge.ReconciliationState.Inactive,
///         },
///         solutionScope: "testname",
///         solutionVersionId: "acpddbkfclsgxg",
///         targetId: "eguutiftuxrsavvckjrv",
///     },
///     resourceGroupName: "rgconfigurationmanager",
///     solutionName: "testname",
///     targetName: "testname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// instance = azure_native.edge.Instance("instance",
///     extended_location={
///         "name": "szjrwimeqyiue",
///         "type": azure_native.edge.ExtendedLocationType.EDGE_ZONE,
///     },
///     instance_name="testname",
///     properties={
///         "active_state": azure_native.edge.ActiveState.ACTIVE,
///         "reconciliation_policy": {
///             "interval": "szucgzdbydcowvhprhx",
///             "state": azure_native.edge.ReconciliationState.INACTIVE,
///         },
///         "solution_scope": "testname",
///         "solution_version_id": "acpddbkfclsgxg",
///         "target_id": "eguutiftuxrsavvckjrv",
///     },
///     resource_group_name="rgconfigurationmanager",
///     solution_name="testname",
///     target_name="testname")
///
/// ```
///
/// ```yaml
/// resources:
///   instance:
///     type: azure-native:edge:Instance
///     properties:
///       extendedLocation:
///         name: szjrwimeqyiue
///         type: EdgeZone
///       instanceName: testname
///       properties:
///         activeState: active
///         reconciliationPolicy:
///           interval: szucgzdbydcowvhprhx
///           state: inactive
///         solutionScope: testname
///         solutionVersionId: acpddbkfclsgxg
///         targetId: eguutiftuxrsavvckjrv
///       resourceGroupName: rgconfigurationmanager
///       solutionName: testname
///       targetName: testname
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
/// $ pulumi import azure-native:edge:Instance eklhpbpitmqrsfujmjq /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/targets/{targetName}/solutions/{solutionName}/instances/{instanceName}
/// ```
class Instance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The complex type of the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<InstancePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_edge_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:edge:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<InstancePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstancePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
