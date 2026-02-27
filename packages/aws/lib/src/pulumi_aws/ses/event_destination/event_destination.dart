import 'package:pulumi/pulumi.dart';
import '../event_destination_cloudwatch_destination/event_destination_cloudwatch_destination.dart';
import '../event_destination_kinesis_destination/event_destination_kinesis_destination.dart';
import '../event_destination_sns_destination/event_destination_sns_destination.dart';
import 'event_destination_args.dart';

/// Provides an SES event destination
///
/// ## Example Usage
///
/// ### CloudWatch Destination
///
///
///
/// ### Kinesis Destination
///
///
///
/// ### SNS Destination
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SES event destinations using `configuration_set_name` together with the event destination's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ses/eventDestination:EventDestination sns some-configuration-set-test/event-destination-sns
/// ```
class EventDestination extends CustomResource {
  /// The SES event destination ARN.
  late final Output<String> arn;

  /// CloudWatch destination for the events
  late final Output<List<EventDestinationCloudwatchDestination>?>
      cloudwatchDestinations;

  /// The name of the configuration set
  late final Output<String> configurationSetName;

  /// If true, the event destination will be enabled
  late final Output<bool?> enabled;

  /// Send the events to a kinesis firehose destination
  late final Output<EventDestinationKinesisDestination?> kinesisDestination;

  /// A list of matching types. May be any of `"send"`, `"reject"`, `"bounce"`, `"complaint"`, `"delivery"`, `"open"`, `"click"`, or `"renderingFailure"`.
  late final Output<List<String>> matchingTypes;

  /// The name of the event destination
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Send the events to an SNS Topic destination
  ///
  /// > **NOTE:** You can specify `"cloudwatch_destination"` or `"kinesis_destination"` but not both
  late final Output<EventDestinationSnsDestination?> snsDestination;

  EventDestination(
    String name, {
    EventDestinationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ses/eventDestination:EventDestination',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cloudwatchDestinations =
        registerOutput<List<EventDestinationCloudwatchDestination>?>(
            'cloudwatchDestinations');
    this.configurationSetName = registerOutput<String>('configurationSetName');
    this.enabled = registerOutput<bool?>('enabled');
    this.kinesisDestination =
        registerOutput<EventDestinationKinesisDestination?>(
            'kinesisDestination');
    this.matchingTypes = registerOutput<List<String>>('matchingTypes');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.snsDestination =
        registerOutput<EventDestinationSnsDestination?>('snsDestination');
  }
}
