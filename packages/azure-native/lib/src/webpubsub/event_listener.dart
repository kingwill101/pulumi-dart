// ignore_for_file: unused_element, unnecessary_cast

import 'event_hub_endpoint.dart';
import 'event_name_filter.dart';

/// A setting defines which kinds of events should be sent to which endpoint.
class EventListener {
  /// An endpoint specifying where Web PubSub should send events to.
  final EventHubEndpoint endpoint;
  /// A base class for event filter which determines whether an event should be sent to an event listener.
  final EventNameFilter filter;

  /// Creates a new [EventListener].
  /// [endpoint] An endpoint specifying where Web PubSub should send events to.
  /// [filter] A base class for event filter which determines whether an event should be sent to an event listener.
  EventListener({
    required this.endpoint,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint.toMap(),
      'filter': filter.toMap(),
    };
  }

  factory EventListener.fromMap(Map<String, dynamic> map) {
    return EventListener(
      endpoint: EventHubEndpoint.fromMap((map['endpoint'] as Map).cast<String, dynamic>()),
      filter: EventNameFilter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
    );
  }
}

