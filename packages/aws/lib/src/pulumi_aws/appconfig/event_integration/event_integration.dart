import 'package:pulumi/pulumi.dart';
import '../event_integration_event_filter/event_integration_event_filter.dart';
import 'event_integration_args.dart';

/// Provides an Amazon AppIntegrations Event Integration resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon AppIntegrations Event Integrations using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/eventIntegration:EventIntegration example example-name
/// ```
class EventIntegration extends CustomResource {
  /// ARN of the Event Integration.
  late final Output<String> arn;

  /// Description of the Event Integration.
  late final Output<String?> description;

  /// Block that defines the configuration information for the event filter. The Event Filter block is documented below.
  late final Output<EventIntegrationEventFilter> eventFilter;

  /// EventBridge bus.
  late final Output<String> eventbridgeBus;

  /// Name of the Event Integration.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tags to apply to the Event Integration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  EventIntegration(
    String name, {
    EventIntegrationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/eventIntegration:EventIntegration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.eventFilter =
        registerOutput<EventIntegrationEventFilter>('eventFilter');
    this.eventbridgeBus = registerOutput<String>('eventbridgeBus');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
