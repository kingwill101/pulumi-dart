import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_args.dart';
import 'guardrail_content_policy_config.dart';
import 'guardrail_contextual_grounding_policy_config.dart';
import 'guardrail_cross_region_config.dart';
import 'guardrail_sensitive_information_policy_config.dart';
import 'guardrail_state.dart';
import 'guardrail_timeouts.dart';
import 'guardrail_topic_policy_config.dart';
import 'guardrail_word_policy_config.dart';

/// Resource for managing an Amazon Bedrock Guardrail.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.Guardrail("example", {
///     name: "example",
///     blockedInputMessaging: "example",
///     blockedOutputsMessaging: "example",
///     description: "example",
///     contentPolicyConfig: {
///         filtersConfigs: [{
///             inputStrength: "MEDIUM",
///             outputStrength: "MEDIUM",
///             type: "HATE",
///         }],
///         tierConfigs: [{
///             tierName: "STANDARD",
///         }],
///     },
///     sensitiveInformationPolicyConfig: {
///         piiEntitiesConfigs: [{
///             action: "BLOCK",
///             inputAction: "BLOCK",
///             outputAction: "ANONYMIZE",
///             inputEnabled: true,
///             outputEnabled: true,
///             type: "NAME",
///         }],
///         regexesConfigs: [{
///             action: "BLOCK",
///             inputAction: "BLOCK",
///             outputAction: "BLOCK",
///             inputEnabled: true,
///             outputEnabled: false,
///             description: "example regex",
///             name: "regex_example",
///             pattern: "^\\d{3}-\\d{2}-\\d{4}$",
///         }],
///     },
///     topicPolicyConfig: {
///         topicsConfigs: [{
///             name: "investment_topic",
///             examples: ["Where should I invest my money ?"],
///             type: "DENY",
///             definition: "Investment advice refers to inquiries, guidance, or recommendations regarding the management or allocation of funds or assets with the goal of generating returns .",
///         }],
///         tierConfigs: [{
///             tierName: "CLASSIC",
///         }],
///     },
///     wordPolicyConfig: {
///         managedWordListsConfigs: [{
///             type: "PROFANITY",
///         }],
///         wordsConfigs: [{
///             text: "HATE",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.Guardrail("example",
///     name="example",
///     blocked_input_messaging="example",
///     blocked_outputs_messaging="example",
///     description="example",
///     content_policy_config={
///         "filters_configs": [{
///             "input_strength": "MEDIUM",
///             "output_strength": "MEDIUM",
///             "type": "HATE",
///         }],
///         "tier_configs": [{
///             "tier_name": "STANDARD",
///         }],
///     },
///     sensitive_information_policy_config={
///         "pii_entities_configs": [{
///             "action": "BLOCK",
///             "input_action": "BLOCK",
///             "output_action": "ANONYMIZE",
///             "input_enabled": True,
///             "output_enabled": True,
///             "type": "NAME",
///         }],
///         "regexes_configs": [{
///             "action": "BLOCK",
///             "input_action": "BLOCK",
///             "output_action": "BLOCK",
///             "input_enabled": True,
///             "output_enabled": False,
///             "description": "example regex",
///             "name": "regex_example",
///             "pattern": "^\\d{3}-\\d{2}-\\d{4}$",
///         }],
///     },
///     topic_policy_config={
///         "topics_configs": [{
///             "name": "investment_topic",
///             "examples": ["Where should I invest my money ?"],
///             "type": "DENY",
///             "definition": "Investment advice refers to inquiries, guidance, or recommendations regarding the management or allocation of funds or assets with the goal of generating returns .",
///         }],
///         "tier_configs": [{
///             "tier_name": "CLASSIC",
///         }],
///     },
///     word_policy_config={
///         "managed_word_lists_configs": [{
///             "type": "PROFANITY",
///         }],
///         "words_configs": [{
///             "text": "HATE",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.Guardrail("example", new()
///     {
///         Name = "example",
///         BlockedInputMessaging = "example",
///         BlockedOutputsMessaging = "example",
///         Description = "example",
///         ContentPolicyConfig = new Aws.Bedrock.Inputs.GuardrailContentPolicyConfigArgs
///         {
///             FiltersConfigs = new[]
///             {
///                 new Aws.Bedrock.Inputs.GuardrailContentPolicyConfigFiltersConfigArgs
///                 {
///                     InputStrength = "MEDIUM",
///                     OutputStrength = "MEDIUM",
///                     Type = "HATE",
///                 },
///             },
///             TierConfigs = new[]
///             {
///                 new Aws.Bedrock.Inputs.GuardrailContentPolicyConfigTierConfigArgs
///                 {
///                     TierName = "STANDARD",
///                 },
///             },
///         },
///         SensitiveInformationPolicyConfig = new Aws.Bedrock.Inputs.GuardrailSensitiveInformationPolicyConfigArgs
///         {
///             PiiEntitiesConfigs = new[]
///             {
///                 new Aws.Bedrock.Inputs.GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigArgs
///                 {
///                     Action = "BLOCK",
///                     InputAction = "BLOCK",
///                     OutputAction = "ANONYMIZE",
///                     InputEnabled = true,
///                     OutputEnabled = true,
///                     Type = "NAME",
///                 },
///             },
///             RegexesConfigs = new[]
///             {
///                 new Aws.Bedrock.Inputs.GuardrailSensitiveInformationPolicyConfigRegexesConfigArgs
///                 {
///                     Action = "BLOCK",
///                     InputAction = "BLOCK",
///                     OutputAction = "BLOCK",
///                     InputEnabled = true,
///                     OutputEnabled = false,
///                     Description = "example regex",
///                     Name = "regex_example",
///                     Pattern = "^\\d{3}-\\d{2}-\\d{4}$",
///                 },
///             },
///         },
///         TopicPolicyConfig = new Aws.Bedrock.Inputs.GuardrailTopicPolicyConfigArgs
///         {
///             TopicsConfigs = new[]
///             {
///                 new Aws.Bedrock.Inputs.GuardrailTopicPolicyConfigTopicsConfigArgs
///                 {
///                     Name = "investment_topic",
///                     Examples = new[]
///                     {
///                         "Where should I invest my money ?",
///                     },
///                     Type = "DENY",
///                     Definition = "Investment advice refers to inquiries, guidance, or recommendations regarding the management or allocation of funds or assets with the goal of generating returns .",
///                 },
///             },
///             TierConfigs = new[]
///             {
///                 new Aws.Bedrock.Inputs.GuardrailTopicPolicyConfigTierConfigArgs
///                 {
///                     TierName = "CLASSIC",
///                 },
///             },
///         },
///         WordPolicyConfig = new Aws.Bedrock.Inputs.GuardrailWordPolicyConfigArgs
///         {
///             ManagedWordListsConfigs = new[]
///             {
///                 new Aws.Bedrock.Inputs.GuardrailWordPolicyConfigManagedWordListsConfigArgs
///                 {
///                     Type = "PROFANITY",
///                 },
///             },
///             WordsConfigs = new[]
///             {
///                 new Aws.Bedrock.Inputs.GuardrailWordPolicyConfigWordsConfigArgs
///                 {
///                     Text = "HATE",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewGuardrail(ctx, "example", &bedrock.GuardrailArgs{
/// 			Name:                    pulumi.String("example"),
/// 			BlockedInputMessaging:   pulumi.String("example"),
/// 			BlockedOutputsMessaging: pulumi.String("example"),
/// 			Description:             pulumi.String("example"),
/// 			ContentPolicyConfig: &bedrock.GuardrailContentPolicyConfigArgs{
/// 				FiltersConfigs: bedrock.GuardrailContentPolicyConfigFiltersConfigArray{
/// 					&bedrock.GuardrailContentPolicyConfigFiltersConfigArgs{
/// 						InputStrength:  pulumi.String("MEDIUM"),
/// 						OutputStrength: pulumi.String("MEDIUM"),
/// 						Type:           pulumi.String("HATE"),
/// 					},
/// 				},
/// 				TierConfigs: bedrock.GuardrailContentPolicyConfigTierConfigArray{
/// 					&bedrock.GuardrailContentPolicyConfigTierConfigArgs{
/// 						TierName: pulumi.String("STANDARD"),
/// 					},
/// 				},
/// 			},
/// 			SensitiveInformationPolicyConfig: &bedrock.GuardrailSensitiveInformationPolicyConfigArgs{
/// 				PiiEntitiesConfigs: bedrock.GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigArray{
/// 					&bedrock.GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigArgs{
/// 						Action:        pulumi.String("BLOCK"),
/// 						InputAction:   pulumi.String("BLOCK"),
/// 						OutputAction:  pulumi.String("ANONYMIZE"),
/// 						InputEnabled:  pulumi.Bool(true),
/// 						OutputEnabled: pulumi.Bool(true),
/// 						Type:          pulumi.String("NAME"),
/// 					},
/// 				},
/// 				RegexesConfigs: bedrock.GuardrailSensitiveInformationPolicyConfigRegexesConfigArray{
/// 					&bedrock.GuardrailSensitiveInformationPolicyConfigRegexesConfigArgs{
/// 						Action:        pulumi.String("BLOCK"),
/// 						InputAction:   pulumi.String("BLOCK"),
/// 						OutputAction:  pulumi.String("BLOCK"),
/// 						InputEnabled:  pulumi.Bool(true),
/// 						OutputEnabled: pulumi.Bool(false),
/// 						Description:   pulumi.String("example regex"),
/// 						Name:          pulumi.String("regex_example"),
/// 						Pattern:       pulumi.String("^\\d{3}-\\d{2}-\\d{4}$"),
/// 					},
/// 				},
/// 			},
/// 			TopicPolicyConfig: &bedrock.GuardrailTopicPolicyConfigArgs{
/// 				TopicsConfigs: bedrock.GuardrailTopicPolicyConfigTopicsConfigArray{
/// 					&bedrock.GuardrailTopicPolicyConfigTopicsConfigArgs{
/// 						Name: pulumi.String("investment_topic"),
/// 						Examples: pulumi.StringArray{
/// 							pulumi.String("Where should I invest my money ?"),
/// 						},
/// 						Type:       pulumi.String("DENY"),
/// 						Definition: pulumi.String("Investment advice refers to inquiries, guidance, or recommendations regarding the management or allocation of funds or assets with the goal of generating returns ."),
/// 					},
/// 				},
/// 				TierConfigs: bedrock.GuardrailTopicPolicyConfigTierConfigArray{
/// 					&bedrock.GuardrailTopicPolicyConfigTierConfigArgs{
/// 						TierName: pulumi.String("CLASSIC"),
/// 					},
/// 				},
/// 			},
/// 			WordPolicyConfig: &bedrock.GuardrailWordPolicyConfigArgs{
/// 				ManagedWordListsConfigs: bedrock.GuardrailWordPolicyConfigManagedWordListsConfigArray{
/// 					&bedrock.GuardrailWordPolicyConfigManagedWordListsConfigArgs{
/// 						Type: pulumi.String("PROFANITY"),
/// 					},
/// 				},
/// 				WordsConfigs: bedrock.GuardrailWordPolicyConfigWordsConfigArray{
/// 					&bedrock.GuardrailWordPolicyConfigWordsConfigArgs{
/// 						Text: pulumi.String("HATE"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.Guardrail;
/// import com.pulumi.aws.bedrock.GuardrailArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailContentPolicyConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailSensitiveInformationPolicyConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailTopicPolicyConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.GuardrailWordPolicyConfigArgs;
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
///         var example = new Guardrail("example", GuardrailArgs.builder()
///             .name("example")
///             .blockedInputMessaging("example")
///             .blockedOutputsMessaging("example")
///             .description("example")
///             .contentPolicyConfig(GuardrailContentPolicyConfigArgs.builder()
///                 .filtersConfigs(GuardrailContentPolicyConfigFiltersConfigArgs.builder()
///                     .inputStrength("MEDIUM")
///                     .outputStrength("MEDIUM")
///                     .type("HATE")
///                     .build())
///                 .tierConfigs(GuardrailContentPolicyConfigTierConfigArgs.builder()
///                     .tierName("STANDARD")
///                     .build())
///                 .build())
///             .sensitiveInformationPolicyConfig(GuardrailSensitiveInformationPolicyConfigArgs.builder()
///                 .piiEntitiesConfigs(GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfigArgs.builder()
///                     .action("BLOCK")
///                     .inputAction("BLOCK")
///                     .outputAction("ANONYMIZE")
///                     .inputEnabled(true)
///                     .outputEnabled(true)
///                     .type("NAME")
///                     .build())
///                 .regexesConfigs(GuardrailSensitiveInformationPolicyConfigRegexesConfigArgs.builder()
///                     .action("BLOCK")
///                     .inputAction("BLOCK")
///                     .outputAction("BLOCK")
///                     .inputEnabled(true)
///                     .outputEnabled(false)
///                     .description("example regex")
///                     .name("regex_example")
///                     .pattern("^\\d{3}-\\d{2}-\\d{4}$")
///                     .build())
///                 .build())
///             .topicPolicyConfig(GuardrailTopicPolicyConfigArgs.builder()
///                 .topicsConfigs(GuardrailTopicPolicyConfigTopicsConfigArgs.builder()
///                     .name("investment_topic")
///                     .examples("Where should I invest my money ?")
///                     .type("DENY")
///                     .definition("Investment advice refers to inquiries, guidance, or recommendations regarding the management or allocation of funds or assets with the goal of generating returns .")
///                     .build())
///                 .tierConfigs(GuardrailTopicPolicyConfigTierConfigArgs.builder()
///                     .tierName("CLASSIC")
///                     .build())
///                 .build())
///             .wordPolicyConfig(GuardrailWordPolicyConfigArgs.builder()
///                 .managedWordListsConfigs(GuardrailWordPolicyConfigManagedWordListsConfigArgs.builder()
///                     .type("PROFANITY")
///                     .build())
///                 .wordsConfigs(GuardrailWordPolicyConfigWordsConfigArgs.builder()
///                     .text("HATE")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:Guardrail
///     properties:
///       name: example
///       blockedInputMessaging: example
///       blockedOutputsMessaging: example
///       description: example
///       contentPolicyConfig:
///         filtersConfigs:
///           - inputStrength: MEDIUM
///             outputStrength: MEDIUM
///             type: HATE
///         tierConfigs:
///           - tierName: STANDARD
///       sensitiveInformationPolicyConfig:
///         piiEntitiesConfigs:
///           - action: BLOCK
///             inputAction: BLOCK
///             outputAction: ANONYMIZE
///             inputEnabled: true
///             outputEnabled: true
///             type: NAME
///         regexesConfigs:
///           - action: BLOCK
///             inputAction: BLOCK
///             outputAction: BLOCK
///             inputEnabled: true
///             outputEnabled: false
///             description: example regex
///             name: regex_example
///             pattern: ^\d{3}-\d{2}-\d{4}$
///       topicPolicyConfig:
///         topicsConfigs:
///           - name: investment_topic
///             examples:
///               - Where should I invest my money ?
///             type: DENY
///             definition: Investment advice refers to inquiries, guidance, or recommendations regarding the management or allocation of funds or assets with the goal of generating returns .
///         tierConfigs:
///           - tierName: CLASSIC
///       wordPolicyConfig:
///         managedWordListsConfigs:
///           - type: PROFANITY
///         wordsConfigs:
///           - text: HATE
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Bedrock Guardrail using using a comma-delimited string of `guardrail_id` and `version`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/guardrail:Guardrail example guardrail-id-12345678,DRAFT
/// ```
class Guardrail extends pulumi.CustomResource {
  /// Message to return when the guardrail blocks a prompt.
  late final pulumi.Output<String> blockedInputMessaging;
  /// Message to return when the guardrail blocks a model response.
  late final pulumi.Output<String> blockedOutputsMessaging;
  /// Content policy config for a guardrail. See Content Policy Config for more information.
  late final pulumi.Output<GuardrailContentPolicyConfig?> contentPolicyConfig;
  /// Contextual grounding policy config for a guardrail. See Contextual Grounding Policy Config for more information.
  late final pulumi.Output<GuardrailContextualGroundingPolicyConfig?> contextualGroundingPolicyConfig;
  /// Unix epoch timestamp in seconds for when the Guardrail was created.
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<GuardrailCrossRegionConfig?> crossRegionConfig;
  /// Description of the guardrail or its version.
  late final pulumi.Output<String> description;
  /// ARN of the Guardrail.
  late final pulumi.Output<String> guardrailArn;
  /// ID of the Guardrail.
  late final pulumi.Output<String> guardrailId;
  /// The KMS key with which the guardrail was encrypted at rest.
  late final pulumi.Output<String?> kmsKeyArn;
  /// Name of the guardrail.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Sensitive information policy config for a guardrail. See Sensitive Information Policy Config for more information.
  late final pulumi.Output<GuardrailSensitiveInformationPolicyConfig?> sensitiveInformationPolicyConfig;
  /// Status of the Bedrock Guardrail. One of `READY`, `FAILED`.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<GuardrailTimeouts?> timeouts;
  /// Topic policy config for a guardrail. See Topic Policy Config for more information.
  late final pulumi.Output<GuardrailTopicPolicyConfig?> topicPolicyConfig;
  /// Version of the Guardrail.
  late final pulumi.Output<String> version;
  /// Word policy config for a guardrail. See Word Policy Config for more information.
  late final pulumi.Output<GuardrailWordPolicyConfig?> wordPolicyConfig;

