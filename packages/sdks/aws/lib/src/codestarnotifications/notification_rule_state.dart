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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? detailType,
    pulumi.Output<List<String>>? eventTypeIds,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resource,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<NotificationRuleTarget>>? targets,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      detailType = pulumi.Input.asOptionalInput<String>(detailType),
      eventTypeIds = pulumi.Input.asOptionalInput<List<String>>(eventTypeIds),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resource = pulumi.Input.asOptionalInput<String>(resource),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targets = pulumi.Input.asOptionalInput<List<NotificationRuleTarget>>(targets);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      detailType: map['detailType'] == null ? null : pulumi.Output.create<String>(map['detailType'] as String),
      eventTypeIds: map['eventTypeIds'] == null ? null : pulumi.Output.create<List<String>>((map['eventTypeIds'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resource: map['resource'] == null ? null : pulumi.Output.create<String>(map['resource'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targets: map['targets'] == null ? null : pulumi.Output.create<List<NotificationRuleTarget>>(pulumi.Input.decodeList<NotificationRuleTarget>(map['targets'], (value) => NotificationRuleTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

