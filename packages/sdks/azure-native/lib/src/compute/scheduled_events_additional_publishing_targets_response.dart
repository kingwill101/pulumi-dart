// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_grid_and_resource_graph_response.dart';

class ScheduledEventsAdditionalPublishingTargetsResponse {
  /// The configuration parameters used while creating eventGridAndResourceGraph Scheduled Event setting.
  final pulumi.Input<EventGridAndResourceGraphResponse>? eventGridAndResourceGraph;

  /// Creates a new [ScheduledEventsAdditionalPublishingTargetsResponse].
  /// [eventGridAndResourceGraph] The configuration parameters used while creating eventGridAndResourceGraph Scheduled Event setting.
  const ScheduledEventsAdditionalPublishingTargetsResponse({
    this.eventGridAndResourceGraph,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventGridAndResourceGraph': ?pulumi.Input.mapOptionalInputValue<EventGridAndResourceGraphResponse, Map<String, dynamic>>(eventGridAndResourceGraph, (value) => value.toMap()),
    };
  }

  factory ScheduledEventsAdditionalPublishingTargetsResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledEventsAdditionalPublishingTargetsResponse(
      eventGridAndResourceGraph: (() { final guardedValue = map['eventGridAndResourceGraph']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventGridAndResourceGraphResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

