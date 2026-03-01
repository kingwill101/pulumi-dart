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
    return <String, dynamic>{
      'effectiveTime': ?effectiveTime,
      'state': ?state,
    };
  }

  factory MulticloudDataTransferConfigServiceState.fromMap(Map<String, dynamic> map) {
    return MulticloudDataTransferConfigServiceState(
      effectiveTime: map['effectiveTime'] == null ? null : map['effectiveTime'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

