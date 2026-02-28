// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_template_event_subscription.dart';

/// {@template pulumi_inspector_assessment_template_assessment_template_args_doc}
/// The set of arguments for AssessmentTemplate.
/// {@endtemplate}
/// {@macro pulumi_inspector_assessment_template_assessment_template_args_doc}
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

  /// Creates a new [AssessmentTemplateArgs].
  /// [duration] The duration of the inspector run.
  /// [eventSubscriptions] A block that enables sending notifications about a specified assessment template event to a designated SNS topic. See Event Subscriptions for details.
  /// [name] The name of the assessment template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rulesPackageArns] The rules to be used during the run.
  /// [tags] Key-value map of tags for the Inspector assessment template. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetArn] The assessment target ARN to attach the template to.
  AssessmentTemplateArgs({
    required int duration,
    List<AssessmentTemplateEventSubscription>? eventSubscriptions,
    String? name,
    String? region,
    required List<String> rulesPackageArns,
    Map<String, String>? tags,
    required String targetArn,
  })  : duration = pulumi.Input.asInput<int>(duration),
        eventSubscriptions = pulumi.Input.asOptionalInput<
            List<AssessmentTemplateEventSubscription>>(eventSubscriptions),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        rulesPackageArns = pulumi.Input.asInput<List<String>>(rulesPackageArns),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        targetArn = pulumi.Input.asInput<String>(targetArn);

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
      duration: map['duration'] as int,
      eventSubscriptions: map['eventSubscriptions'] == null
          ? null
          : pulumi.Input.decodeList<AssessmentTemplateEventSubscription>(
              map['eventSubscriptions'],
              (value) => AssessmentTemplateEventSubscription.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rulesPackageArns: (map['rulesPackageArns'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      targetArn: map['targetArn'] as String,
    );
  }
}
