import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_tool_label_args.dart';
import 'rai_tool_label_properties_response.dart';
import 'system_data_response.dart';

/// Cognitive Services RAI Tool Label resource.
///
/// Uses Azure REST API version 2025-10-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutRaiToolLabel
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var raiToolLabel = new AzureNative.CognitiveServices.RaiToolLabel("raiToolLabel", new()
///     {
///         AccountName = "accountName",
///         Properties = new AzureNative.CognitiveServices.Inputs.RaiToolLabelPropertiesArgs
///         {
///             AccountScope = new AzureNative.CognitiveServices.Inputs.RaiToolLabelPropertiesAccountScopeArgs
///             {
///                 LabelValues =
///                 {
///                     { "confidentiality", "low" },
///                 },
///             },
///             ProjectScopes = new[]
///             {
///                 new AzureNative.CognitiveServices.Inputs.RaiToolLabelPropertiesProjectScopesArgs
///                 {
///                     LabelValues =
///                     {
///                         { "confidentiality", "low" },
///                     },
///                     Project = "test-project",
///                 },
///                 new AzureNative.CognitiveServices.Inputs.RaiToolLabelPropertiesProjectScopesArgs
///                 {
///                     LabelValues =
///                     {
///                         { "confidentiality", "low" },
///                     },
///                     Project = "sample-project",
///                 },
///             },
///             ToolConnectionName = "Web_Search",
///         },
///         RaiToolConnectionName = "Web_Search",
///         ResourceGroupName = "resourceGroupName",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewRaiToolLabel(ctx, "raiToolLabel", &cognitiveservices.RaiToolLabelArgs{
/// 			AccountName: pulumi.String("accountName"),
/// 			Properties: &cognitiveservices.RaiToolLabelPropertiesArgs{
/// 				AccountScope: &cognitiveservices.RaiToolLabelPropertiesAccountScopeArgs{
/// 					LabelValues: pulumi.StringMap{
/// 						"confidentiality": pulumi.String("low"),
/// 					},
/// 				},
/// 				ProjectScopes: cognitiveservices.RaiToolLabelPropertiesProjectScopesArray{
/// 					&cognitiveservices.RaiToolLabelPropertiesProjectScopesArgs{
/// 						LabelValues: pulumi.StringMap{
/// 							"confidentiality": pulumi.String("low"),
/// 						},
/// 						Project: pulumi.String("test-project"),
/// 					},
/// 					&cognitiveservices.RaiToolLabelPropertiesProjectScopesArgs{
/// 						LabelValues: pulumi.StringMap{
/// 							"confidentiality": pulumi.String("low"),
/// 						},
/// 						Project: pulumi.String("sample-project"),
/// 					},
/// 				},
/// 				ToolConnectionName: pulumi.String("Web_Search"),
/// 			},
/// 			RaiToolConnectionName: pulumi.String("Web_Search"),
/// 			ResourceGroupName:     pulumi.String("resourceGroupName"),
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
/// import com.pulumi.azurenative.cognitiveservices.RaiToolLabel;
/// import com.pulumi.azurenative.cognitiveservices.RaiToolLabelArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.RaiToolLabelPropertiesArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.RaiToolLabelPropertiesAccountScopeArgs;
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
///         var raiToolLabel = new RaiToolLabel("raiToolLabel", RaiToolLabelArgs.builder()
///             .accountName("accountName")
///             .properties(RaiToolLabelPropertiesArgs.builder()
///                 .accountScope(RaiToolLabelPropertiesAccountScopeArgs.builder()
///                     .labelValues(Map.of("confidentiality", "low"))
///                     .build())
///                 .projectScopes(
///                     RaiToolLabelPropertiesProjectScopesArgs.builder()
///                         .labelValues(Map.of("confidentiality", "low"))
///                         .project("test-project")
///                         .build(),
///                     RaiToolLabelPropertiesProjectScopesArgs.builder()
///                         .labelValues(Map.of("confidentiality", "low"))
///                         .project("sample-project")
///                         .build())
///                 .toolConnectionName("Web_Search")
///                 .build())
///             .raiToolConnectionName("Web_Search")
///             .resourceGroupName("resourceGroupName")
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
/// const raiToolLabel = new azure_native.cognitiveservices.RaiToolLabel("raiToolLabel", {
///     accountName: "accountName",
///     properties: {
///         accountScope: {
///             labelValues: {
///                 confidentiality: "low",
///             },
///         },
///         projectScopes: [
///             {
///                 labelValues: {
///                     confidentiality: "low",
///                 },
///                 project: "test-project",
///             },
///             {
///                 labelValues: {
///                     confidentiality: "low",
///                 },
///                 project: "sample-project",
///             },
///         ],
///         toolConnectionName: "Web_Search",
///     },
///     raiToolConnectionName: "Web_Search",
///     resourceGroupName: "resourceGroupName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rai_tool_label = azure_native.cognitiveservices.RaiToolLabel("raiToolLabel",
///     account_name="accountName",
///     properties={
///         "account_scope": {
///             "label_values": {
///                 "confidentiality": "low",
///             },
///         },
///         "project_scopes": [
///             {
///                 "label_values": {
///                     "confidentiality": "low",
///                 },
///                 "project": "test-project",
///             },
///             {
///                 "label_values": {
///                     "confidentiality": "low",
///                 },
///                 "project": "sample-project",
///             },
///         ],
///         "tool_connection_name": "Web_Search",
///     },
///     rai_tool_connection_name="Web_Search",
///     resource_group_name="resourceGroupName")
///
/// ```
///
/// ```yaml
/// resources:
///   raiToolLabel:
///     type: azure-native:cognitiveservices:RaiToolLabel
///     properties:
///       accountName: accountName
///       properties:
///         accountScope:
///           labelValues:
///             confidentiality: low
///         projectScopes:
///           - labelValues:
///               confidentiality: low
///             project: test-project
///           - labelValues:
///               confidentiality: low
///             project: sample-project
///         toolConnectionName: Web_Search
///       raiToolConnectionName: Web_Search
///       resourceGroupName: resourceGroupName
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
/// $ pulumi import azure-native:cognitiveservices:RaiToolLabel Web_Search /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/raiToolLabels/{raiToolConnectionName}
/// ```
class RaiToolLabel extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource Etag.
  late final pulumi.Output<String> etag;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of the RAI Tool Label.
  late final pulumi.Output<RaiToolLabelPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RaiToolLabel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RaiToolLabel]. {@macro pulumi_cognitiveservices_rai_tool_label_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RaiToolLabel(
    String name, {
    RaiToolLabelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cognitiveservices:RaiToolLabel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RaiToolLabelPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RaiToolLabelPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
