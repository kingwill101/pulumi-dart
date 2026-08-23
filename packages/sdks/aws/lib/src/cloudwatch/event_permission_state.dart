// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_permission_condition.dart';

/// Input properties used for looking up and filtering EventPermission resources.
class EventPermissionState {
  /// The action that you are enabling the other account to perform. Defaults to `events:PutEvents`.
  final pulumi.Input<String>? action;
  /// Configuration block to limit the event bus permissions you are granting to only accounts that fulfill the condition. Specified below.
  final pulumi.Input<EventPermissionCondition>? condition;
  /// The name of the event bus to set the permissions on.
  /// If you omit this, the permissions are set on the `default` event bus.
  final pulumi.Input<String>? eventBusName;
  /// The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify `*` to permit any account to put events to your default event bus, optionally limited by `condition`.
  final pulumi.Input<String>? principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An identifier string for the external account that you are granting permissions to.
  final pulumi.Input<String>? statementId;

  /// Creates a new [EventPermissionState].
  /// [action] The action that you are enabling the other account to perform. Defaults to `events:PutEvents`.
  /// [condition] Configuration block to limit the event bus permissions you are granting to only accounts that fulfill the condition. Specified below.
  /// [eventBusName] The name of the event bus to set the permissions on.
  /// [principal] The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify `*` to permit any account to put events to your default event bus, optionally limited by `condition`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [statementId] An identifier string for the external account that you are granting permissions to.
  const EventPermissionState({
    this.action,
    this.condition,
    this.eventBusName,
    this.principal,
    this.region,
    this.statementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'condition': ?pulumi.Input.mapOptionalInputValue<EventPermissionCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'eventBusName': ?eventBusName,
      'principal': ?principal,
      'region': ?region,
      'statementId': ?statementId,
    };
  }

  factory EventPermissionState.fromMap(Map<String, dynamic> map) {
    return EventPermissionState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventPermissionCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventBusName: (() { final guardedValue = map['eventBusName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statementId: (() { final guardedValue = map['statementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
