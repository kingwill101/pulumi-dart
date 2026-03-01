// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_template_event_subscription.dart';

/// Input properties used for looking up and filtering AssessmentTemplate resources.
class AssessmentTemplateState {
  /// The template assessment ARN.
  final pulumi.Input<String>? arn;
  /// The duration of the inspector run.
  final pulumi.Input<int>? duration;
  /// A block that enables sending notifications about a specified assessment template event to a designated SNS topic. See Event Subscriptions for details.
  final pulumi.Input<List<AssessmentTemplateEventSubscription>>? eventSubscriptions;
  /// The name of the assessment template.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The rules to be used during the run.
  final pulumi.Input<List<String>>? rulesPackageArns;
  /// Key-value map of tags for the Inspector assessment template. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The assessment target ARN to attach the template to.
  final pulumi.Input<String>? targetArn;

  /// Creates a new [AssessmentTemplateState].
  /// [arn] The template assessment ARN.
  /// [duration] The duration of the inspector run.
  /// [eventSubscriptions] A block that enables sending notifications about a specified assessment template event to a designated SNS topic. See Event Subscriptions for details.
  /// [name] The name of the assessment template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rulesPackageArns] The rules to be used during the run.
  /// [tags] Key-value map of tags for the Inspector assessment template. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetArn] The assessment target ARN to attach the template to.
  AssessmentTemplateState({
    pulumi.Output<String>? arn,
    pulumi.Output<int>? duration,
    pulumi.Output<List<AssessmentTemplateEventSubscription>>? eventSubscriptions,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? rulesPackageArns,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? targetArn,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      eventSubscriptions = pulumi.Input.asOptionalInput<List<AssessmentTemplateEventSubscription>>(eventSubscriptions),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      rulesPackageArns = pulumi.Input.asOptionalInput<List<String>>(rulesPackageArns),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetArn = pulumi.Input.asOptionalInput<String>(targetArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'duration': ?duration,
      'eventSubscriptions': ?pulumi.Input.mapOptionalInputValue<List<AssessmentTemplateEventSubscription>, List<Map<String, dynamic>>>(eventSubscriptions, (value) => pulumi.Input.encodeList<AssessmentTemplateEventSubscription, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'rulesPackageArns': ?rulesPackageArns,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetArn': ?targetArn,
    };
  }

  factory AssessmentTemplateState.fromMap(Map<String, dynamic> map) {
    return AssessmentTemplateState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<int>(map['duration'] as int),
      eventSubscriptions: map['eventSubscriptions'] == null ? null : pulumi.Output.create<List<AssessmentTemplateEventSubscription>>(pulumi.Input.decodeList<AssessmentTemplateEventSubscription>(map['eventSubscriptions'], (value) => AssessmentTemplateEventSubscription.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rulesPackageArns: map['rulesPackageArns'] == null ? null : pulumi.Output.create<List<String>>((map['rulesPackageArns'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetArn: map['targetArn'] == null ? null : pulumi.Output.create<String>(map['targetArn'] as String),
    );
  }
}

