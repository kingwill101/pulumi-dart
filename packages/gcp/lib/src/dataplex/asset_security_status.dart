// ignore_for_file: unused_element, unnecessary_cast

class AssetSecurityStatus {
  /// Additional information about the current state.
  final String? message;

  /// Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  final String? state;

  /// Output only. The time when the asset was last updated.
  final String? updateTime;

  /// Creates a new [AssetSecurityStatus].
  /// [message] Additional information about the current state.
  /// [state] Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  /// [updateTime] Output only. The time when the asset was last updated.
  AssetSecurityStatus({this.message, this.state, this.updateTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory AssetSecurityStatus.fromMap(Map<String, dynamic> map) {
    return AssetSecurityStatus(
      message: map['message'] == null ? null : map['message'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      updateTime: map['updateTime'] == null
          ? null
          : map['updateTime'] as String,
    );
  }
}
