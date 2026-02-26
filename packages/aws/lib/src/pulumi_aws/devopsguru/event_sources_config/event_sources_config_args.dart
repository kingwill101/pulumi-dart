// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../event_sources_config_event_source/event_sources_config_event_source.dart';

/// The set of arguments for EventSourcesConfig.
class EventSourcesConfigArgs {
  /// Configuration information about the integration of DevOps Guru as the Consumer via EventBridge with another AWS Service. See <span pulumi-lang-nodejs="`eventSources`" pulumi-lang-dotnet="`EventSources`" pulumi-lang-go="`eventSources`" pulumi-lang-python="`event_sources`" pulumi-lang-yaml="`eventSources`" pulumi-lang-java="`eventSources`">`event_sources`</span> below.
  final Input<List<EventSourcesConfigEventSource>> eventSources;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  EventSourcesConfigArgs({
    required this.eventSources,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventSources'] = Input.mapInputValue<
            List<EventSourcesConfigEventSource>, List<Map<String, dynamic>>>(
        eventSources,
        (value) => Input.encodeList<EventSourcesConfigEventSource,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory EventSourcesConfigArgs.fromMap(Map<String, dynamic> map) {
    return EventSourcesConfigArgs(
      eventSources: Input.asInput<List<EventSourcesConfigEventSource>>(
          map['eventSources']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
