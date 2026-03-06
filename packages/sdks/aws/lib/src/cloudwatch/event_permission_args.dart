// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_permission_condition.dart';

/// {@template pulumi_cloudwatch_event_permission_event_permission_args_doc}
/// The set of arguments for EventPermission.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_event_permission_event_permission_args_doc}
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

  /// Creates a new [EventPermissionArgs].
  /// [action] The action that you are enabling the other account to perform. Defaults to `events:PutEvents`.
  /// [condition] Configuration block to limit the event bus permissions you are granting to only accounts that fulfill the condition. Specified below.
  /// [eventBusName] The name of the event bus to set the permissions on.
  /// [principal] The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify `*` to permit any account to put events to your default event bus, optionally limited by `condition`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [statementId] An identifier string for the external account that you are granting permissions to.
  const EventPermissionArgs({
    this.action,
    this.condition,
    this.eventBusName,
    required this.principal,
    this.region,
    required this.statementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'condition': ?pulumi.Input.mapOptionalInputValue<EventPermissionCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'eventBusName': ?eventBusName,
      'principal': principal,
      'region': ?region,
      'statementId': statementId,
    };
  }

  factory EventPermissionArgs.fromMap(Map<String, dynamic> map) {
    return EventPermissionArgs(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventPermissionCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventBusName: (() { final guardedValue = map['eventBusName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: pulumi.Input.fromValue(map['principal'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statementId: pulumi.Input.fromValue(map['statementId'] as String),
    );
  }
}

