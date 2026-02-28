// ignore_for_file: unused_element, unnecessary_cast

class GetEventBusesEventBus {
  /// The ARN of the event bus.
  final String arn;

  /// The time the event bus was created.
  final String creationTime;

  /// The event bus description.
  final String description;

  /// The time the event bus was last modified.
  final String lastModifiedTime;

  /// The name of the event bus.
  final String name;

  /// The permissions policy of the event bus, describing which other AWS accounts can write events to this event bus.
  final String policy;

  /// Creates a new [GetEventBusesEventBus].
  /// [arn] The ARN of the event bus.
  /// [creationTime] The time the event bus was created.
  /// [description] The event bus description.
  /// [lastModifiedTime] The time the event bus was last modified.
  /// [name] The name of the event bus.
  /// [policy] The permissions policy of the event bus, describing which other AWS accounts can write events to this event bus.
  GetEventBusesEventBus({
    required this.arn,
    required this.creationTime,
    required this.description,
    required this.lastModifiedTime,
    required this.name,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['creationTime'] = creationTime;
    map['description'] = description;
    map['lastModifiedTime'] = lastModifiedTime;
    map['name'] = name;
    map['policy'] = policy;
    return map;
  }

  factory GetEventBusesEventBus.fromMap(Map<String, dynamic> map) {
    return GetEventBusesEventBus(
      arn: map['arn'] as String,
      creationTime: map['creationTime'] as String,
      description: map['description'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      policy: map['policy'] as String,
    );
  }
}
