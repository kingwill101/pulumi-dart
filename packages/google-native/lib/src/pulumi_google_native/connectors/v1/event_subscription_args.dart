// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_destination.dart';
import 'jms.dart';

/// The set of arguments for EventSubscription.
class EventSubscriptionArgs {
  final pulumi.Input<String> connectionId;

  /// Optional. The destination to hit when we receive an event
  final pulumi.Input<EventSubscriptionDestination>? destinations;

  /// Required. Identifier to assign to the Event Subscription. Must be unique within scope of the parent resource.
  final pulumi.Input<String> eventSubscriptionId;

  /// Optional. Event type id of the event of current EventSubscription.
  final pulumi.Input<String>? eventTypeId;

  /// Optional. JMS is the source for the event listener.
  final pulumi.Input<JMS>? jms;
  final pulumi.Input<String>? location;

  /// Resource name of the EventSubscription. Format: projects/{project}/locations/{location}/connections/{connection}/eventSubscriptions/{event_subscription}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. name of the Subscriber for the current EventSubscription.
  final pulumi.Input<String>? subscriber;

  /// Optional. Link for Subscriber of the current EventSubscription.
  final pulumi.Input<String>? subscriberLink;

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
      map['destinations'] = pulumi.Input.mapOptionalInputValue<
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
      map['jms'] =
          pulumi.Input.mapOptionalInputValue<JMS, Map<String, dynamic>>(
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
      connectionId: pulumi.Input.asInput<String>(map['connectionId']),
      destinations: pulumi.Input.asOptionalInput<EventSubscriptionDestination>(
          map['destinations']),
      eventSubscriptionId:
          pulumi.Input.asInput<String>(map['eventSubscriptionId']),
      eventTypeId: pulumi.Input.asOptionalInput<String>(map['eventTypeId']),
      jms: pulumi.Input.asOptionalInput<JMS>(map['jms']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      subscriber: pulumi.Input.asOptionalInput<String>(map['subscriber']),
      subscriberLink:
          pulumi.Input.asOptionalInput<String>(map['subscriberLink']),
    );
  }
}
