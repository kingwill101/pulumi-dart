import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_policy_args.dart';
import 'rai_policy_properties_response.dart';
import 'system_data_response.dart';

/// Azure OpenAI Content Filters resource.
///
/// Uses Azure REST API version 2025-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-04-01-preview.
///
/// Other available API versions: 2024-04-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Rai policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var raiPolicy = new AzureNative.MachineLearningServices.RaiPolicy("raiPolicy", new()
///     {
///         EndpointName = "Azure.OpenAI",
///         Properties = new AzureNative.MachineLearningServices.Inputs.RaiPolicyPropertiesArgs
///         {
///             BasePolicyName = "112",
///             CompletionBlocklists = new[]
///             {
///                 new AzureNative.MachineLearningServices.Inputs.RaiBlocklistConfigArgs
///                 {
///                     Blocking = false,
///                     BlocklistName = "blocklistName",
///                 },
///             },
///             ContentFilters = new[]
///             {
///                 new AzureNative.MachineLearningServices.Inputs.RaiPolicyContentFilterArgs
///                 {
///                     AllowedContentLevel = AzureNative.MachineLearningServices.AllowedContentLevel.Low,
///                     Blocking = false,
///                     Enabled = false,
///                     Name = "policyName",
///                     Source = AzureNative.MachineLearningServices.RaiPolicyContentSource.Prompt,
///                 },
///             },
///             Mode = AzureNative.MachineLearningServices.RaiPolicyMode.Blocking,
///             PromptBlocklists = new[]
///             {
///                 new AzureNative.MachineLearningServices.Inputs.RaiBlocklistConfigArgs
///                 {
///                     Blocking = false,
///                     BlocklistName = "blocklistName",
///                 },
///             },
///             Type = AzureNative.MachineLearningServices.RaiPolicyType.SystemManaged,
///         },
///         RaiPolicyName = "raiPolicyName",
///         ResourceGroupName = "test-rg",
///         WorkspaceName = "aml-workspace-name",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewRaiPolicy(ctx, "raiPolicy", &machinelearningservices.RaiPolicyArgs{
/// 			EndpointName: pulumi.String("Azure.OpenAI"),
/// 			Properties: &machinelearningservices.RaiPolicyPropertiesArgs{
/// 				BasePolicyName: pulumi.String("112"),
/// 				CompletionBlocklists: machinelearningservices.RaiBlocklistConfigArray{
/// 					&machinelearningservices.RaiBlocklistConfigArgs{
/// 						Blocking:      pulumi.Bool(false),
/// 						BlocklistName: pulumi.String("blocklistName"),
/// 					},
/// 				},
/// 				ContentFilters: machinelearningservices.RaiPolicyContentFilterArray{
/// 					&machinelearningservices.RaiPolicyContentFilterArgs{
/// 						AllowedContentLevel: pulumi.String(machinelearningservices.AllowedContentLevelLow),
/// 						Blocking:            pulumi.Bool(false),
/// 						Enabled:             pulumi.Bool(false),
/// 						Name:                pulumi.String("policyName"),
/// 						Source:              pulumi.String(machinelearningservices.RaiPolicyContentSourcePrompt),
/// 					},
/// 				},
/// 				Mode: pulumi.String(machinelearningservices.RaiPolicyModeBlocking),
/// 				PromptBlocklists: machinelearningservices.RaiBlocklistConfigArray{
/// 					&machinelearningservices.RaiBlocklistConfigArgs{
/// 						Blocking:      pulumi.Bool(false),
/// 						BlocklistName: pulumi.String("blocklistName"),
/// 					},
/// 				},
/// 				Type: pulumi.String(machinelearningservices.RaiPolicyTypeSystemManaged),
/// 			},
/// 			RaiPolicyName:     pulumi.String("raiPolicyName"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			WorkspaceName:     pulumi.String("aml-workspace-name"),
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
/// resource "azure-native_machinelearningservices_raipolicy" "raiPolicy" {
///   endpoint_name = "Azure.OpenAI"
///   properties = {
///     base_policy_name = "112"
///     completion_blocklists = [{
///       "blocking"      = false
///       "blocklistName" = "blocklistName"
///     }]
///     content_filters = [{
///       "allowedContentLevel" = "Low"
///       "blocking"            = false
///       "enabled"             = false
///       "name"                = "policyName"
///       "source"              = "Prompt"
///     }]
///     mode = "Blocking"
///     prompt_blocklists = [{
///       "blocking"      = false
///       "blocklistName" = "blocklistName"
///     }]
///     type = "SystemManaged"
///   }
///   rai_policy_name     = "raiPolicyName"
///   resource_group_name = "test-rg"
///   workspace_name      = "aml-workspace-name"
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
/// import com.pulumi.azurenative.machinelearningservices.RaiPolicy;
/// import com.pulumi.azurenative.machinelearningservices.RaiPolicyArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.RaiPolicyPropertiesArgs;
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
///         var raiPolicy = new RaiPolicy("raiPolicy", RaiPolicyArgs.builder()
///             .endpointName("Azure.OpenAI")
///             .properties(RaiPolicyPropertiesArgs.builder()
///                 .basePolicyName("112")
///                 .completionBlocklists(RaiBlocklistConfigArgs.builder()
///                     .blocking(false)
///                     .blocklistName("blocklistName")
///                     .build())
///                 .contentFilters(RaiPolicyContentFilterArgs.builder()
///                     .allowedContentLevel("Low")
///                     .blocking(false)
///                     .enabled(false)
///                     .name("policyName")
///                     .source("Prompt")
///                     .build())
///                 .mode("Blocking")
///                 .promptBlocklists(RaiBlocklistConfigArgs.builder()
///                     .blocking(false)
///                     .blocklistName("blocklistName")
///                     .build())
///                 .type("SystemManaged")
///                 .build())
///             .raiPolicyName("raiPolicyName")
///             .resourceGroupName("test-rg")
///             .workspaceName("aml-workspace-name")
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
/// const raiPolicy = new azure_native.machinelearningservices.RaiPolicy("raiPolicy", {
///     endpointName: "Azure.OpenAI",
///     properties: {
///         basePolicyName: "112",
///         completionBlocklists: [{
///             blocking: false,
///             blocklistName: "blocklistName",
///         }],
///         contentFilters: [{
///             allowedContentLevel: azure_native.machinelearningservices.AllowedContentLevel.Low,
///             blocking: false,
///             enabled: false,
///             name: "policyName",
///             source: azure_native.machinelearningservices.RaiPolicyContentSource.Prompt,
///         }],
///         mode: azure_native.machinelearningservices.RaiPolicyMode.Blocking,
///         promptBlocklists: [{
///             blocking: false,
///             blocklistName: "blocklistName",
///         }],
///         type: azure_native.machinelearningservices.RaiPolicyType.SystemManaged,
///     },
///     raiPolicyName: "raiPolicyName",
///     resourceGroupName: "test-rg",
///     workspaceName: "aml-workspace-name",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rai_policy = azure_native.machinelearningservices.RaiPolicy("raiPolicy",
///     endpoint_name="Azure.OpenAI",
///     properties={
///         "base_policy_name": "112",
///         "completion_blocklists": [{
///             "blocking": False,
///             "blocklist_name": "blocklistName",
///         }],
///         "content_filters": [{
///             "allowed_content_level": azure_native.machinelearningservices.AllowedContentLevel.LOW,
///             "blocking": False,
///             "enabled": False,
///             "name": "policyName",
///             "source": azure_native.machinelearningservices.RaiPolicyContentSource.PROMPT,
///         }],
///         "mode": azure_native.machinelearningservices.RaiPolicyMode.BLOCKING,
///         "prompt_blocklists": [{
///             "blocking": False,
///             "blocklist_name": "blocklistName",
///         }],
///         "type": azure_native.machinelearningservices.RaiPolicyType.SYSTEM_MANAGED,
///     },
///     rai_policy_name="raiPolicyName",
///     resource_group_name="test-rg",
///     workspace_name="aml-workspace-name")
///
/// ```
///
/// ```yaml
/// resources:
///   raiPolicy:
///     type: azure-native:machinelearningservices:RaiPolicy
///     properties:
///       endpointName: Azure.OpenAI
///       properties:
///         basePolicyName: '112'
///         completionBlocklists:
///           - blocking: false
///             blocklistName: blocklistName
///         contentFilters:
///           - allowedContentLevel: Low
///             blocking: false
///             enabled: false
///             name: policyName
///             source: Prompt
///         mode: Blocking
///         promptBlocklists:
///           - blocking: false
///             blocklistName: blocklistName
///         type: SystemManaged
///       raiPolicyName: raiPolicyName
///       resourceGroupName: test-rg
///       workspaceName: aml-workspace-name
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
/// $ pulumi import azure-native:machinelearningservices:RaiPolicy raiPolicyName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/endpoints/{endpointName}/raiPolicies/{raiPolicyName}
/// ```
class RaiPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure OpenAI Content Filters properties.
  late final pulumi.Output<RaiPolicyPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RaiPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RaiPolicy]. {@macro pulumi_machinelearningservices_rai_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RaiPolicy(
    String name, {
    RaiPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:RaiPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RaiPolicyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RaiPolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