  /// Creates a new [Guardrail].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Guardrail]. {@macro pulumi_bedrock_guardrail_guardrail_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Guardrail(
    String name, {
    GuardrailArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/guardrail:Guardrail',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blockedInputMessaging = registerOutput<String>('blockedInputMessaging');
    this.blockedOutputsMessaging = registerOutput<String>('blockedOutputsMessaging');
    this.contentPolicyConfig = registerOutput<GuardrailContentPolicyConfig?>('contentPolicyConfig');
    this.contextualGroundingPolicyConfig = registerOutput<GuardrailContextualGroundingPolicyConfig?>('contextualGroundingPolicyConfig');
    this.createdAt = registerOutput<String>('createdAt');
    this.crossRegionConfig = registerOutput<GuardrailCrossRegionConfig?>('crossRegionConfig');
    this.description = registerOutput<String>('description');
    this.guardrailArn = registerOutput<String>('guardrailArn');
    this.guardrailId = registerOutput<String>('guardrailId');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sensitiveInformationPolicyConfig = registerOutput<GuardrailSensitiveInformationPolicyConfig?>('sensitiveInformationPolicyConfig');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<GuardrailTimeouts?>('timeouts');
    this.topicPolicyConfig = registerOutput<GuardrailTopicPolicyConfig?>('topicPolicyConfig');
    this.version = registerOutput<String>('version');
    this.wordPolicyConfig = registerOutput<GuardrailWordPolicyConfig?>('wordPolicyConfig');
  }

