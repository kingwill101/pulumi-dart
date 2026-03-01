// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_sources_config_event_source.dart';

/// {@template pulumi_devopsguru_event_sources_config_event_sources_config_args_doc}
/// The set of arguments for EventSourcesConfig.
/// {@endtemplate}
/// {@macro pulumi_devopsguru_event_sources_config_event_sources_config_args_doc}
class EventSourcesConfigArgs {
  /// Configuration information about the integration of DevOps Guru as the Consumer via EventBridge with another AWS Service. See `event_sources` below.
  final pulumi.Input<List<EventSourcesConfigEventSource>> eventSources;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EventSourcesConfigArgs].
  /// [eventSources] Configuration information about the integration of DevOps Guru as the Consumer via EventBridge with another AWS Service. See `event_sources` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EventSourcesConfigArgs({
    required List<EventSourcesConfigEventSource> eventSources,
    String? region,
  }) : eventSources = pulumi.Input.asInput<List<EventSourcesConfigEventSource>>(
         eventSources,
       ),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSources':
          pulumi.Input.mapInputValue<
            List<EventSourcesConfigEventSource>,
            List<Map<String, dynamic>>
          >(
            eventSources,
            (value) =>
                pulumi.Input.encodeList<
                  EventSourcesConfigEventSource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
    };
  }

  factory EventSourcesConfigArgs.fromMap(Map<String, dynamic> map) {
    return EventSourcesConfigArgs(
      eventSources: pulumi.Input.decodeList<EventSourcesConfigEventSource>(
        map['eventSources'],
        (value) => EventSourcesConfigEventSource.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
