// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerTrigger {
  /// The branches that will be included in the trigger configuration. If no branches   are specified, the trigger will apply to all branches.
  final pulumi.Input<List<String>>? branches;
  /// Any custom data associated with the trigger that will be included in the information sent to the target of the trigger.
  final pulumi.Input<String>? customData;
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
  TriggerTrigger({
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
      branches: map['branches'] == null ? null : ((map['branches'] as List).cast<String>()).input(),
      customData: map['customData'] == null ? null : (map['customData'] as String).input(),
      destinationArn: (map['destinationArn'] as String).input(),
      events: ((map['events'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

