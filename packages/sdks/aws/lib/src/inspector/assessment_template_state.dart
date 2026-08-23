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
  /// Key-value map of tags for the Inspector assessment template. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
  /// [tags] Key-value map of tags for the Inspector assessment template. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetArn] The assessment target ARN to attach the template to.
  const AssessmentTemplateState({
    this.arn,
    this.duration,
    this.eventSubscriptions,
    this.name,
    this.region,
    this.rulesPackageArns,
    this.tags,
    this.tagsAll,
    this.targetArn,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      eventSubscriptions: (() { final guardedValue = map['eventSubscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssessmentTemplateEventSubscription>(guardedValue, (value) => AssessmentTemplateEventSubscription.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rulesPackageArns: (() { final guardedValue = map['rulesPackageArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetArn: (() { final guardedValue = map['targetArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
