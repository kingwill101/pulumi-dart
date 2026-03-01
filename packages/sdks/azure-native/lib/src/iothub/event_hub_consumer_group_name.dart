// ignore_for_file: unused_element, unnecessary_cast


/// The EventHub consumer group name.
class EventHubConsumerGroupName {
  /// EventHub consumer group name
  final String name;

  /// Creates a new [EventHubConsumerGroupName].
  /// [name] EventHub consumer group name
  EventHubConsumerGroupName({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory EventHubConsumerGroupName.fromMap(Map<String, dynamic> map) {
    return EventHubConsumerGroupName(
      name: map['name'] as String,
    );
  }
}

