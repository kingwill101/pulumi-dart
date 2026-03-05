// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_mapping_destination_config_on_failure.dart';

class EventSourceMappingDestinationConfig {
  /// Destination configuration for failed invocations. See below.
  final pulumi.Input<EventSourceMappingDestinationConfigOnFailure>? onFailure;

  /// Creates a new [EventSourceMappingDestinationConfig].
  /// [onFailure] Destination configuration for failed invocations. See below.
  EventSourceMappingDestinationConfig({
    this.onFailure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onFailure': ?pulumi.Input.mapOptionalInputValue<EventSourceMappingDestinationConfigOnFailure, Map<String, dynamic>>(onFailure, (value) => value.toMap()),
    };
  }

  factory EventSourceMappingDestinationConfig.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingDestinationConfig(
      onFailure: (() { final guardedValue = map['onFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSourceMappingDestinationConfigOnFailure.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

