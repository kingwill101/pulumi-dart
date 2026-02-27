// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../notification_rule_target/notification_rule_target.dart';

/// The set of arguments for NotificationRule.
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

  NotificationRuleArgs({
    required this.detailType,
    required this.eventTypeIds,
    this.name,
    this.region,
    required this.resource,
    this.status,
    this.tags,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['detailType'] = detailType;
    map['eventTypeIds'] = eventTypeIds;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resource'] = resource;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetsValue = targets;
    if (targetsValue != null) {
      map['targets'] = pulumi.Input.mapOptionalInputValue<
              List<NotificationRuleTarget>, List<Map<String, dynamic>>>(
          targetsValue,
          (value) => pulumi.Input.encodeList<NotificationRuleTarget,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory NotificationRuleArgs.fromMap(Map<String, dynamic> map) {
    return NotificationRuleArgs(
      detailType: pulumi.Input.asInput<String>(map['detailType']),
      eventTypeIds: pulumi.Input.asInput<List<String>>(map['eventTypeIds']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resource: pulumi.Input.asInput<String>(map['resource']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targets: pulumi.Input.asOptionalInput<List<NotificationRuleTarget>>(
          map['targets']),
    );
  }
}
