import 'package:pulumi/pulumi.dart';
import 'event_subscription_args.dart';
import 'event_subscription_destination_response.dart';
import 'event_subscription_status_response.dart';
import 'jmsresponse.dart';

/// Creates a new EventSubscription in a given project,location and connection.
class EventSubscription extends CustomResource {
  late final Output<String> connectionId;

  /// Created time.
  late final Output<String> createTime;

  /// Optional. The destination to hit when we receive an event
  late final Output<EventSubscriptionDestinationResponse> destinations;

  /// Required. Identifier to assign to the Event Subscription. Must be unique within scope of the parent resource.
  late final Output<String> eventSubscriptionId;

  /// Optional. Event type id of the event of current EventSubscription.
  late final Output<String> eventTypeId;

  /// Optional. JMS is the source for the event listener.
  late final Output<JMSResponse> jms;
  late final Output<String> location;

  /// Resource name of the EventSubscription. Format: projects/{project}/locations/{location}/connections/{connection}/eventSubscriptions/{event_subscription}
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. Status indicates the status of the event subscription resource
  late final Output<EventSubscriptionStatusResponse> status;

  /// Optional. name of the Subscriber for the current EventSubscription.
  late final Output<String> subscriber;

  /// Optional. Link for Subscriber of the current EventSubscription.
  late final Output<String> subscriberLink;

  /// Updated time.
  late final Output<String> updateTime;

  EventSubscription(
    String name, {
    EventSubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:connectors/v1:EventSubscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectionId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.destinations =
        Output.createUnknown<EventSubscriptionDestinationResponse>();
    this.eventSubscriptionId = Output.createUnknown<String>();
    this.eventTypeId = Output.createUnknown<String>();
    this.jms = Output.createUnknown<JMSResponse>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.status = Output.createUnknown<EventSubscriptionStatusResponse>();
    this.subscriber = Output.createUnknown<String>();
    this.subscriberLink = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
