// ignore_for_file: unused_element, unnecessary_cast

import 'event_grid_and_resource_graph_response.dart';

class ScheduledEventsAdditionalPublishingTargetsResponse {
  /// The configuration parameters used while creating eventGridAndResourceGraph Scheduled Event setting.
  final EventGridAndResourceGraphResponse? eventGridAndResourceGraph;

  /// Creates a new [ScheduledEventsAdditionalPublishingTargetsResponse].
  /// [eventGridAndResourceGraph] The configuration parameters used while creating eventGridAndResourceGraph Scheduled Event setting.
  ScheduledEventsAdditionalPublishingTargetsResponse({
    this.eventGridAndResourceGraph,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventGridAndResourceGraph': ?eventGridAndResourceGraph == null ? null : eventGridAndResourceGraph!.toMap(),
    };
  }

  factory ScheduledEventsAdditionalPublishingTargetsResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledEventsAdditionalPublishingTargetsResponse(
      eventGridAndResourceGraph: map['eventGridAndResourceGraph'] == null ? null : EventGridAndResourceGraphResponse.fromMap((map['eventGridAndResourceGraph'] as Map).cast<String, dynamic>()),
    );
  }
}

