// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventHubDestinationResponse {
  /// The resource ID of the event hub.
  final pulumi.Input<String>? eventHubResourceId;
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;

  /// Creates a new [EventHubDestinationResponse].
  /// [eventHubResourceId] The resource ID of the event hub.
  /// [name] A friendly name for the destination.
  EventHubDestinationResponse({
    this.eventHubResourceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubResourceId': ?eventHubResourceId,
      'name': ?name,
    };
  }

  factory EventHubDestinationResponse.fromMap(Map<String, dynamic> map) {
    return EventHubDestinationResponse(
      eventHubResourceId: map['eventHubResourceId'] == null ? null : (map['eventHubResourceId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

