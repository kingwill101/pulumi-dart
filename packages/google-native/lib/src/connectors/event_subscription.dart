import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_args.dart';
import 'event_subscription_destination_response.dart';
import 'event_subscription_status_response.dart';
import 'jmsresponse.dart';

/// Creates a new EventSubscription in a given project,location and connection.
class EventSubscription extends pulumi.CustomResource {
  late final pulumi.Output<String> connectionId;
  /// Created time.
  late final pulumi.Output<String> createTime;
  /// Optional. The destination to hit when we receive an event
  late final pulumi.Output<EventSubscriptionDestinationResponse> destinations;
  /// Required. Identifier to assign to the Event Subscription. Must be unique within scope of the parent resource.
  late final pulumi.Output<String> eventSubscriptionId;
  /// Optional. Event type id of the event of current EventSubscription.
  late final pulumi.Output<String> eventTypeId;
  /// Optional. JMS is the source for the event listener.
  late final pulumi.Output<JMSResponse> jms;
  late final pulumi.Output<String> location;
  /// Resource name of the EventSubscription. Format: projects/{project}/locations/{location}/connections/{connection}/eventSubscriptions/{event_subscription}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Optional. Status indicates the status of the event subscription resource
  late final pulumi.Output<EventSubscriptionStatusResponse> status;
  /// Optional. name of the Subscriber for the current EventSubscription.
  late final pulumi.Output<String> subscriber;
  /// Optional. Link for Subscriber of the current EventSubscription.
  late final pulumi.Output<String> subscriberLink;
  /// Updated time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [EventSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventSubscription]. {@macro pulumi_connectors_v1_event_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventSubscription(
    String name, {
    EventSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:connectors/v1:EventSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionId = registerOutput<String>('connectionId');
    this.createTime = registerOutput<String>('createTime');
    this.destinations = registerOutput<EventSubscriptionDestinationResponse>('destinations');
    this.eventSubscriptionId = registerOutput<String>('eventSubscriptionId');
    this.eventTypeId = registerOutput<String>('eventTypeId');
    this.jms = registerOutput<JMSResponse>('jms');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.status = registerOutput<EventSubscriptionStatusResponse>('status');
    this.subscriber = registerOutput<String>('subscriber');
    this.subscriberLink = registerOutput<String>('subscriberLink');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
