// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'report_summary_asset_aggregate_stats_response2.dart';
import 'report_summary_group_preference_set_finding_response2.dart';

/// Summary Findings for a specific Group.
class ReportSummaryGroupFindingResponse2 {
  /// Summary statistics for all the assets in this group.
  final ReportSummaryAssetAggregateStatsResponse2 assetAggregateStats;

  /// Description for the Group.
  final String description;

  /// Display Name for the Group.
  final String displayName;

  /// This field is deprecated, do not rely on it having a value.
  final String overlappingAssetCount;

  /// Findings for each of the PreferenceSets for this group.
  final List<ReportSummaryGroupPreferenceSetFindingResponse2>
      preferenceSetFindings;

  ReportSummaryGroupFindingResponse2({
    required this.assetAggregateStats,
    required this.description,
    required this.displayName,
    required this.overlappingAssetCount,
    required this.preferenceSetFindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assetAggregateStats'] = assetAggregateStats.toMap();
    map['description'] = description;
    map['displayName'] = displayName;
    map['overlappingAssetCount'] = overlappingAssetCount;
    map['preferenceSetFindings'] = Input.encodeList<
        ReportSummaryGroupPreferenceSetFindingResponse2,
        Map<String, dynamic>>(preferenceSetFindings, (value) => value.toMap());
    return map;
  }

  factory ReportSummaryGroupFindingResponse2.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingResponse2(
      assetAggregateStats: ReportSummaryAssetAggregateStatsResponse2.fromMap(
          (map['assetAggregateStats'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      overlappingAssetCount: map['overlappingAssetCount'] as String,
      preferenceSetFindings:
          Input.decodeList<ReportSummaryGroupPreferenceSetFindingResponse2>(
              map['preferenceSetFindings'],
              (value) =>
                  ReportSummaryGroupPreferenceSetFindingResponse2.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
