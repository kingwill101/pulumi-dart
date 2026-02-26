// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../asset_discovery_status_stat/asset_discovery_status_stat.dart';

class AssetDiscoveryStatus {
  /// The duration of the last discovery run.
  final String? lastRunDuration;

  /// The start time of the last discovery run.
  final String? lastRunTime;

  /// Additional information about the current state.
  final String? message;

  /// Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  final String? state;

  /// Data Stats of the asset reported by discovery.
  final List<AssetDiscoveryStatusStat>? stats;

  /// Output only. The time when the asset was last updated.
  final String? updateTime;

  AssetDiscoveryStatus({
    this.lastRunDuration,
    this.lastRunTime,
    this.message,
    this.state,
    this.stats,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lastRunDurationValue = lastRunDuration;
    if (lastRunDurationValue != null) {
      map['lastRunDuration'] = lastRunDurationValue;
    }
    final lastRunTimeValue = lastRunTime;
    if (lastRunTimeValue != null) {
      map['lastRunTime'] = lastRunTimeValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final statsValue = stats;
    if (statsValue != null) {
      map['stats'] =
          Input.encodeList<AssetDiscoveryStatusStat, Map<String, dynamic>>(
              statsValue, (value) => value.toMap());
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory AssetDiscoveryStatus.fromMap(Map<String, dynamic> map) {
    return AssetDiscoveryStatus(
      lastRunDuration: map['lastRunDuration'] == null
          ? null
          : map['lastRunDuration'] as String,
      lastRunTime:
          map['lastRunTime'] == null ? null : map['lastRunTime'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      stats: map['stats'] == null
          ? null
          : Input.decodeList<AssetDiscoveryStatusStat>(
              map['stats'],
              (value) => AssetDiscoveryStatusStat.fromMap(
                  (value as Map).cast<String, dynamic>())),
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
