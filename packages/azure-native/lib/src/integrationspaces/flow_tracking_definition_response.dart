// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tracking_correlation_context_response.dart';
import 'tracking_event_definition_response.dart';

/// The workflow tracking definition.
class FlowTrackingDefinitionResponse {
  /// The tracking correlation context.
  final TrackingCorrelationContextResponse? correlationContext;
  /// The tracking events.
  final Map<String, TrackingEventDefinitionResponse>? events;

  /// Creates a new [FlowTrackingDefinitionResponse].
  /// [correlationContext] The tracking correlation context.
  /// [events] The tracking events.
  FlowTrackingDefinitionResponse({
    this.correlationContext,
    this.events,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'correlationContext': ?correlationContext == null ? null : correlationContext!.toMap(),
      'events': ?events == null ? null : pulumi.Input.encodeMapValues<TrackingEventDefinitionResponse, Map<String, dynamic>>(events!, (value) => value.toMap()),
    };
  }

  factory FlowTrackingDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return FlowTrackingDefinitionResponse(
      correlationContext: map['correlationContext'] == null ? null : TrackingCorrelationContextResponse.fromMap((map['correlationContext'] as Map).cast<String, dynamic>()),
      events: map['events'] == null ? null : pulumi.Input.decodeMapValues<TrackingEventDefinitionResponse>(map['events'], (value) => TrackingEventDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

