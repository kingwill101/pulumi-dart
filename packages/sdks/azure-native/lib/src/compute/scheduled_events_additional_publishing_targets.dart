// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_grid_and_resource_graph.dart';

class ScheduledEventsAdditionalPublishingTargets {
  /// The configuration parameters used while creating eventGridAndResourceGraph Scheduled Event setting.
  final pulumi.Input<EventGridAndResourceGraph>? eventGridAndResourceGraph;

  /// Creates a new [ScheduledEventsAdditionalPublishingTargets].
  /// [eventGridAndResourceGraph] The configuration parameters used while creating eventGridAndResourceGraph Scheduled Event setting.
  ScheduledEventsAdditionalPublishingTargets({
    this.eventGridAndResourceGraph,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventGridAndResourceGraph': ?pulumi.Input.mapOptionalInputValue<EventGridAndResourceGraph, Map<String, dynamic>>(eventGridAndResourceGraph, (value) => value.toMap()),
    };
  }

  factory ScheduledEventsAdditionalPublishingTargets.fromMap(Map<String, dynamic> map) {
    return ScheduledEventsAdditionalPublishingTargets(
      eventGridAndResourceGraph: map['eventGridAndResourceGraph'] == null ? null : (EventGridAndResourceGraph.fromMap((map['eventGridAndResourceGraph']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

