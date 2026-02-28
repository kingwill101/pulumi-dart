// ignore_for_file: unused_element, unnecessary_cast

class MulticloudDataTransferConfigServiceState {
  /// The time when the state becomes effective
  final String? effectiveTime;

  /// The state of the resource.
  final String? state;

  /// Creates a new [MulticloudDataTransferConfigServiceState].
  /// [effectiveTime] The time when the state becomes effective
  /// [state] The state of the resource.
  MulticloudDataTransferConfigServiceState({
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

  factory MulticloudDataTransferConfigServiceState.fromMap(
      Map<String, dynamic> map) {
    return MulticloudDataTransferConfigServiceState(
      effectiveTime:
          map['effectiveTime'] == null ? null : map['effectiveTime'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
