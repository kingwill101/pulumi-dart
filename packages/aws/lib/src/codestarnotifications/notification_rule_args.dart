// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_rule_target.dart';

/// {@template pulumi_codestarnotifications_notification_rule_notification_rule_args_doc}
/// The set of arguments for NotificationRule.
/// {@endtemplate}
/// {@macro pulumi_codestarnotifications_notification_rule_notification_rule_args_doc}
class NotificationRuleArgs {
  /// The level of detail to include in the notifications for this resource. Possible values are `BASIC` and `FULL`.
  final pulumi.Input<String> detailType;
  /// A list of event types associated with this notification rule.
  /// For list of allowed events see [here](https://docs.aws.amazon.com/codestar-notifications/latest/userguide/concepts.html#concepts-api).
  final pulumi.Input<List<String>> eventTypeIds;
  /// The name of notification rule.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the resource to associate with the notification rule.
  final pulumi.Input<String> resource;
  /// The status of the notification rule. Possible values are `ENABLED` and `DISABLED`, default is `ENABLED`.
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration blocks containing notification target information. Can be specified multiple times. At least one target must be specified on creation.
  final pulumi.Input<List<NotificationRuleTarget>>? targets;

  /// Creates a new [NotificationRuleArgs].
  /// [detailType] The level of detail to include in the notifications for this resource. Possible values are `BASIC` and `FULL`.
  /// [eventTypeIds] A list of event types associated with this notification rule.
  /// [name] The name of notification rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resource] The ARN of the resource to associate with the notification rule.
  /// [status] The status of the notification rule. Possible values are `ENABLED` and `DISABLED`, default is `ENABLED`.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targets] Configuration blocks containing notification target information. Can be specified multiple times. At least one target must be specified on creation.
  NotificationRuleArgs({
    required String detailType,
    required List<String> eventTypeIds,
    String? name,
    String? region,
    required String resource,
    String? status,
    Map<String, String>? tags,
    List<NotificationRuleTarget>? targets,
  }) :
      detailType = pulumi.Input.asInput<String>(detailType),
      eventTypeIds = pulumi.Input.asInput<List<String>>(eventTypeIds),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resource = pulumi.Input.asInput<String>(resource),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targets = pulumi.Input.asOptionalInput<List<NotificationRuleTarget>>(targets);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailType': detailType,
      'eventTypeIds': eventTypeIds,
      'name': ?name,
      'region': ?region,
      'resource': resource,
      'status': ?status,
      'tags': ?tags,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<NotificationRuleTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<NotificationRuleTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NotificationRuleArgs.fromMap(Map<String, dynamic> map) {
    return NotificationRuleArgs(
      detailType: map['detailType'] as String,
      eventTypeIds: (map['eventTypeIds'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resource: map['resource'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targets: map['targets'] == null ? null : pulumi.Input.decodeList<NotificationRuleTarget>(map['targets'], (value) => NotificationRuleTarget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

