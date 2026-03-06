// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEventBusesEventBus {
  /// The ARN of the event bus.
  final pulumi.Input<String> arn;
  /// The time the event bus was created.
  final pulumi.Input<String> creationTime;
  /// The event bus description.
  final pulumi.Input<String> description;
  /// The time the event bus was last modified.
  final pulumi.Input<String> lastModifiedTime;
  /// The name of the event bus.
  final pulumi.Input<String> name;
  /// The permissions policy of the event bus, describing which other AWS accounts can write events to this event bus.
  final pulumi.Input<String> policy;

  /// Creates a new [GetEventBusesEventBus].
  /// [arn] The ARN of the event bus.
  /// [creationTime] The time the event bus was created.
  /// [description] The event bus description.
  /// [lastModifiedTime] The time the event bus was last modified.
  /// [name] The name of the event bus.
  /// [policy] The permissions policy of the event bus, describing which other AWS accounts can write events to this event bus.
  const GetEventBusesEventBus({
    required this.arn,
    required this.creationTime,
    required this.description,
    required this.lastModifiedTime,
    required this.name,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'creationTime': creationTime,
      'description': description,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'policy': policy,
    };
  }

  factory GetEventBusesEventBus.fromMap(Map<String, dynamic> map) {
    return GetEventBusesEventBus(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      lastModifiedTime: pulumi.Input.fromValue(map['lastModifiedTime'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
    );
  }
}

