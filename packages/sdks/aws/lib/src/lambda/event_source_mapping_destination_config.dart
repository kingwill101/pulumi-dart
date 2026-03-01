// ignore_for_file: unused_element, unnecessary_cast

import 'event_source_mapping_destination_config_on_failure.dart';

class EventSourceMappingDestinationConfig {
  /// Destination configuration for failed invocations. See below.
  final EventSourceMappingDestinationConfigOnFailure? onFailure;

  /// Creates a new [EventSourceMappingDestinationConfig].
  /// [onFailure] Destination configuration for failed invocations. See below.
  EventSourceMappingDestinationConfig({
    this.onFailure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onFailure': ?onFailure == null ? null : onFailure!.toMap(),
    };
  }

  factory EventSourceMappingDestinationConfig.fromMap(Map<String, dynamic> map) {
    return EventSourceMappingDestinationConfig(
      onFailure: map['onFailure'] == null ? null : EventSourceMappingDestinationConfigOnFailure.fromMap((map['onFailure'] as Map).cast<String, dynamic>()),
    );
  }
}

