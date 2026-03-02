// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_sources_config_event_source.dart';

/// Input properties used for looking up and filtering EventSourcesConfig resources.
class EventSourcesConfigState {
  /// Configuration information about the integration of DevOps Guru as the Consumer via EventBridge with another AWS Service. See `event_sources` below.
  final pulumi.Input<List<EventSourcesConfigEventSource>>? eventSources;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EventSourcesConfigState].
  /// [eventSources] Configuration information about the integration of DevOps Guru as the Consumer via EventBridge with another AWS Service. See `event_sources` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EventSourcesConfigState({
    this.eventSources,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSources': ?pulumi.Input.mapOptionalInputValue<List<EventSourcesConfigEventSource>, List<Map<String, dynamic>>>(eventSources, (value) => pulumi.Input.encodeList<EventSourcesConfigEventSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory EventSourcesConfigState.fromMap(Map<String, dynamic> map) {
    return EventSourcesConfigState(
      eventSources: map['eventSources'] == null ? null : ((pulumi.Input.decodeList<EventSourcesConfigEventSource>(map['eventSources']!, (value) => EventSourcesConfigEventSource.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

