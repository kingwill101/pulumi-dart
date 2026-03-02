// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_rule_target.dart';

/// Input properties used for looking up and filtering NotificationRule resources.
class NotificationRuleState {
  /// The codestar notification rule ARN.
  final pulumi.Input<String>? arn;
  /// The level of detail to include in the notifications for this resource. Possible values are `BASIC` and `FULL`.
  final pulumi.Input<String>? detailType;
  /// A list of event types associated with this notification rule.
  /// For list of allowed events see [here](https://docs.aws.amazon.com/codestar-notifications/latest/userguide/concepts.html#concepts-api).
  final pulumi.Input<List<String>>? eventTypeIds;
  /// The name of notification rule.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the resource to associate with the notification rule.
  final pulumi.Input<String>? resource;
  /// The status of the notification rule. Possible values are `ENABLED` and `DISABLED`, default is `ENABLED`.
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration blocks containing notification target information. Can be specified multiple times. At least one target must be specified on creation.
  final pulumi.Input<List<NotificationRuleTarget>>? targets;

  /// Creates a new [NotificationRuleState].
  /// [arn] The codestar notification rule ARN.
  /// [detailType] The level of detail to include in the notifications for this resource. Possible values are `BASIC` and `FULL`.
  /// [eventTypeIds] A list of event types associated with this notification rule.
  /// [name] The name of notification rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resource] The ARN of the resource to associate with the notification rule.
  /// [status] The status of the notification rule. Possible values are `ENABLED` and `DISABLED`, default is `ENABLED`.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targets] Configuration blocks containing notification target information. Can be specified multiple times. At least one target must be specified on creation.
  NotificationRuleState({
    this.arn,
    this.detailType,
    this.eventTypeIds,
    this.name,
    this.region,
    this.resource,
    this.status,
    this.tags,
    this.tagsAll,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'detailType': ?detailType,
      'eventTypeIds': ?eventTypeIds,
      'name': ?name,
      'region': ?region,
      'resource': ?resource,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<NotificationRuleTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<NotificationRuleTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NotificationRuleState.fromMap(Map<String, dynamic> map) {
    return NotificationRuleState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      detailType: map['detailType'] == null ? null : ((map['detailType'] as String).input()).input(),
      eventTypeIds: map['eventTypeIds'] == null ? null : (((map['eventTypeIds'] as List).cast<String>()).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resource: map['resource'] == null ? null : ((map['resource'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      targets: map['targets'] == null ? null : ((pulumi.Input.decodeList<NotificationRuleTarget>(map['targets']!, (value) => NotificationRuleTarget.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

