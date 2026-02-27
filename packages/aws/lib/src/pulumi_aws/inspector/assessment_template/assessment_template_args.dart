// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../assessment_template_event_subscription/assessment_template_event_subscription.dart';

/// The set of arguments for AssessmentTemplate.
class AssessmentTemplateArgs {
  /// The duration of the inspector run.
  final pulumi.Input<int> duration;

  /// A block that enables sending notifications about a specified assessment template event to a designated SNS topic. See Event Subscriptions for details.
  final pulumi.Input<List<AssessmentTemplateEventSubscription>>?
      eventSubscriptions;

  /// The name of the assessment template.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The rules to be used during the run.
  final pulumi.Input<List<String>> rulesPackageArns;

  /// Key-value map of tags for the Inspector assessment template. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The assessment target ARN to attach the template to.
  final pulumi.Input<String> targetArn;

  AssessmentTemplateArgs({
    required this.duration,
    this.eventSubscriptions,
    this.name,
    this.region,
    required this.rulesPackageArns,
    this.tags,
    required this.targetArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    final eventSubscriptionsValue = eventSubscriptions;
    if (eventSubscriptionsValue != null) {
      map['eventSubscriptions'] = pulumi.Input.mapOptionalInputValue<
              List<AssessmentTemplateEventSubscription>,
              List<Map<String, dynamic>>>(
          eventSubscriptionsValue,
          (value) => pulumi.Input.encodeList<
              AssessmentTemplateEventSubscription,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['rulesPackageArns'] = rulesPackageArns;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetArn'] = targetArn;
    return map;
  }

  factory AssessmentTemplateArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentTemplateArgs(
      duration: pulumi.Input.asInput<int>(map['duration']),
      eventSubscriptions: pulumi.Input.asOptionalInput<
          List<AssessmentTemplateEventSubscription>>(map['eventSubscriptions']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      rulesPackageArns:
          pulumi.Input.asInput<List<String>>(map['rulesPackageArns']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetArn: pulumi.Input.asInput<String>(map['targetArn']),
    );
  }
}
