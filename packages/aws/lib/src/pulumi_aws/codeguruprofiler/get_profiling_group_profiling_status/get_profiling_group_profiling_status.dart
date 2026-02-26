// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_profiling_group_profiling_status_latest_aggregated_profile/get_profiling_group_profiling_status_latest_aggregated_profile.dart';

class GetProfilingGroupProfilingStatus {
  final String latestAgentOrchestratedAt;
  final String latestAgentProfileReportedAt;
  final List<GetProfilingGroupProfilingStatusLatestAggregatedProfile>
      latestAggregatedProfiles;

  GetProfilingGroupProfilingStatus({
    required this.latestAgentOrchestratedAt,
    required this.latestAgentProfileReportedAt,
    required this.latestAggregatedProfiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['latestAgentOrchestratedAt'] = latestAgentOrchestratedAt;
    map['latestAgentProfileReportedAt'] = latestAgentProfileReportedAt;
    map['latestAggregatedProfiles'] = Input.encodeList<
            GetProfilingGroupProfilingStatusLatestAggregatedProfile,
            Map<String, dynamic>>(
        latestAggregatedProfiles, (value) => value.toMap());
    return map;
  }

  factory GetProfilingGroupProfilingStatus.fromMap(Map<String, dynamic> map) {
    return GetProfilingGroupProfilingStatus(
      latestAgentOrchestratedAt: map['latestAgentOrchestratedAt'] as String,
      latestAgentProfileReportedAt:
          map['latestAgentProfileReportedAt'] as String,
      latestAggregatedProfiles: Input.decodeList<
              GetProfilingGroupProfilingStatusLatestAggregatedProfile>(
          map['latestAggregatedProfiles'],
          (value) =>
              GetProfilingGroupProfilingStatusLatestAggregatedProfile.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