  /// Gets an existing [Guardrail] resource's state with the given [name] and [id].
  static Guardrail get(
    String name,
    pulumi.Input<String> id, {
    GuardrailState? state,
  }) {
    return Guardrail._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Guardrail._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/guardrail:Guardrail',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blockedInputMessaging = registerOutput<String>('blockedInputMessaging');
    this.blockedOutputsMessaging = registerOutput<String>('blockedOutputsMessaging');
    this.contentPolicyConfig = registerOutput<GuardrailContentPolicyConfig?>('contentPolicyConfig');
    this.contextualGroundingPolicyConfig = registerOutput<GuardrailContextualGroundingPolicyConfig?>('contextualGroundingPolicyConfig');
    this.createdAt = registerOutput<String>('createdAt');
    this.crossRegionConfig = registerOutput<GuardrailCrossRegionConfig?>('crossRegionConfig');
    this.description = registerOutput<String>('description');
    this.guardrailArn = registerOutput<String>('guardrailArn');
    this.guardrailId = registerOutput<String>('guardrailId');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sensitiveInformationPolicyConfig = registerOutput<GuardrailSensitiveInformationPolicyConfig?>('sensitiveInformationPolicyConfig');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<GuardrailTimeouts?>('timeouts');
    this.topicPolicyConfig = registerOutput<GuardrailTopicPolicyConfig?>('topicPolicyConfig');
    this.version = registerOutput<String>('version');
    this.wordPolicyConfig = registerOutput<GuardrailWordPolicyConfig?>('wordPolicyConfig');
  }
}
