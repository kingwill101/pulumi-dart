// ignore_for_file: unused_element, unnecessary_cast

class DestinationStateTimelineState {
  /// (Output)
  /// Accompanies only the transient states, which include `ADDING`,
  /// `DELETING`, and `SUSPENDING`, to denote the time until which the
  /// transient state of the resource will be effective. For instance, if the
  /// state is `ADDING`, this field shows the time when the resource state
  /// transitions to `ACTIVE`.
  final String? effectiveTime;

  /// (Output)
  /// The state of the resource.
  final String? state;

  /// Creates a new [DestinationStateTimelineState].
  /// [effectiveTime] (Output)
  /// [state] (Output)
  DestinationStateTimelineState({
    this.effectiveTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final effectiveTimeValue = effectiveTime;
    if (effectiveTimeValue != null) {
      map['effectiveTime'] = effectiveTimeValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory DestinationStateTimelineState.fromMap(Map<String, dynamic> map) {
    return DestinationStateTimelineState(
      effectiveTime:
          map['effectiveTime'] == null ? null : map['effectiveTime'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
