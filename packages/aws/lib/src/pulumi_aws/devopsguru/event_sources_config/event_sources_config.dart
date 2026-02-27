import 'package:pulumi/pulumi.dart';
import '../event_sources_config_event_source/event_sources_config_event_source.dart';
import 'event_sources_config_args.dart';

/// Resource for managing an AWS DevOps Guru Event Sources Config. Currently the only service that can be integrated with DevOps Guru is Amazon CodeGuru Profiler, which can produce proactive recommendations which can be stored and viewed in DevOps Guru.
///
/// > Destruction of this resource will set the CodeGuru profiler status to `DISABLED`. If you wish to preserve an `ENABLED` configuration while removing the Terraform resource, utilize a `removed` block (available in Terraform 1.7+).
///
/// > Event sources are configured at the account level. To avoid persistent differences, this resource should be defined only once.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DevOps Guru Event Sources Config using the region. For example:
///
/// ```sh
/// $ pulumi import aws:devopsguru/eventSourcesConfig:EventSourcesConfig example us-east-1
/// ```
class EventSourcesConfig extends CustomResource {
  /// Configuration information about the integration of DevOps Guru as the Consumer via EventBridge with another AWS Service. See `event_sources` below.
  late final Output<List<EventSourcesConfigEventSource>> eventSources;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  EventSourcesConfig(
    String name, {
    EventSourcesConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:devopsguru/eventSourcesConfig:EventSourcesConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.eventSources =
        registerOutput<List<EventSourcesConfigEventSource>>('eventSources');
    this.region = registerOutput<String>('region');
  }
}
