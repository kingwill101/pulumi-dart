// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trace_segment_destination_timeouts.dart';

/// Input properties used for looking up and filtering TraceSegmentDestination resources.
class TraceSegmentDestinationState {
  /// Destination of trace segments. Valid values: `XRay`, `CloudWatchLogs`.
  final pulumi.Input<String>? destination;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<TraceSegmentDestinationTimeouts>? timeouts;

  /// Creates a new [TraceSegmentDestinationState].
  /// [destination] Destination of trace segments. Valid values: `XRay`, `CloudWatchLogs`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const TraceSegmentDestinationState({
    this.destination,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TraceSegmentDestinationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TraceSegmentDestinationState.fromMap(Map<String, dynamic> map) {
    return TraceSegmentDestinationState(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TraceSegmentDestinationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
