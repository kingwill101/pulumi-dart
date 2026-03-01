// ignore_for_file: unused_element, unnecessary_cast


class EventHubDestination {
  /// The resource ID of the event hub.
  final String? eventHubResourceId;
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final String? name;

  /// Creates a new [EventHubDestination].
  /// [eventHubResourceId] The resource ID of the event hub.
  /// [name] A friendly name for the destination.
  EventHubDestination({
    this.eventHubResourceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubResourceId': ?eventHubResourceId,
      'name': ?name,
    };
  }

  factory EventHubDestination.fromMap(Map<String, dynamic> map) {
    return EventHubDestination(
      eventHubResourceId: map['eventHubResourceId'] == null ? null : map['eventHubResourceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

