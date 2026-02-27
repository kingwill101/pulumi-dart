import 'package:pulumi/pulumi.dart';
import '../guardrail_content_policy_config/guardrail_content_policy_config.dart';
import '../guardrail_contextual_grounding_policy_config/guardrail_contextual_grounding_policy_config.dart';
import '../guardrail_cross_region_config/guardrail_cross_region_config.dart';
import '../guardrail_sensitive_information_policy_config/guardrail_sensitive_information_policy_config.dart';
import '../guardrail_timeouts/guardrail_timeouts.dart';
import '../guardrail_topic_policy_config/guardrail_topic_policy_config.dart';
import '../guardrail_word_policy_config/guardrail_word_policy_config.dart';
import 'guardrail_args.dart';

/// Resource for managing an Amazon Bedrock Guardrail.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Bedrock Guardrail using using a comma-delimited string of `guardrail_id` and `version`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/guardrail:Guardrail example guardrail-id-12345678,DRAFT
/// ```
class Guardrail extends CustomResource {
  /// Message to return when the guardrail blocks a prompt.
  late final Output<String> blockedInputMessaging;

  /// Message to return when the guardrail blocks a model response.
  late final Output<String> blockedOutputsMessaging;

  /// Content policy config for a guardrail. See Content Policy Config for more information.
  late final Output<GuardrailContentPolicyConfig?> contentPolicyConfig;

  /// Contextual grounding policy config for a guardrail. See Contextual Grounding Policy Config for more information.
  late final Output<GuardrailContextualGroundingPolicyConfig?>
      contextualGroundingPolicyConfig;

  /// Unix epoch timestamp in seconds for when the Guardrail was created.
  late final Output<String> createdAt;
  late final Output<GuardrailCrossRegionConfig?> crossRegionConfig;

  /// Description of the guardrail or its version.
  late final Output<String> description;

  /// ARN of the Guardrail.
  late final Output<String> guardrailArn;

  /// ID of the Guardrail.
  late final Output<String> guardrailId;

  /// The KMS key with which the guardrail was encrypted at rest.
  late final Output<String?> kmsKeyArn;

  /// Name of the guardrail.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Sensitive information policy config for a guardrail. See Sensitive Information Policy Config for more information.
  late final Output<GuardrailSensitiveInformationPolicyConfig?>
      sensitiveInformationPolicyConfig;

  /// Status of the Bedrock Guardrail. One of `READY`, `FAILED`.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<GuardrailTimeouts?> timeouts;

  /// Topic policy config for a guardrail. See Topic Policy Config for more information.
  late final Output<GuardrailTopicPolicyConfig?> topicPolicyConfig;

  /// Version of the Guardrail.
  late final Output<String> version;

  /// Word policy config for a guardrail. See Word Policy Config for more information.
  late final Output<GuardrailWordPolicyConfig?> wordPolicyConfig;

  Guardrail(
    String name, {
    GuardrailArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/guardrail:Guardrail',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.blockedInputMessaging =
        registerOutput<String>('blockedInputMessaging');
    this.blockedOutputsMessaging =
        registerOutput<String>('blockedOutputsMessaging');
    this.contentPolicyConfig =
        registerOutput<GuardrailContentPolicyConfig?>('contentPolicyConfig');
    this.contextualGroundingPolicyConfig =
        registerOutput<GuardrailContextualGroundingPolicyConfig?>(
            'contextualGroundingPolicyConfig');
    this.createdAt = registerOutput<String>('createdAt');
    this.crossRegionConfig =
        registerOutput<GuardrailCrossRegionConfig?>('crossRegionConfig');
    this.description = registerOutput<String>('description');
    this.guardrailArn = registerOutput<String>('guardrailArn');
    this.guardrailId = registerOutput<String>('guardrailId');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sensitiveInformationPolicyConfig =
        registerOutput<GuardrailSensitiveInformationPolicyConfig?>(
            'sensitiveInformationPolicyConfig');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<GuardrailTimeouts?>('timeouts');
    this.topicPolicyConfig =
        registerOutput<GuardrailTopicPolicyConfig?>('topicPolicyConfig');
    this.version = registerOutput<String>('version');
    this.wordPolicyConfig =
        registerOutput<GuardrailWordPolicyConfig?>('wordPolicyConfig');
  }
}
