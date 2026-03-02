// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_profiling_group_profiling_status_latest_aggregated_profile.dart';

class GetProfilingGroupProfilingStatus {
  final pulumi.Input<String> latestAgentOrchestratedAt;
  final pulumi.Input<String> latestAgentProfileReportedAt;
  final pulumi.Input<List<GetProfilingGroupProfilingStatusLatestAggregatedProfile>> latestAggregatedProfiles;

  /// Creates a new [GetProfilingGroupProfilingStatus].
  /// [latestAgentOrchestratedAt] Required.
  /// [latestAgentProfileReportedAt] Required.
  /// [latestAggregatedProfiles] Required.
  GetProfilingGroupProfilingStatus({
    required this.latestAgentOrchestratedAt,
    required this.latestAgentProfileReportedAt,
    required this.latestAggregatedProfiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latestAgentOrchestratedAt': latestAgentOrchestratedAt,
      'latestAgentProfileReportedAt': latestAgentProfileReportedAt,
      'latestAggregatedProfiles': pulumi.Input.mapInputValue<List<GetProfilingGroupProfilingStatusLatestAggregatedProfile>, List<Map<String, dynamic>>>(latestAggregatedProfiles, (value) => pulumi.Input.encodeList<GetProfilingGroupProfilingStatusLatestAggregatedProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetProfilingGroupProfilingStatus.fromMap(Map<String, dynamic> map) {
    return GetProfilingGroupProfilingStatus(
      latestAgentOrchestratedAt: (map['latestAgentOrchestratedAt'] as String).input(),
      latestAgentProfileReportedAt: (map['latestAgentProfileReportedAt'] as String).input(),
      latestAggregatedProfiles: (pulumi.Input.decodeList<GetProfilingGroupProfilingStatusLatestAggregatedProfile>(map['latestAggregatedProfiles']!, (value) => GetProfilingGroupProfilingStatusLatestAggregatedProfile.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

