import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_action_execution_filter_args.dart';
import 'system_data_response.dart';

/// Concrete tracked resource types can be created by aliasing this type using a specific property type.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2024-07-22-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateEdgeActionExecutionFilters
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var edgeActionExecutionFilter = new AzureNative.Cdn.EdgeActionExecutionFilter("edgeActionExecutionFilter", new()
///     {
///         EdgeActionName = "edgeAction1",
///         ExecutionFilter = "executionFilter1",
///         ExecutionFilterIdentifierHeaderName = "header-key",
///         ExecutionFilterIdentifierHeaderValue = "header-value",
///         Location = "global",
///         ResourceGroupName = "testrg",
///         VersionId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/testrg/providers/Microsoft.Cdn/EdgeActions/edgeAction1/versions/version1",
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewEdgeActionExecutionFilter(ctx, "edgeActionExecutionFilter", &cdn.EdgeActionExecutionFilterArgs{
/// 			EdgeActionName:                       pulumi.String("edgeAction1"),
/// 			ExecutionFilter:                      pulumi.String("executionFilter1"),
/// 			ExecutionFilterIdentifierHeaderName:  pulumi.String("header-key"),
/// 			ExecutionFilterIdentifierHeaderValue: pulumi.String("header-value"),
/// 			Location:                             pulumi.String("global"),
/// 			ResourceGroupName:                    pulumi.String("testrg"),
/// 			VersionId:                            pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/testrg/providers/Microsoft.Cdn/EdgeActions/edgeAction1/versions/version1"),
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
/// resource "azure-native_cdn_edgeactionexecutionfilter" "edgeActionExecutionFilter" {
///   edge_action_name                         = "edgeAction1"
///   execution_filter                         = "executionFilter1"
///   execution_filter_identifier_header_name  = "header-key"
///   execution_filter_identifier_header_value = "header-value"
///   location                                 = "global"
///   resource_group_name                      = "testrg"
///   version_id                               = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/testrg/providers/Microsoft.Cdn/EdgeActions/edgeAction1/versions/version1"
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
/// import com.pulumi.azurenative.cdn.EdgeActionExecutionFilter;
/// import com.pulumi.azurenative.cdn.EdgeActionExecutionFilterArgs;
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
///         var edgeActionExecutionFilter = new EdgeActionExecutionFilter("edgeActionExecutionFilter", EdgeActionExecutionFilterArgs.builder()
///             .edgeActionName("edgeAction1")
///             .executionFilter("executionFilter1")
///             .executionFilterIdentifierHeaderName("header-key")
///             .executionFilterIdentifierHeaderValue("header-value")
///             .location("global")
///             .resourceGroupName("testrg")
///             .versionId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/testrg/providers/Microsoft.Cdn/EdgeActions/edgeAction1/versions/version1")
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
/// const edgeActionExecutionFilter = new azure_native.cdn.EdgeActionExecutionFilter("edgeActionExecutionFilter", {
///     edgeActionName: "edgeAction1",
///     executionFilter: "executionFilter1",
///     executionFilterIdentifierHeaderName: "header-key",
///     executionFilterIdentifierHeaderValue: "header-value",
///     location: "global",
///     resourceGroupName: "testrg",
///     versionId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/testrg/providers/Microsoft.Cdn/EdgeActions/edgeAction1/versions/version1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// edge_action_execution_filter = azure_native.cdn.EdgeActionExecutionFilter("edgeActionExecutionFilter",
///     edge_action_name="edgeAction1",
///     execution_filter="executionFilter1",
///     execution_filter_identifier_header_name="header-key",
///     execution_filter_identifier_header_value="header-value",
///     location="global",
///     resource_group_name="testrg",
///     version_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/testrg/providers/Microsoft.Cdn/EdgeActions/edgeAction1/versions/version1")
///
/// ```
///
/// ```yaml
/// resources:
///   edgeActionExecutionFilter:
///     type: azure-native:cdn:EdgeActionExecutionFilter
///     properties:
///       edgeActionName: edgeAction1
///       executionFilter: executionFilter1
///       executionFilterIdentifierHeaderName: header-key
///       executionFilterIdentifierHeaderValue: header-value
///       location: global
///       resourceGroupName: testrg
///       versionId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/testrg/providers/Microsoft.Cdn/EdgeActions/edgeAction1/versions/version1
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
/// $ pulumi import azure-native:cdn:EdgeActionExecutionFilter executionFilter1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/edgeActions/{edgeActionName}/executionFilters/{executionFilter}
/// ```
class EdgeActionExecutionFilter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Custom Header Key associated with the execution filter
  late final pulumi.Output<String> executionFilterIdentifierHeaderName;
  /// Custom Header Value associated with the execution filter
  late final pulumi.Output<String> executionFilterIdentifierHeaderValue;
  /// The last update time in UTC for the execution filter
  late final pulumi.Output<String> lastUpdateTime;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The referenced versionId of the edgeaction version
  late final pulumi.Output<String> versionId;

  /// Creates a new [EdgeActionExecutionFilter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EdgeActionExecutionFilter]. {@macro pulumi_cdn_edge_action_execution_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EdgeActionExecutionFilter(
    String name, {
    EdgeActionExecutionFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:EdgeActionExecutionFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    executionFilterIdentifierHeaderName = registerOutput<String>('executionFilterIdentifierHeaderName');
    executionFilterIdentifierHeaderValue = registerOutput<String>('executionFilterIdentifierHeaderValue');
    lastUpdateTime = registerOutput<String>('lastUpdateTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    versionId = registerOutput<String>('versionId');
  }

  /// Creates a typed reference to an existing [EdgeActionExecutionFilter] resource.
  EdgeActionExecutionFilter.reference(String urn)
    : super(
        'azure-native:cdn:EdgeActionExecutionFilter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    executionFilterIdentifierHeaderName = registerOutput<String>('executionFilterIdentifierHeaderName');
    executionFilterIdentifierHeaderValue = registerOutput<String>('executionFilterIdentifierHeaderValue');
    lastUpdateTime = registerOutput<String>('lastUpdateTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    versionId = registerOutput<String>('versionId');
  }
}
