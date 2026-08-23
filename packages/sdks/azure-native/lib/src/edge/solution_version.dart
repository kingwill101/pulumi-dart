import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'solution_version_args.dart';
import 'solution_version_properties_response.dart';
import 'system_data_response.dart';

/// Solution Version Resource. It has the resolved configuration along with edge specification.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01, 2025-08-15-preview, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SolutionVersions_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var solutionVersion = new AzureNative.Edge.SolutionVersion("solutionVersion", new()
///     {
///         ExtendedLocation = new AzureNative.Edge.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "szjrwimeqyiue",
///             Type = AzureNative.Edge.ExtendedLocationType.EdgeZone,
///         },
///         Properties = new AzureNative.Edge.Inputs.SolutionVersionPropertiesArgs
///         {
///             Specification = null,
///         },
///         ResourceGroupName = "rgconfigurationmanager",
///         SolutionName = "testname",
///         SolutionVersionName = "testname",
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
/// 		_, err := edge.NewSolutionVersion(ctx, "solutionVersion", &edge.SolutionVersionArgs{
/// 			ExtendedLocation: &edge.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("szjrwimeqyiue"),
/// 				Type: pulumi.String(edge.ExtendedLocationTypeEdgeZone),
/// 			},
/// 			Properties: &edge.SolutionVersionPropertiesArgs{
/// 				Specification: pulumi.Any(map[string]interface{}{}),
/// 			},
/// 			ResourceGroupName:   pulumi.String("rgconfigurationmanager"),
/// 			SolutionName:        pulumi.String("testname"),
/// 			SolutionVersionName: pulumi.String("testname"),
/// 			TargetName:          pulumi.String("testname"),
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
/// resource "azure-native_edge_solutionversion" "solutionVersion" {
///   extended_location = {
///     name = "szjrwimeqyiue"
///     type = "EdgeZone"
///   }
///   properties = {
///     specification = {}
///   }
///   resource_group_name   = "rgconfigurationmanager"
///   solution_name         = "testname"
///   solution_version_name = "testname"
///   target_name           = "testname"
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
/// import com.pulumi.azurenative.edge.SolutionVersion;
/// import com.pulumi.azurenative.edge.SolutionVersionArgs;
/// import com.pulumi.azurenative.edge.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
/// import com.pulumi.azurenative.edge.inputs.SolutionVersionPropertiesArgs;
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
///         var solutionVersion = new SolutionVersion("solutionVersion", SolutionVersionArgs.builder()
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("szjrwimeqyiue")
///                 .type("EdgeZone")
///                 .build())
///             .properties(SolutionVersionPropertiesArgs.builder()
///                 .specification(Map.ofEntries(
///                 ))
///                 .build())
///             .resourceGroupName("rgconfigurationmanager")
///             .solutionName("testname")
///             .solutionVersionName("testname")
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
/// const solutionVersion = new azure_native.edge.SolutionVersion("solutionVersion", {
///     extendedLocation: {
///         name: "szjrwimeqyiue",
///         type: azure_native.edge.ExtendedLocationType.EdgeZone,
///     },
///     properties: {
///         specification: {},
///     },
///     resourceGroupName: "rgconfigurationmanager",
///     solutionName: "testname",
///     solutionVersionName: "testname",
///     targetName: "testname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// solution_version = azure_native.edge.SolutionVersion("solutionVersion",
///     extended_location={
///         "name": "szjrwimeqyiue",
///         "type": azure_native.edge.ExtendedLocationType.EDGE_ZONE,
///     },
///     properties={
///         "specification": {},
///     },
///     resource_group_name="rgconfigurationmanager",
///     solution_name="testname",
///     solution_version_name="testname",
///     target_name="testname")
///
/// ```
///
/// ```yaml
/// resources:
///   solutionVersion:
///     type: azure-native:edge:SolutionVersion
///     properties:
///       extendedLocation:
///         name: szjrwimeqyiue
///         type: EdgeZone
///       properties:
///         specification: {}
///       resourceGroupName: rgconfigurationmanager
///       solutionName: testname
///       solutionVersionName: testname
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
/// $ pulumi import azure-native:edge:SolutionVersion lk /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/targets/{targetName}/solutions/{solutionName}/versions/{solutionVersionName}
/// ```
class SolutionVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The complex type of the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SolutionVersionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SolutionVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SolutionVersion]. {@macro pulumi_edge_solution_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SolutionVersion(
    String name, {
    SolutionVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:edge:SolutionVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<SolutionVersionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SolutionVersionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
