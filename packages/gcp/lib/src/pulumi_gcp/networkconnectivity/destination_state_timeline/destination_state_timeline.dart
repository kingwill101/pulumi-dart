// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../destination_state_timeline_state/destination_state_timeline_state.dart';

class DestinationStateTimeline {
  /// (Output)
  /// The state and activation time details of the resource state.
  /// Structure is documented below.
  final List<DestinationStateTimelineState>? states;

  DestinationStateTimeline({
    this.states,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final statesValue = states;
    if (statesValue != null) {
      map['states'] =
          Input.encodeList<DestinationStateTimelineState, Map<String, dynamic>>(
              statesValue, (value) => value.toMap());
    }
    return map;
  }

  factory DestinationStateTimeline.fromMap(Map<String, dynamic> map) {
    return DestinationStateTimeline(
      states: map['states'] == null
          ? null
          : Input.decodeList<DestinationStateTimelineState>(
              map['states'],
              (value) => DestinationStateTimelineState.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
