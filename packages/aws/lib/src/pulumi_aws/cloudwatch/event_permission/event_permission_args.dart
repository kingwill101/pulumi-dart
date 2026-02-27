// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../event_permission_condition/event_permission_condition.dart';

/// The set of arguments for EventPermission.
class EventPermissionArgs {
  /// The action that you are enabling the other account to perform. Defaults to `events:PutEvents`.
  final pulumi.Input<String>? action;

  /// Configuration block to limit the event bus permissions you are granting to only accounts that fulfill the condition. Specified below.
  final pulumi.Input<EventPermissionCondition>? condition;

  /// The name of the event bus to set the permissions on.
  /// If you omit this, the permissions are set on the `default` event bus.
  final pulumi.Input<String>? eventBusName;

  /// The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify `*` to permit any account to put events to your default event bus, optionally limited by `condition`.
  final pulumi.Input<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// An identifier string for the external account that you are granting permissions to.
  final pulumi.Input<String> statementId;

  EventPermissionArgs({
    this.action,
    this.condition,
    this.eventBusName,
    required this.principal,
    this.region,
    required this.statementId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue;
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          EventPermissionCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    final eventBusNameValue = eventBusName;
    if (eventBusNameValue != null) {
      map['eventBusName'] = eventBusNameValue;
    }
    map['principal'] = principal;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['statementId'] = statementId;
    return map;
  }

  factory EventPermissionArgs.fromMap(Map<String, dynamic> map) {
    return EventPermissionArgs(
      action: pulumi.Input.asOptionalInput<String>(map['action']),
      condition: pulumi.Input.asOptionalInput<EventPermissionCondition>(
          map['condition']),
      eventBusName: pulumi.Input.asOptionalInput<String>(map['eventBusName']),
      principal: pulumi.Input.asInput<String>(map['principal']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      statementId: pulumi.Input.asInput<String>(map['statementId']),
    );
  }
}
