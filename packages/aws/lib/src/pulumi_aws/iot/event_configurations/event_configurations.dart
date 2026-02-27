import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_configurations_args.dart';

/// Manages IoT event configurations.
///
/// > **NOTE:** Deleting this resource does not disable the event configurations, the resource in simply removed from state instead.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT Event Configurations using the AWS Region. For example:
///
/// ```sh
/// $ pulumi import aws:iot/eventConfigurations:EventConfigurations example us-west-2
/// ```
class EventConfigurations extends pulumi.CustomResource {
  /// Map. The new event configuration values. You can use only these strings as keys: `THING_GROUP_HIERARCHY`, `THING_GROUP_MEMBERSHIP`, `THING_TYPE`, `THING_TYPE_ASSOCIATION`, `THING_GROUP`, `THING`, `POLICY`, `CA_CERTIFICATE`, `JOB_EXECUTION`, `CERTIFICATE`, `JOB`. Use boolean for values of mapping.
  late final pulumi.Output<Map<String, bool>> eventConfigurations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  EventConfigurations(
    String name, {
    EventConfigurationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/eventConfigurations:EventConfigurations',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.eventConfigurations =
        registerOutput<Map<String, bool>>('eventConfigurations');
    this.region = registerOutput<String>('region');
  }
}
