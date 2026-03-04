import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location_response.dart';
import 'system_data_response.dart';
import 'target_args.dart';
import 'target_properties_response.dart';

/// Target Resource. Represents a resource to be deployed on the edge.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Targets_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var target = new AzureNative.Edge.Target("target", new()
///     {
///         ExtendedLocation = new AzureNative.Edge.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "szjrwimeqyiue",
///             Type = AzureNative.Edge.ExtendedLocationType.EdgeZone,
///         },
///         Location = "kckloegmwsjgwtcl",
///         Properties = new AzureNative.Edge.Inputs.TargetPropertiesArgs
///         {
///             Capabilities = new[]
///             {
///                 "grjapghdidoao",
///             },
///             ContextId = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}",
///             Description = "riabrxtvhlmizyhffdpjeyhvw",
///             DisplayName = "qjlbshhqzfmwxvvynibkoi",
///             HierarchyLevel = "octqptfirejhjfavlnfqeiikqx",
///             SolutionScope = "testname",
///             State = AzureNative.Edge.ResourceState.Active,
///             TargetSpecification = null,
///         },
///         ResourceGroupName = "rgconfigurationmanager",
///         Tags =
///         {
///             { "key612", "vtqzrk" },
///         },
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
/// 		_, err := edge.NewTarget(ctx, "target", &edge.TargetArgs{
/// 			ExtendedLocation: &edge.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("szjrwimeqyiue"),
/// 				Type: pulumi.String(edge.ExtendedLocationTypeEdgeZone),
/// 			},
/// 			Location: pulumi.String("kckloegmwsjgwtcl"),
/// 			Properties: &edge.TargetPropertiesArgs{
/// 				Capabilities: pulumi.StringArray{
/// 					pulumi.String("grjapghdidoao"),
/// 				},
/// 				ContextId:           pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"),
/// 				Description:         pulumi.String("riabrxtvhlmizyhffdpjeyhvw"),
/// 				DisplayName:         pulumi.String("qjlbshhqzfmwxvvynibkoi"),
/// 				HierarchyLevel:      pulumi.String("octqptfirejhjfavlnfqeiikqx"),
/// 				SolutionScope:       pulumi.String("testname"),
/// 				State:               pulumi.String(edge.ResourceStateActive),
/// 				TargetSpecification: pulumi.Any(map[string]interface{}{}),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgconfigurationmanager"),
/// 			Tags: pulumi.StringMap{
/// 				"key612": pulumi.String("vtqzrk"),
/// 			},
/// 			TargetName: pulumi.String("testname"),
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
/// import com.pulumi.azurenative.edge.Target;
/// import com.pulumi.azurenative.edge.TargetArgs;
/// import com.pulumi.azurenative.edge.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import com.pulumi.azurenative.edge.inputs.TargetPropertiesArgs;
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
///         var target = new Target("target", TargetArgs.builder()
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("szjrwimeqyiue")
///                 .type("EdgeZone")
///                 .build())
///             .location("kckloegmwsjgwtcl")
///             .properties(TargetPropertiesArgs.builder()
///                 .capabilities("grjapghdidoao")
///                 .contextId("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}")
///                 .description("riabrxtvhlmizyhffdpjeyhvw")
///                 .displayName("qjlbshhqzfmwxvvynibkoi")
///                 .hierarchyLevel("octqptfirejhjfavlnfqeiikqx")
///                 .solutionScope("testname")
///                 .state("active")
///                 .targetSpecification(Map.ofEntries(
///                 ))
///                 .build())
///             .resourceGroupName("rgconfigurationmanager")
///             .tags(Map.of("key612", "vtqzrk"))
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
/// const target = new azure_native.edge.Target("target", {
///     extendedLocation: {
///         name: "szjrwimeqyiue",
///         type: azure_native.edge.ExtendedLocationType.EdgeZone,
///     },
///     location: "kckloegmwsjgwtcl",
///     properties: {
///         capabilities: ["grjapghdidoao"],
///         contextId: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}",
///         description: "riabrxtvhlmizyhffdpjeyhvw",
///         displayName: "qjlbshhqzfmwxvvynibkoi",
///         hierarchyLevel: "octqptfirejhjfavlnfqeiikqx",
///         solutionScope: "testname",
///         state: azure_native.edge.ResourceState.Active,
///         targetSpecification: {},
///     },
///     resourceGroupName: "rgconfigurationmanager",
///     tags: {
///         key612: "vtqzrk",
///     },
///     targetName: "testname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// target = azure_native.edge.Target("target",
///     extended_location={
///         "name": "szjrwimeqyiue",
///         "type": azure_native.edge.ExtendedLocationType.EDGE_ZONE,
///     },
///     location="kckloegmwsjgwtcl",
///     properties={
///         "capabilities": ["grjapghdidoao"],
///         "context_id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}",
///         "description": "riabrxtvhlmizyhffdpjeyhvw",
///         "display_name": "qjlbshhqzfmwxvvynibkoi",
///         "hierarchy_level": "octqptfirejhjfavlnfqeiikqx",
///         "solution_scope": "testname",
///         "state": azure_native.edge.ResourceState.ACTIVE,
///         "target_specification": {},
///     },
///     resource_group_name="rgconfigurationmanager",
///     tags={
///         "key612": "vtqzrk",
///     },
///     target_name="testname")
///
/// ```
///
/// ```yaml
/// resources:
///   target:
///     type: azure-native:edge:Target
///     properties:
///       extendedLocation:
///         name: szjrwimeqyiue
///         type: EdgeZone
///       location: kckloegmwsjgwtcl
///       properties:
///         capabilities:
///           - grjapghdidoao
///         contextId: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
///         description: riabrxtvhlmizyhffdpjeyhvw
///         displayName: qjlbshhqzfmwxvvynibkoi
///         hierarchyLevel: octqptfirejhjfavlnfqeiikqx
///         solutionScope: testname
///         state: active
///         targetSpecification: {}
///       resourceGroupName: rgconfigurationmanager
///       tags:
///         key612: vtqzrk
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
/// $ pulumi import azure-native:edge:Target hcunxaczkbi /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/targets/{targetName}
/// ```
class Target extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;

  /// The complex type of the extended location.
  late final pulumi.Output<
    AzureResourceManagerCommonTypesExtendedLocationResponse?
  >
  extendedLocation;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<TargetPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Target].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Target]. {@macro pulumi_edge_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Target(String name, {TargetArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:edge:Target',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    extendedLocation =
        registerOutput<
          AzureResourceManagerCommonTypesExtendedLocationResponse?
        >('extendedLocation');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<TargetPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
