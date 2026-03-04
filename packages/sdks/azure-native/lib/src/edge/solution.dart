import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location_response.dart';
import 'solution_args.dart';
import 'solution_properties_response.dart';
import 'system_data_response.dart';

/// Solution Resource attached to a Target
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Solutions_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var solution = new AzureNative.Edge.Solution("solution", new()
///     {
///         ExtendedLocation = new AzureNative.Edge.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "szjrwimeqyiue",
///             Type = AzureNative.Edge.ExtendedLocationType.EdgeZone,
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
/// 		_, err := edge.NewSolution(ctx, "solution", &edge.SolutionArgs{
/// 			ExtendedLocation: &edge.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("szjrwimeqyiue"),
/// 				Type: pulumi.String(edge.ExtendedLocationTypeEdgeZone),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.edge.Solution;
/// import com.pulumi.azurenative.edge.SolutionArgs;
/// import com.pulumi.azurenative.edge.inputs.AzureResourceManagerCommonTypesExtendedLocationArgs;
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
///         var solution = new Solution("solution", SolutionArgs.builder()
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("szjrwimeqyiue")
///                 .type("EdgeZone")
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
/// const solution = new azure_native.edge.Solution("solution", {
///     extendedLocation: {
///         name: "szjrwimeqyiue",
///         type: azure_native.edge.ExtendedLocationType.EdgeZone,
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
/// solution = azure_native.edge.Solution("solution",
///     extended_location={
///         "name": "szjrwimeqyiue",
///         "type": azure_native.edge.ExtendedLocationType.EDGE_ZONE,
///     },
///     resource_group_name="rgconfigurationmanager",
///     solution_name="testname",
///     target_name="testname")
///
/// ```
///
/// ```yaml
/// resources:
///   solution:
///     type: azure-native:edge:Solution
///     properties:
///       extendedLocation:
///         name: szjrwimeqyiue
///         type: EdgeZone
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
/// $ pulumi import azure-native:edge:Solution ysvzlramfranmepecvpmpthbhxh /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/targets/{targetName}/solutions/{solutionName}
/// ```
class Solution extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;

  /// The complex type of the extended location.
  late final pulumi.Output<
    AzureResourceManagerCommonTypesExtendedLocationResponse?
  >
  extendedLocation;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<SolutionPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Solution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Solution]. {@macro pulumi_edge_solution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Solution(
    String name, {
    SolutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:edge:Solution',
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
    this.name = registerOutput<String>('name');
    properties = registerOutput<SolutionPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
