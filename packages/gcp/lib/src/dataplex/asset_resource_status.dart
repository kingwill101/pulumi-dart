// ignore_for_file: unused_element, unnecessary_cast

class AssetResourceStatus {
  /// Additional information about the current state.
  final String? message;

  /// Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  final String? state;

  /// Output only. The time when the asset was last updated.
  final String? updateTime;

  /// Creates a new [AssetResourceStatus].
  /// [message] Additional information about the current state.
  /// [state] Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  /// [updateTime] Output only. The time when the asset was last updated.
  AssetResourceStatus({
    this.message,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory AssetResourceStatus.fromMap(Map<String, dynamic> map) {
    return AssetResourceStatus(
      message: map['message'] == null ? null : map['message'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
