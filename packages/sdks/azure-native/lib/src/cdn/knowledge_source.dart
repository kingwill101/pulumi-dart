import 'package:pulumi/pulumi.dart' as pulumi;
import 'knowledge_source_args.dart';
import 'system_data_response.dart';

/// Defines a knowledge source resource for a web agent.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Knowledge Source
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var knowledgeSource = new AzureNative.Cdn.KnowledgeSource("knowledgeSource", new()
///     {
///         Description = "Website knowledge source for FAQ content",
///         KnowledgeSourceName = "myKnowledgeSource1",
///         ResourceGroupName = "RG",
///         SourceType = AzureNative.Cdn.KnowledgeSourceType.SchemaOrgMarkup,
///         UpdateFrequency = AzureNative.Cdn.KnowledgeSourceUpdateFrequency.EverySixHours,
///         Url = "https://example.com/faq",
///         WebAgentName = "myWebAgent1",
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
/// 		_, err := cdn.NewKnowledgeSource(ctx, "knowledgeSource", &cdn.KnowledgeSourceArgs{
/// 			Description:         pulumi.String("Website knowledge source for FAQ content"),
/// 			KnowledgeSourceName: pulumi.String("myKnowledgeSource1"),
/// 			ResourceGroupName:   pulumi.String("RG"),
/// 			SourceType:          pulumi.String(cdn.KnowledgeSourceTypeSchemaOrgMarkup),
/// 			UpdateFrequency:     pulumi.String(cdn.KnowledgeSourceUpdateFrequencyEverySixHours),
/// 			Url:                 pulumi.String("https://example.com/faq"),
/// 			WebAgentName:        pulumi.String("myWebAgent1"),
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
/// import com.pulumi.azurenative.cdn.KnowledgeSource;
/// import com.pulumi.azurenative.cdn.KnowledgeSourceArgs;
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
///         var knowledgeSource = new KnowledgeSource("knowledgeSource", KnowledgeSourceArgs.builder()
///             .description("Website knowledge source for FAQ content")
///             .knowledgeSourceName("myKnowledgeSource1")
///             .resourceGroupName("RG")
///             .sourceType("SchemaOrgMarkup")
///             .updateFrequency("EverySixHours")
///             .url("https://example.com/faq")
///             .webAgentName("myWebAgent1")
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
/// const knowledgeSource = new azure_native.cdn.KnowledgeSource("knowledgeSource", {
///     description: "Website knowledge source for FAQ content",
///     knowledgeSourceName: "myKnowledgeSource1",
///     resourceGroupName: "RG",
///     sourceType: azure_native.cdn.KnowledgeSourceType.SchemaOrgMarkup,
///     updateFrequency: azure_native.cdn.KnowledgeSourceUpdateFrequency.EverySixHours,
///     url: "https://example.com/faq",
///     webAgentName: "myWebAgent1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// knowledge_source = azure_native.cdn.KnowledgeSource("knowledgeSource",
///     description="Website knowledge source for FAQ content",
///     knowledge_source_name="myKnowledgeSource1",
///     resource_group_name="RG",
///     source_type=azure_native.cdn.KnowledgeSourceType.SCHEMA_ORG_MARKUP,
///     update_frequency=azure_native.cdn.KnowledgeSourceUpdateFrequency.EVERY_SIX_HOURS,
///     url="https://example.com/faq",
///     web_agent_name="myWebAgent1")
///
/// ```
///
/// ```yaml
/// resources:
///   knowledgeSource:
///     type: azure-native:cdn:KnowledgeSource
///     properties:
///       description: Website knowledge source for FAQ content
///       knowledgeSourceName: myKnowledgeSource1
///       resourceGroupName: RG
///       sourceType: SchemaOrgMarkup
///       updateFrequency: EverySixHours
///       url: https://example.com/faq
///       webAgentName: myWebAgent1
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
/// $ pulumi import azure-native:cdn:KnowledgeSource myKnowledgeSource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/webAgents/{webAgentName}/knowledgeSources/{knowledgeSourceName}
/// ```
class KnowledgeSource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Description of the knowledge source.
  late final pulumi.Output<String?> description;
  /// The last time the knowledge source was updated.
  late final pulumi.Output<String> lastRefreshedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning status of the knowledge source.
  late final pulumi.Output<String> provisioningState;
  /// Format or origin of the knowledge source.
  late final pulumi.Output<String> sourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Specifies the units of time for scheduling update intervals for the knowledge source.
  late final pulumi.Output<String?> updateFrequency;
  /// Endpoint or location of the knowledge source.
  late final pulumi.Output<String> url;

  /// Creates a new [KnowledgeSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KnowledgeSource]. {@macro pulumi_cdn_knowledge_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KnowledgeSource(
    String name, {
    KnowledgeSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:KnowledgeSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    lastRefreshedTime = registerOutput<String>('lastRefreshedTime');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sourceType = registerOutput<String>('sourceType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    updateFrequency = registerOutput<String?>('updateFrequency');
    url = registerOutput<String>('url');
  }
}
