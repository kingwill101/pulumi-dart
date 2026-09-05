// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerTrigger {
  /// The branches that will be included in the trigger configuration. If no branches   are specified, the trigger will apply to all branches.
  final pulumi.Input<List<String>?>? branches;
  /// Any custom data associated with the trigger that will be included in the information sent to the target of the trigger.
  final pulumi.Input<String?>? customData;
  /// The ARN of the resource that is the target for a trigger. For example, the ARN of a topic in Amazon Simple Notification Service (SNS).
  final pulumi.Input<String> destinationArn;
  /// The repository events that will cause the trigger to run actions in another service, such as sending a notification through Amazon Simple Notification Service (SNS). If no events are specified, the trigger will run for all repository events. Event types include: `all`, `updateReference`, `createReference`, `deleteReference`.
  final pulumi.Input<List<String>> events;
  /// The name of the trigger.
  final pulumi.Input<String> name;

  /// Creates a new [TriggerTrigger].
  /// [branches] The branches that will be included in the trigger configuration. If no branches   are specified, the trigger will apply to all branches.
  /// [customData] Any custom data associated with the trigger that will be included in the information sent to the target of the trigger.
  /// [destinationArn] The ARN of the resource that is the target for a trigger. For example, the ARN of a topic in Amazon Simple Notification Service (SNS).
  /// [events] The repository events that will cause the trigger to run actions in another service, such as sending a notification through Amazon Simple Notification Service (SNS). If no events are specified, the trigger will run for all repository events. Event types include: `all`, `updateReference`, `createReference`, `deleteReference`.
  /// [name] The name of the trigger.
  const TriggerTrigger({
    this.branches,
    this.customData,
    required this.destinationArn,
    required this.events,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches': ?branches,
      'customData': ?customData,
      'destinationArn': destinationArn,
      'events': events,
      'name': name,
    };
  }

  factory TriggerTrigger.fromMap(Map<String, dynamic> map) {
    return TriggerTrigger(
      branches: (() { final guardedValue = map['branches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      customData: (() { final guardedValue = map['customData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationArn: pulumi.Input.fromValue(map['destinationArn'] as String),
      events: pulumi.Input.fromValue((map['events'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
