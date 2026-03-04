import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location_response.dart';
import 'system_data_response.dart';
import 'workflow_args.dart';
import 'workflow_properties_response.dart';

/// Workflow Resource
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Workflows_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workflow = new AzureNative.Edge.Workflow("workflow", new()
///     {
///         ContextName = "testname",
///         ExtendedLocation = new AzureNative.Edge.Inputs.AzureResourceManagerCommonTypesExtendedLocationArgs
///         {
///             Name = "szjrwimeqyiue",
///             Type = AzureNative.Edge.ExtendedLocationType.EdgeZone,
///         },
///         ResourceGroupName = "rgconfigurationmanager",
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
/// 		_, err := edge.NewWorkflow(ctx, "workflow", &edge.WorkflowArgs{
/// 			ContextName: pulumi.String("testname"),
/// 			ExtendedLocation: &edge.AzureResourceManagerCommonTypesExtendedLocationArgs{
/// 				Name: pulumi.String("szjrwimeqyiue"),
/// 				Type: pulumi.String(edge.ExtendedLocationTypeEdgeZone),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgconfigurationmanager"),
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
/// import com.pulumi.azurenative.edge.Workflow;
/// import com.pulumi.azurenative.edge.WorkflowArgs;
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
///         var workflow = new Workflow("workflow", WorkflowArgs.builder()
///             .contextName("testname")
///             .extendedLocation(AzureResourceManagerCommonTypesExtendedLocationArgs.builder()
///                 .name("szjrwimeqyiue")
///                 .type("EdgeZone")
///                 .build())
///             .resourceGroupName("rgconfigurationmanager")
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
/// const workflow = new azure_native.edge.Workflow("workflow", {
///     contextName: "testname",
///     extendedLocation: {
///         name: "szjrwimeqyiue",
///         type: azure_native.edge.ExtendedLocationType.EdgeZone,
///     },
///     resourceGroupName: "rgconfigurationmanager",
///     workflowName: "testname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workflow = azure_native.edge.Workflow("workflow",
///     context_name="testname",
///     extended_location={
///         "name": "szjrwimeqyiue",
///         "type": azure_native.edge.ExtendedLocationType.EDGE_ZONE,
///     },
///     resource_group_name="rgconfigurationmanager",
///     workflow_name="testname")
///
/// ```
///
/// ```yaml
/// resources:
///   workflow:
///     type: azure-native:edge:Workflow
///     properties:
///       contextName: testname
///       extendedLocation:
///         name: szjrwimeqyiue
///         type: EdgeZone
///       resourceGroupName: rgconfigurationmanager
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
/// $ pulumi import azure-native:edge:Workflow jcivjgtzcfdrfsq /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/contexts/{contextName}/workflows/{workflowName}
/// ```
class Workflow extends pulumi.CustomResource {
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
  late final pulumi.Output<WorkflowPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Workflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workflow]. {@macro pulumi_edge_workflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workflow(
    String name, {
    WorkflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:edge:Workflow',
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
    properties = registerOutput<WorkflowPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
