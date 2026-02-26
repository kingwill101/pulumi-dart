// ignore_for_file: unused_element, unnecessary_cast

import 'event_subscription_destination_response.dart';
import 'event_subscription_status_response.dart';
import 'jmsresponse.dart';

/// Result data returned by getEventSubscription.
class GetEventSubscriptionResult {
  /// Created time.
  final String createTime;

  /// Optional. The destination to hit when we receive an event
  final EventSubscriptionDestinationResponse destinations;

  /// Optional. Event type id of the event of current EventSubscription.
  final String eventTypeId;

  /// Optional. JMS is the source for the event listener.
  final JMSResponse jms;

  /// Resource name of the EventSubscription. Format: projects/{project}/locations/{location}/connections/{connection}/eventSubscriptions/{event_subscription}
  final String name;

  /// Optional. Status indicates the status of the event subscription resource
  final EventSubscriptionStatusResponse status;

  /// Optional. name of the Subscriber for the current EventSubscription.
  final String subscriber;

  /// Optional. Link for Subscriber of the current EventSubscription.
  final String subscriberLink;

  /// Updated time.
  final String updateTime;

  GetEventSubscriptionResult({
    required this.createTime,
    required this.destinations,
    required this.eventTypeId,
    required this.jms,
    required this.name,
    required this.status,
    required this.subscriber,
    required this.subscriberLink,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['destinations'] = destinations.toMap();
    map['eventTypeId'] = eventTypeId;
    map['jms'] = jms.toMap();
    map['name'] = name;
    map['status'] = status.toMap();
    map['subscriber'] = subscriber;
    map['subscriberLink'] = subscriberLink;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetEventSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetEventSubscriptionResult(
      createTime: map['createTime'] as String,
      destinations: EventSubscriptionDestinationResponse.fromMap(
          (map['destinations'] as Map).cast<String, dynamic>()),
      eventTypeId: map['eventTypeId'] as String,
      jms: JMSResponse.fromMap((map['jms'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      status: EventSubscriptionStatusResponse.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      subscriber: map['subscriber'] as String,
      subscriberLink: map['subscriberLink'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
