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
  EventPermissionState({
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
      action: map['action'] == null ? null : ((map['action'] as String).input()).input(),
      condition: map['condition'] == null ? null : ((EventPermissionCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())).input()).input(),
      eventBusName: map['eventBusName'] == null ? null : ((map['eventBusName'] as String).input()).input(),
      principal: map['principal'] == null ? null : ((map['principal'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      statementId: map['statementId'] == null ? null : ((map['statementId'] as String).input()).input(),
    );
  }
}

