import 'package:pulumi/pulumi.dart';
import '../configuration_set_event_destination_event_destination/configuration_set_event_destination_event_destination.dart';
import 'configuration_set_event_destination_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Configuration Set Event Destination.
///
/// ## Example Usage
///
/// ### CloudWatch Destination
///
///
///
/// ### EventBridge Destination
///
///
///
/// ### Kinesis Firehose Destination
///
///
///
/// ### Pinpoint Destination
///
///
///
/// ### SNS Destination
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Configuration Set Event Destination using the `id` (`configuration_set_name|event_destination_name`). For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/configurationSetEventDestination:ConfigurationSetEventDestination example example_configuration_set|example_event_destination
/// ```
class ConfigurationSetEventDestination extends CustomResource {
  /// The name of the configuration set.
  late final Output<String> configurationSetName;

  /// A name that identifies the event destination within the configuration set.
  late final Output<ConfigurationSetEventDestinationEventDestination>
      eventDestination;

  /// An object that defines the event destination. See `event_destination` Block for details.
  late final Output<String> eventDestinationName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ConfigurationSetEventDestination(
    String name, {
    ConfigurationSetEventDestinationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/configurationSetEventDestination:ConfigurationSetEventDestination',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configurationSetName = registerOutput<String>('configurationSetName');
    this.eventDestination =
        registerOutput<ConfigurationSetEventDestinationEventDestination>(
            'eventDestination');
    this.eventDestinationName = registerOutput<String>('eventDestinationName');
    this.region = registerOutput<String>('region');
  }
}
