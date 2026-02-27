import 'package:pulumi/pulumi.dart';
import '../rule_evaluation_mode/rule_evaluation_mode.dart';
import '../rule_scope/rule_scope.dart';
import '../rule_source/rule_source.dart';
import 'rule_args.dart';

/// Provides an AWS Config Rule.
///
/// > **Note:** Config Rule requires an existing Configuration Recorder to be present. Use of `depends_on` is recommended (as shown below) to avoid race conditions.
///
/// ## Example Usage
///
/// ### AWS Managed Rules
///
/// AWS managed rules can be used by setting the source owner to `AWS` and the source identifier to the name of the managed rule. More information about AWS managed rules can be found in the [AWS Config Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html).
///
///
///
/// ### Custom Rules
///
/// Custom rules can be used by setting the source owner to `CUSTOM_LAMBDA` and the source identifier to the Amazon Resource Name (ARN) of the Lambda Function. The AWS Config service must have permissions to invoke the Lambda Function, e.g., via the `aws.lambda.Permission` resource. More information about custom rules can be found in the [AWS Config Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html).
///
///
///
/// ### Custom Policies
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Config Rule using the name. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/rule:Rule foo example
/// ```
class Rule extends CustomResource {
  /// The ARN of the config rule
  late final Output<String> arn;

  /// Description of the rule
  late final Output<String?> description;

  /// The modes the Config rule can be evaluated in. See Evaluation Mode for more details.
  late final Output<List<RuleEvaluationMode>> evaluationModes;

  /// A string in JSON format that is passed to the AWS Config rule Lambda function.
  late final Output<String?> inputParameters;

  /// The maximum frequency with which AWS Config runs evaluations for a rule.
  late final Output<String?> maximumExecutionFrequency;

  /// The name of the rule
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the config rule
  late final Output<String> ruleId;

  /// Scope defines which resources can trigger an evaluation for the rule. See Scope Below.
  late final Output<RuleScope?> scope;

  /// Source specifies the rule owner, the rule identifier, and the notifications that cause the function to evaluate your AWS resources. See Source Below.
  late final Output<RuleSource> source;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Rule(
    String name, {
    RuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cfg/rule:Rule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.evaluationModes =
        registerOutput<List<RuleEvaluationMode>>('evaluationModes');
    this.inputParameters = registerOutput<String?>('inputParameters');
    this.maximumExecutionFrequency =
        registerOutput<String?>('maximumExecutionFrequency');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.ruleId = registerOutput<String>('ruleId');
    this.scope = registerOutput<RuleScope?>('scope');
    this.source = registerOutput<RuleSource>('source');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
