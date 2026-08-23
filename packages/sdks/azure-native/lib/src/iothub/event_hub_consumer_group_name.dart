// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The EventHub consumer group name.
class EventHubConsumerGroupName {
  /// EventHub consumer group name
  final pulumi.Input<String> name;

  /// Creates a new [EventHubConsumerGroupName].
  /// [name] EventHub consumer group name
  const EventHubConsumerGroupName({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory EventHubConsumerGroupName.fromMap(Map<String, dynamic> map) {
    return EventHubConsumerGroupName(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
