// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tracking_correlation_context_response.dart';
import 'tracking_event_definition_response.dart';

/// The workflow tracking definition.
class FlowTrackingDefinitionResponse {
  /// The tracking correlation context.
  final pulumi.Input<TrackingCorrelationContextResponse>? correlationContext;
  /// The tracking events.
  final pulumi.Input<Map<String, TrackingEventDefinitionResponse>>? events;

  /// Creates a new [FlowTrackingDefinitionResponse].
  /// [correlationContext] The tracking correlation context.
  /// [events] The tracking events.
  FlowTrackingDefinitionResponse({
    this.correlationContext,
    this.events,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'correlationContext': ?pulumi.Input.mapOptionalInputValue<TrackingCorrelationContextResponse, Map<String, dynamic>>(correlationContext, (value) => value.toMap()),
      'events': ?pulumi.Input.mapOptionalInputValue<Map<String, TrackingEventDefinitionResponse>, Map<String, Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeMapValues<TrackingEventDefinitionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FlowTrackingDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return FlowTrackingDefinitionResponse(
      correlationContext: map['correlationContext'] == null ? null : (TrackingCorrelationContextResponse.fromMap((map['correlationContext'] as Map).cast<String, dynamic>())).input(),
      events: map['events'] == null ? null : (pulumi.Input.decodeMapValues<TrackingEventDefinitionResponse>(map['events'], (value) => TrackingEventDefinitionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

