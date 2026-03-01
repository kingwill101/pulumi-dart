// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_asset_aggregate_stats_response.dart';
import 'report_summary_group_preference_set_finding_response.dart';

/// Summary Findings for a specific Group.
class ReportSummaryGroupFindingResponse {
  /// Summary statistics for all the assets in this group.
  final ReportSummaryAssetAggregateStatsResponse assetAggregateStats;

  /// Description for the Group.
  final String description;

  /// Display Name for the Group.
  final String displayName;

  /// This field is deprecated, do not rely on it having a value.
  final String overlappingAssetCount;

  /// Findings for each of the PreferenceSets for this group.
  final List<ReportSummaryGroupPreferenceSetFindingResponse>
  preferenceSetFindings;

  /// Creates a new [ReportSummaryGroupFindingResponse].
  /// [assetAggregateStats] Summary statistics for all the assets in this group.
  /// [description] Description for the Group.
  /// [displayName] Display Name for the Group.
  /// [overlappingAssetCount] This field is deprecated, do not rely on it having a value.
  /// [preferenceSetFindings] Findings for each of the PreferenceSets for this group.
  ReportSummaryGroupFindingResponse({
    required this.assetAggregateStats,
    required this.description,
    required this.displayName,
    required this.overlappingAssetCount,
    required this.preferenceSetFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetAggregateStats': assetAggregateStats.toMap(),
      'description': description,
      'displayName': displayName,
      'overlappingAssetCount': overlappingAssetCount,
      'preferenceSetFindings':
          pulumi.Input.encodeList<
            ReportSummaryGroupPreferenceSetFindingResponse,
            Map<String, dynamic>
          >(preferenceSetFindings, (value) => value.toMap()),
    };
  }

  factory ReportSummaryGroupFindingResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingResponse(
      assetAggregateStats: ReportSummaryAssetAggregateStatsResponse.fromMap(
        (map['assetAggregateStats'] as Map).cast<String, dynamic>(),
      ),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      overlappingAssetCount: map['overlappingAssetCount'] as String,
      preferenceSetFindings:
          pulumi
              .Input.decodeList<ReportSummaryGroupPreferenceSetFindingResponse>(
            map['preferenceSetFindings'],
            (value) => ReportSummaryGroupPreferenceSetFindingResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
