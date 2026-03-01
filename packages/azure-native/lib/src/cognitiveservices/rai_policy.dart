import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_policy_args.dart';
import 'rai_policy_properties_response.dart';
import 'system_data_response.dart';

/// Cognitive Services RaiPolicy.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutRaiPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var raiPolicy = new AzureNative.CognitiveServices.RaiPolicy("raiPolicy", new()
///     {
///         AccountName = "accountName",
///         Properties = new AzureNative.CognitiveServices.Inputs.RaiPolicyPropertiesArgs
///         {
///             BasePolicyName = "Microsoft.Default",
///             ContentFilters = new[]
///             {
///                 new AzureNative.CognitiveServices.Inputs.RaiPolicyContentFilterArgs
///                 {
///                     Blocking = false,
///                     Enabled = false,
///                     Name = "Hate",
///                     SeverityThreshold = AzureNative.CognitiveServices.ContentLevel.High,
///                     Source = AzureNative.CognitiveServices.RaiPolicyContentSource.Prompt,
///                 },
///                 new AzureNative.CognitiveServices.Inputs.RaiPolicyContentFilterArgs
///                 {
///                     Blocking = true,
///                     Enabled = true,
///                     Name = "Hate",
///                     SeverityThreshold = AzureNative.CognitiveServices.ContentLevel.Medium,
///                     Source = AzureNative.CognitiveServices.RaiPolicyContentSource.Completion,
///                 },
///                 new AzureNative.CognitiveServices.Inputs.RaiPolicyContentFilterArgs
///                 {
///                     Blocking = true,
///                     Enabled = true,
///                     Name = "Sexual",
///                     SeverityThreshold = AzureNative.CognitiveServices.ContentLevel.High,
///                     Source = AzureNative.CognitiveServices.RaiPolicyContentSource.Prompt,
///                 },
///                 new AzureNative.CognitiveServices.Inputs.RaiPolicyContentFilterArgs
///                 {
///                     Blocking = true,
///                     Enabled = true,
///                     Name = "Sexual",
///                     SeverityThreshold = AzureNative.CognitiveServices.ContentLevel.Medium,
///                     Source = AzureNative.CognitiveServices.RaiPolicyContentSource.Completion,
///                 },
///                 new AzureNative.CognitiveServices.Inputs.RaiPolicyContentFilterArgs
///                 {
///                     Blocking = true,
///                     Enabled = true,
///                     Name = "Selfharm",
///                     SeverityThreshold = AzureNative.CognitiveServices.ContentLevel.High,
///                     Source = AzureNative.CognitiveServices.RaiPolicyContentSource.Prompt,
///                 },
///                 new AzureNative.CognitiveServices.Inputs.RaiPolicyContentFilterArgs
///                 {
///                     Blocking = true,
///                     Enabled = true,
///                     Name = "Selfharm",
///                     SeverityThreshold = AzureNative.CognitiveServices.ContentLevel.Medium,
///                     Source = AzureNative.CognitiveServices.RaiPolicyContentSource.Completion,
///                 },
///                 new AzureNative.CognitiveServices.Inputs.RaiPolicyContentFilterArgs
///                 {
///                     Blocking = true,
///                     Enabled = true,
///                     Name = "Violence",
///                     SeverityThreshold = AzureNative.CognitiveServices.ContentLevel.Medium,
///                     Source = AzureNative.CognitiveServices.RaiPolicyContentSource.Prompt,
///                 },
///                 new AzureNative.CognitiveServices.Inputs.RaiPolicyContentFilterArgs
///                 {
///                     Blocking = true,
///                     Enabled = true,
///                     Name = "Violence",
///                     SeverityThreshold = AzureNative.CognitiveServices.ContentLevel.Medium,
///                     Source = AzureNative.CognitiveServices.RaiPolicyContentSource.Completion,
///                 },
///                 new AzureNative.CognitiveServices.Inputs.RaiPolicyContentFilterArgs
///                 {
///                     Blocking = true,
///                     Enabled = true,
///                     Name = "Jailbreak",
///                     Source = AzureNative.CognitiveServices.RaiPolicyContentSource.Prompt,
///                 },
///                 new AzureNative.CognitiveServices.Inputs.RaiPolicyContentFilterArgs
///                 {
///                     Blocking = true,
///                     Enabled = true,
///                     Name = "Protected Material Text",
///                     Source = AzureNative.CognitiveServices.RaiPolicyContentSource.Completion,
///                 },
///                 new AzureNative.CognitiveServices.Inputs.RaiPolicyContentFilterArgs
///                 {
///                     Blocking = true,
///                     Enabled = true,
///                     Name = "Protected Material Code",
///                     Source = AzureNative.CognitiveServices.RaiPolicyContentSource.Completion,
///                 },
///                 new AzureNative.CognitiveServices.Inputs.RaiPolicyContentFilterArgs
///                 {
///                     Blocking = true,
///                     Enabled = true,
///                     Name = "Profanity",
///                     Source = AzureNative.CognitiveServices.RaiPolicyContentSource.Prompt,
///                 },
///             },
///             Mode = AzureNative.CognitiveServices.RaiPolicyMode.Asynchronous_filter,
///         },
///         RaiPolicyName = "raiPolicyName",
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
/// 		_, err := cognitiveservices.NewRaiPolicy(ctx, "raiPolicy", &cognitiveservices.RaiPolicyArgs{
/// 			AccountName: pulumi.String("accountName"),
/// 			Properties: &cognitiveservices.RaiPolicyPropertiesArgs{
/// 				BasePolicyName: pulumi.String("Microsoft.Default"),
/// 				ContentFilters: cognitiveservices.RaiPolicyContentFilterArray{
/// 					&cognitiveservices.RaiPolicyContentFilterArgs{
/// 						Blocking:          pulumi.Bool(false),
/// 						Enabled:           pulumi.Bool(false),
/// 						Name:              pulumi.String("Hate"),
/// 						SeverityThreshold: pulumi.String(cognitiveservices.ContentLevelHigh),
/// 						Source:            pulumi.String(cognitiveservices.RaiPolicyContentSourcePrompt),
/// 					},
/// 					&cognitiveservices.RaiPolicyContentFilterArgs{
/// 						Blocking:          pulumi.Bool(true),
/// 						Enabled:           pulumi.Bool(true),
/// 						Name:              pulumi.String("Hate"),
/// 						SeverityThreshold: pulumi.String(cognitiveservices.ContentLevelMedium),
/// 						Source:            pulumi.String(cognitiveservices.RaiPolicyContentSourceCompletion),
/// 					},
/// 					&cognitiveservices.RaiPolicyContentFilterArgs{
/// 						Blocking:          pulumi.Bool(true),
/// 						Enabled:           pulumi.Bool(true),
/// 						Name:              pulumi.String("Sexual"),
/// 						SeverityThreshold: pulumi.String(cognitiveservices.ContentLevelHigh),
/// 						Source:            pulumi.String(cognitiveservices.RaiPolicyContentSourcePrompt),
/// 					},
/// 					&cognitiveservices.RaiPolicyContentFilterArgs{
/// 						Blocking:          pulumi.Bool(true),
/// 						Enabled:           pulumi.Bool(true),
/// 						Name:              pulumi.String("Sexual"),
/// 						SeverityThreshold: pulumi.String(cognitiveservices.ContentLevelMedium),
/// 						Source:            pulumi.String(cognitiveservices.RaiPolicyContentSourceCompletion),
/// 					},
/// 					&cognitiveservices.RaiPolicyContentFilterArgs{
/// 						Blocking:          pulumi.Bool(true),
/// 						Enabled:           pulumi.Bool(true),
/// 						Name:              pulumi.String("Selfharm"),
/// 						SeverityThreshold: pulumi.String(cognitiveservices.ContentLevelHigh),
/// 						Source:            pulumi.String(cognitiveservices.RaiPolicyContentSourcePrompt),
/// 					},
/// 					&cognitiveservices.RaiPolicyContentFilterArgs{
/// 						Blocking:          pulumi.Bool(true),
/// 						Enabled:           pulumi.Bool(true),
/// 						Name:              pulumi.String("Selfharm"),
/// 						SeverityThreshold: pulumi.String(cognitiveservices.ContentLevelMedium),
/// 						Source:            pulumi.String(cognitiveservices.RaiPolicyContentSourceCompletion),
/// 					},
/// 					&cognitiveservices.RaiPolicyContentFilterArgs{
/// 						Blocking:          pulumi.Bool(true),
/// 						Enabled:           pulumi.Bool(true),
/// 						Name:              pulumi.String("Violence"),
/// 						SeverityThreshold: pulumi.String(cognitiveservices.ContentLevelMedium),
/// 						Source:            pulumi.String(cognitiveservices.RaiPolicyContentSourcePrompt),
/// 					},
/// 					&cognitiveservices.RaiPolicyContentFilterArgs{
/// 						Blocking:          pulumi.Bool(true),
/// 						Enabled:           pulumi.Bool(true),
/// 						Name:              pulumi.String("Violence"),
/// 						SeverityThreshold: pulumi.String(cognitiveservices.ContentLevelMedium),
/// 						Source:            pulumi.String(cognitiveservices.RaiPolicyContentSourceCompletion),
/// 					},
/// 					&cognitiveservices.RaiPolicyContentFilterArgs{
/// 						Blocking: pulumi.Bool(true),
/// 						Enabled:  pulumi.Bool(true),
/// 						Name:     pulumi.String("Jailbreak"),
/// 						Source:   pulumi.String(cognitiveservices.RaiPolicyContentSourcePrompt),
/// 					},
/// 					&cognitiveservices.RaiPolicyContentFilterArgs{
/// 						Blocking: pulumi.Bool(true),
/// 						Enabled:  pulumi.Bool(true),
/// 						Name:     pulumi.String("Protected Material Text"),
/// 						Source:   pulumi.String(cognitiveservices.RaiPolicyContentSourceCompletion),
/// 					},
/// 					&cognitiveservices.RaiPolicyContentFilterArgs{
/// 						Blocking: pulumi.Bool(true),
/// 						Enabled:  pulumi.Bool(true),
/// 						Name:     pulumi.String("Protected Material Code"),
/// 						Source:   pulumi.String(cognitiveservices.RaiPolicyContentSourceCompletion),
/// 					},
/// 					&cognitiveservices.RaiPolicyContentFilterArgs{
/// 						Blocking: pulumi.Bool(true),
/// 						Enabled:  pulumi.Bool(true),
/// 						Name:     pulumi.String("Profanity"),
/// 						Source:   pulumi.String(cognitiveservices.RaiPolicyContentSourcePrompt),
/// 					},
/// 				},
/// 				Mode: pulumi.String(cognitiveservices.RaiPolicyMode_Asynchronous_filter),
/// 			},
/// 			RaiPolicyName:     pulumi.String("raiPolicyName"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
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
/// import com.pulumi.azurenative.cognitiveservices.RaiPolicy;
/// import com.pulumi.azurenative.cognitiveservices.RaiPolicyArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.RaiPolicyPropertiesArgs;
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
///         var raiPolicy = new RaiPolicy("raiPolicy", RaiPolicyArgs.builder()
///             .accountName("accountName")
///             .properties(RaiPolicyPropertiesArgs.builder()
///                 .basePolicyName("Microsoft.Default")
///                 .contentFilters(
///                     RaiPolicyContentFilterArgs.builder()
///                         .blocking(false)
///                         .enabled(false)
///                         .name("Hate")
///                         .severityThreshold("High")
///                         .source("Prompt")
///                         .build(),
///                     RaiPolicyContentFilterArgs.builder()
///                         .blocking(true)
///                         .enabled(true)
///                         .name("Hate")
///                         .severityThreshold("Medium")
///                         .source("Completion")
///                         .build(),
///                     RaiPolicyContentFilterArgs.builder()
///                         .blocking(true)
///                         .enabled(true)
///                         .name("Sexual")
///                         .severityThreshold("High")
///                         .source("Prompt")
///                         .build(),
///                     RaiPolicyContentFilterArgs.builder()
///                         .blocking(true)
///                         .enabled(true)
///                         .name("Sexual")
///                         .severityThreshold("Medium")
///                         .source("Completion")
///                         .build(),
///                     RaiPolicyContentFilterArgs.builder()
///                         .blocking(true)
///                         .enabled(true)
///                         .name("Selfharm")
///                         .severityThreshold("High")
///                         .source("Prompt")
///                         .build(),
///                     RaiPolicyContentFilterArgs.builder()
///                         .blocking(true)
///                         .enabled(true)
///                         .name("Selfharm")
///                         .severityThreshold("Medium")
///                         .source("Completion")
///                         .build(),
///                     RaiPolicyContentFilterArgs.builder()
///                         .blocking(true)
///                         .enabled(true)
///                         .name("Violence")
///                         .severityThreshold("Medium")
///                         .source("Prompt")
///                         .build(),
///                     RaiPolicyContentFilterArgs.builder()
///                         .blocking(true)
///                         .enabled(true)
///                         .name("Violence")
///                         .severityThreshold("Medium")
///                         .source("Completion")
///                         .build(),
///                     RaiPolicyContentFilterArgs.builder()
///                         .blocking(true)
///                         .enabled(true)
///                         .name("Jailbreak")
///                         .source("Prompt")
///                         .build(),
///                     RaiPolicyContentFilterArgs.builder()
///                         .blocking(true)
///                         .enabled(true)
///                         .name("Protected Material Text")
///                         .source("Completion")
///                         .build(),
///                     RaiPolicyContentFilterArgs.builder()
///                         .blocking(true)
///                         .enabled(true)
///                         .name("Protected Material Code")
///                         .source("Completion")
///                         .build(),
///                     RaiPolicyContentFilterArgs.builder()
///                         .blocking(true)
///                         .enabled(true)
///                         .name("Profanity")
///                         .source("Prompt")
///                         .build())
///                 .mode("Asynchronous_filter")
///                 .build())
///             .raiPolicyName("raiPolicyName")
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
/// const raiPolicy = new azure_native.cognitiveservices.RaiPolicy("raiPolicy", {
///     accountName: "accountName",
///     properties: {
///         basePolicyName: "Microsoft.Default",
///         contentFilters: [
///             {
///                 blocking: false,
///                 enabled: false,
///                 name: "Hate",
///                 severityThreshold: azure_native.cognitiveservices.ContentLevel.High,
///                 source: azure_native.cognitiveservices.RaiPolicyContentSource.Prompt,
///             },
///             {
///                 blocking: true,
///                 enabled: true,
///                 name: "Hate",
///                 severityThreshold: azure_native.cognitiveservices.ContentLevel.Medium,
///                 source: azure_native.cognitiveservices.RaiPolicyContentSource.Completion,
///             },
///             {
///                 blocking: true,
///                 enabled: true,
///                 name: "Sexual",
///                 severityThreshold: azure_native.cognitiveservices.ContentLevel.High,
///                 source: azure_native.cognitiveservices.RaiPolicyContentSource.Prompt,
///             },
///             {
///                 blocking: true,
///                 enabled: true,
///                 name: "Sexual",
///                 severityThreshold: azure_native.cognitiveservices.ContentLevel.Medium,
///                 source: azure_native.cognitiveservices.RaiPolicyContentSource.Completion,
///             },
///             {
///                 blocking: true,
///                 enabled: true,
///                 name: "Selfharm",
///                 severityThreshold: azure_native.cognitiveservices.ContentLevel.High,
///                 source: azure_native.cognitiveservices.RaiPolicyContentSource.Prompt,
///             },
///             {
///                 blocking: true,
///                 enabled: true,
///                 name: "Selfharm",
///                 severityThreshold: azure_native.cognitiveservices.ContentLevel.Medium,
///                 source: azure_native.cognitiveservices.RaiPolicyContentSource.Completion,
///             },
///             {
///                 blocking: true,
///                 enabled: true,
///                 name: "Violence",
///                 severityThreshold: azure_native.cognitiveservices.ContentLevel.Medium,
///                 source: azure_native.cognitiveservices.RaiPolicyContentSource.Prompt,
///             },
///             {
///                 blocking: true,
///                 enabled: true,
///                 name: "Violence",
///                 severityThreshold: azure_native.cognitiveservices.ContentLevel.Medium,
///                 source: azure_native.cognitiveservices.RaiPolicyContentSource.Completion,
///             },
///             {
///                 blocking: true,
///                 enabled: true,
///                 name: "Jailbreak",
///                 source: azure_native.cognitiveservices.RaiPolicyContentSource.Prompt,
///             },
///             {
///                 blocking: true,
///                 enabled: true,
///                 name: "Protected Material Text",
///                 source: azure_native.cognitiveservices.RaiPolicyContentSource.Completion,
///             },
///             {
///                 blocking: true,
///                 enabled: true,
///                 name: "Protected Material Code",
///                 source: azure_native.cognitiveservices.RaiPolicyContentSource.Completion,
///             },
///             {
///                 blocking: true,
///                 enabled: true,
///                 name: "Profanity",
///                 source: azure_native.cognitiveservices.RaiPolicyContentSource.Prompt,
///             },
///         ],
///         mode: azure_native.cognitiveservices.RaiPolicyMode.Asynchronous_filter,
///     },
///     raiPolicyName: "raiPolicyName",
///     resourceGroupName: "resourceGroupName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rai_policy = azure_native.cognitiveservices.RaiPolicy("raiPolicy",
///     account_name="accountName",
///     properties={
///         "base_policy_name": "Microsoft.Default",
///         "content_filters": [
///             {
///                 "blocking": False,
///                 "enabled": False,
///                 "name": "Hate",
///                 "severity_threshold": azure_native.cognitiveservices.ContentLevel.HIGH,
///                 "source": azure_native.cognitiveservices.RaiPolicyContentSource.PROMPT,
///             },
///             {
///                 "blocking": True,
///                 "enabled": True,
///                 "name": "Hate",
///                 "severity_threshold": azure_native.cognitiveservices.ContentLevel.MEDIUM,
///                 "source": azure_native.cognitiveservices.RaiPolicyContentSource.COMPLETION,
///             },
///             {
///                 "blocking": True,
///                 "enabled": True,
///                 "name": "Sexual",
///                 "severity_threshold": azure_native.cognitiveservices.ContentLevel.HIGH,
///                 "source": azure_native.cognitiveservices.RaiPolicyContentSource.PROMPT,
///             },
///             {
///                 "blocking": True,
///                 "enabled": True,
///                 "name": "Sexual",
///                 "severity_threshold": azure_native.cognitiveservices.ContentLevel.MEDIUM,
///                 "source": azure_native.cognitiveservices.RaiPolicyContentSource.COMPLETION,
///             },
///             {
///                 "blocking": True,
///                 "enabled": True,
///                 "name": "Selfharm",
///                 "severity_threshold": azure_native.cognitiveservices.ContentLevel.HIGH,
///                 "source": azure_native.cognitiveservices.RaiPolicyContentSource.PROMPT,
///             },
///             {
///                 "blocking": True,
///                 "enabled": True,
///                 "name": "Selfharm",
///                 "severity_threshold": azure_native.cognitiveservices.ContentLevel.MEDIUM,
///                 "source": azure_native.cognitiveservices.RaiPolicyContentSource.COMPLETION,
///             },
///             {
///                 "blocking": True,
///                 "enabled": True,
///                 "name": "Violence",
///                 "severity_threshold": azure_native.cognitiveservices.ContentLevel.MEDIUM,
///                 "source": azure_native.cognitiveservices.RaiPolicyContentSource.PROMPT,
///             },
///             {
///                 "blocking": True,
///                 "enabled": True,
///                 "name": "Violence",
///                 "severity_threshold": azure_native.cognitiveservices.ContentLevel.MEDIUM,
///                 "source": azure_native.cognitiveservices.RaiPolicyContentSource.COMPLETION,
///             },
///             {
///                 "blocking": True,
///                 "enabled": True,
///                 "name": "Jailbreak",
///                 "source": azure_native.cognitiveservices.RaiPolicyContentSource.PROMPT,
///             },
///             {
///                 "blocking": True,
///                 "enabled": True,
///                 "name": "Protected Material Text",
///                 "source": azure_native.cognitiveservices.RaiPolicyContentSource.COMPLETION,
///             },
///             {
///                 "blocking": True,
///                 "enabled": True,
///                 "name": "Protected Material Code",
///                 "source": azure_native.cognitiveservices.RaiPolicyContentSource.COMPLETION,
///             },
///             {
///                 "blocking": True,
///                 "enabled": True,
///                 "name": "Profanity",
///                 "source": azure_native.cognitiveservices.RaiPolicyContentSource.PROMPT,
///             },
///         ],
///         "mode": azure_native.cognitiveservices.RaiPolicyMode.ASYNCHRONOUS_FILTER,
///     },
///     rai_policy_name="raiPolicyName",
///     resource_group_name="resourceGroupName")
///
/// ```
///
/// ```yaml
/// resources:
///   raiPolicy:
///     type: azure-native:cognitiveservices:RaiPolicy
///     properties:
///       accountName: accountName
///       properties:
///         basePolicyName: Microsoft.Default
///         contentFilters:
///           - blocking: false
///             enabled: false
///             name: Hate
///             severityThreshold: High
///             source: Prompt
///           - blocking: true
///             enabled: true
///             name: Hate
///             severityThreshold: Medium
///             source: Completion
///           - blocking: true
///             enabled: true
///             name: Sexual
///             severityThreshold: High
///             source: Prompt
///           - blocking: true
///             enabled: true
///             name: Sexual
///             severityThreshold: Medium
///             source: Completion
///           - blocking: true
///             enabled: true
///             name: Selfharm
///             severityThreshold: High
///             source: Prompt
///           - blocking: true
///             enabled: true
///             name: Selfharm
///             severityThreshold: Medium
///             source: Completion
///           - blocking: true
///             enabled: true
///             name: Violence
///             severityThreshold: Medium
///             source: Prompt
///           - blocking: true
///             enabled: true
///             name: Violence
///             severityThreshold: Medium
///             source: Completion
///           - blocking: true
///             enabled: true
///             name: Jailbreak
///             source: Prompt
///           - blocking: true
///             enabled: true
///             name: Protected Material Text
///             source: Completion
///           - blocking: true
///             enabled: true
///             name: Protected Material Code
///             source: Completion
///           - blocking: true
///             enabled: true
///             name: Profanity
///             source: Prompt
///         mode: Asynchronous_filter
///       raiPolicyName: raiPolicyName
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
/// $ pulumi import azure-native:cognitiveservices:RaiPolicy raiPolicyName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/raiPolicies/{raiPolicyName}
/// ```
class RaiPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Etag.
  late final pulumi.Output<String> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of Cognitive Services RaiPolicy.
  late final pulumi.Output<RaiPolicyPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RaiPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RaiPolicy]. {@macro pulumi_cognitiveservices_rai_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RaiPolicy(
    String name, {
    RaiPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cognitiveservices:RaiPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<RaiPolicyPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
