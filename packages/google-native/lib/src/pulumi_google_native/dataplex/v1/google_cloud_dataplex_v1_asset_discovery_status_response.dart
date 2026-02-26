// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_asset_discovery_status_stats_response.dart';

/// Status of discovery for an asset.
class GoogleCloudDataplexV1AssetDiscoveryStatusResponse {
  /// The duration of the last discovery run.
  final String lastRunDuration;

  /// The start time of the last discovery run.
  final String lastRunTime;

  /// Additional information about the current state.
  final String message;

  /// The current status of the discovery feature.
  final String state;

  /// Data Stats of the asset reported by discovery.
  final GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse stats;

  /// Last update time of the status.
  final String updateTime;

  GoogleCloudDataplexV1AssetDiscoveryStatusResponse({
    required this.lastRunDuration,
    required this.lastRunTime,
    required this.message,
    required this.state,
    required this.stats,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastRunDuration'] = lastRunDuration;
    map['lastRunTime'] = lastRunTime;
    map['message'] = message;
    map['state'] = state;
    map['stats'] = stats.toMap();
    map['updateTime'] = updateTime;
    return map;
  }

  factory GoogleCloudDataplexV1AssetDiscoveryStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetDiscoveryStatusResponse(
      lastRunDuration: map['lastRunDuration'] as String,
      lastRunTime: map['lastRunTime'] as String,
      message: map['message'] as String,
      state: map['state'] as String,
      stats: GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse.fromMap(
          (map['stats'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}
