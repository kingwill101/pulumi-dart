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
    pulumi.Output<String>? action,
    pulumi.Output<EventPermissionCondition>? condition,
    pulumi.Output<String>? eventBusName,
    pulumi.Output<String>? principal,
    pulumi.Output<String>? region,
    pulumi.Output<String>? statementId,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      condition = pulumi.Input.asOptionalInput<EventPermissionCondition>(condition),
      eventBusName = pulumi.Input.asOptionalInput<String>(eventBusName),
      principal = pulumi.Input.asOptionalInput<String>(principal),
      region = pulumi.Input.asOptionalInput<String>(region),
      statementId = pulumi.Input.asOptionalInput<String>(statementId);

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
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      condition: map['condition'] == null ? null : pulumi.Output.create<EventPermissionCondition>(EventPermissionCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())),
      eventBusName: map['eventBusName'] == null ? null : pulumi.Output.create<String>(map['eventBusName'] as String),
      principal: map['principal'] == null ? null : pulumi.Output.create<String>(map['principal'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      statementId: map['statementId'] == null ? null : pulumi.Output.create<String>(map['statementId'] as String),
    );
  }
}

