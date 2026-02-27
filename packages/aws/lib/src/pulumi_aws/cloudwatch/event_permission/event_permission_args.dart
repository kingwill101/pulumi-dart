// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../event_permission_condition/event_permission_condition.dart';

/// The set of arguments for EventPermission.
class EventPermissionArgs {
  /// The action that you are enabling the other account to perform. Defaults to `events:PutEvents`.
  final Input<String>? action;

  /// Configuration block to limit the event bus permissions you are granting to only accounts that fulfill the condition. Specified below.
  final Input<EventPermissionCondition>? condition;

  /// The name of the event bus to set the permissions on.
  /// If you omit this, the permissions are set on the `default` event bus.
  final Input<String>? eventBusName;

  /// The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify `*` to permit any account to put events to your default event bus, optionally limited by `condition`.
  final Input<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// An identifier string for the external account that you are granting permissions to.
  final Input<String> statementId;

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
      map['condition'] = Input.mapOptionalInputValue<EventPermissionCondition,
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
      action: Input.asOptionalInput<String>(map['action']),
      condition:
          Input.asOptionalInput<EventPermissionCondition>(map['condition']),
      eventBusName: Input.asOptionalInput<String>(map['eventBusName']),
      principal: Input.asInput<String>(map['principal']),
      region: Input.asOptionalInput<String>(map['region']),
      statementId: Input.asInput<String>(map['statementId']),
    );
  }
}
