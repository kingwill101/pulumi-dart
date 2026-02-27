import 'package:pulumi/pulumi.dart';
import '../assessment_template_event_subscription/assessment_template_event_subscription.dart';
import 'assessment_template_args.dart';

/// Provides an Inspector Classic Assessment Template
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Inspector assessment template.
///
///
/// Using `pulumi import`, import `aws.inspector.AssessmentTemplate` using the template assessment ARN. For example:
///
/// ```sh
/// $ pulumi import aws:inspector/assessmentTemplate:AssessmentTemplate example arn:aws:inspector:us-west-2:123456789012:target/0-9IaAzhGR/template/0-WEcjR8CH
/// ```
class AssessmentTemplate extends CustomResource {
  /// The template assessment ARN.
  late final Output<String> arn;

  /// The duration of the inspector run.
  late final Output<int> duration;

  /// A block that enables sending notifications about a specified assessment template event to a designated SNS topic. See Event Subscriptions for details.
  late final Output<List<AssessmentTemplateEventSubscription>?>
      eventSubscriptions;

  /// The name of the assessment template.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The rules to be used during the run.
  late final Output<List<String>> rulesPackageArns;

  /// Key-value map of tags for the Inspector assessment template. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The assessment target ARN to attach the template to.
  late final Output<String> targetArn;

  AssessmentTemplate(
    String name, {
    AssessmentTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:inspector/assessmentTemplate:AssessmentTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.duration = registerOutput<int>('duration');
    this.eventSubscriptions =
        registerOutput<List<AssessmentTemplateEventSubscription>?>(
            'eventSubscriptions');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.rulesPackageArns = registerOutput<List<String>>('rulesPackageArns');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetArn = registerOutput<String>('targetArn');
  }
}
