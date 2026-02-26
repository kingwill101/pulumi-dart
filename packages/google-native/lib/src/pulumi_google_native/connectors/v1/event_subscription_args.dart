// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'event_subscription_destination.dart';
import 'jms.dart';

/// The set of arguments for EventSubscription.
class EventSubscriptionArgs {
  final Input<String> connectionId;

  /// Optional. The destination to hit when we receive an event
  final Input<EventSubscriptionDestination>? destinations;

  /// Required. Identifier to assign to the Event Subscription. Must be unique within scope of the parent resource.
  final Input<String> eventSubscriptionId;

  /// Optional. Event type id of the event of current EventSubscription.
  final Input<String>? eventTypeId;

  /// Optional. JMS is the source for the event listener.
  final Input<JMS>? jms;
  final Input<String>? location;

  /// Resource name of the EventSubscription. Format: projects/{project}/locations/{location}/connections/{connection}/eventSubscriptions/{event_subscription}
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. name of the Subscriber for the current EventSubscription.
  final Input<String>? subscriber;

  /// Optional. Link for Subscriber of the current EventSubscription.
  final Input<String>? subscriberLink;

  EventSubscriptionArgs({
    required this.connectionId,
    this.destinations,
    required this.eventSubscriptionId,
    this.eventTypeId,
    this.jms,
    this.location,
    this.name,
    this.project,
    this.subscriber,
    this.subscriberLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] = Input.mapOptionalInputValue<
          EventSubscriptionDestination,
          Map<String, dynamic>>(destinationsValue, (value) => value.toMap());
    }
    map['eventSubscriptionId'] = eventSubscriptionId;
    final eventTypeIdValue = eventTypeId;
    if (eventTypeIdValue != null) {
      map['eventTypeId'] = eventTypeIdValue;
    }
    final jmsValue = jms;
    if (jmsValue != null) {
      map['jms'] = Input.mapOptionalInputValue<JMS, Map<String, dynamic>>(
          jmsValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final subscriberValue = subscriber;
    if (subscriberValue != null) {
      map['subscriber'] = subscriberValue;
    }
    final subscriberLinkValue = subscriberLink;
    if (subscriberLinkValue != null) {
      map['subscriberLink'] = subscriberLinkValue;
    }
    return map;
  }

  factory EventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionArgs(
      connectionId: Input.asInput<String>(map['connectionId']),
      destinations: Input.asOptionalInput<EventSubscriptionDestination>(
          map['destinations']),
      eventSubscriptionId: Input.asInput<String>(map['eventSubscriptionId']),
      eventTypeId: Input.asOptionalInput<String>(map['eventTypeId']),
      jms: Input.asOptionalInput<JMS>(map['jms']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      subscriber: Input.asOptionalInput<String>(map['subscriber']),
      subscriberLink: Input.asOptionalInput<String>(map['subscriberLink']),
    );
  }
}
