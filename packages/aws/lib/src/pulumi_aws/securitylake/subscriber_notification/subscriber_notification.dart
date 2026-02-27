import 'package:pulumi/pulumi.dart' as pulumi;
import '../subscriber_notification_configuration/subscriber_notification_configuration.dart';
import 'subscriber_notification_args.dart';

/// Resource for managing an AWS Security Lake Subscriber Notification.
///
/// ## Example Usage
///
/// ### SQS Notification
///
///
///
/// ### HTTPS Notification
class SubscriberNotification extends pulumi.CustomResource {
  /// Specify the configuration using which you want to create the subscriber notification..
  late final pulumi.Output<SubscriberNotificationConfiguration> configuration;

  /// (**Deprecated**) The subscriber endpoint to which exception messages are posted.
  late final pulumi.Output<String> endpointId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The subscriber endpoint to which exception messages are posted.
  late final pulumi.Output<String> subscriberEndpoint;

  /// The subscriber ID for the notification subscription.
  late final pulumi.Output<String> subscriberId;

  SubscriberNotification(
    String name, {
    SubscriberNotificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/subscriberNotification:SubscriberNotification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configuration =
        registerOutput<SubscriberNotificationConfiguration>('configuration');
    this.endpointId = registerOutput<String>('endpointId');
    this.region = registerOutput<String>('region');
    this.subscriberEndpoint = registerOutput<String>('subscriberEndpoint');
    this.subscriberId = registerOutput<String>('subscriberId');
  }
}
