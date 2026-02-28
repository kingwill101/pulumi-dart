// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_asset_aggregate_stats_response_migrationcenter_v1alpha1.dart';
import 'report_summary_group_preference_set_finding_response_migrationcenter_v1alpha1.dart';

/// Summary Findings for a specific Group.
class ReportSummaryGroupFindingResponseMigrationcenterV1alpha1 {
  /// Summary statistics for all the assets in this group.
  final ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1 assetAggregateStats;
  /// Description for the Group.
  final String description;
  /// Display Name for the Group.
  final String displayName;
  /// This field is deprecated, do not rely on it having a value.
  final String overlappingAssetCount;
  /// Findings for each of the PreferenceSets for this group.
  final List<ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1> preferenceSetFindings;

  /// Creates a new [ReportSummaryGroupFindingResponseMigrationcenterV1alpha1].
  /// [assetAggregateStats] Summary statistics for all the assets in this group.
  /// [description] Description for the Group.
  /// [displayName] Display Name for the Group.
  /// [overlappingAssetCount] This field is deprecated, do not rely on it having a value.
  /// [preferenceSetFindings] Findings for each of the PreferenceSets for this group.
  ReportSummaryGroupFindingResponseMigrationcenterV1alpha1({
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
      'preferenceSetFindings': pulumi.Input.encodeList<ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1, Map<String, dynamic>>(preferenceSetFindings, (value) => value.toMap()),
    };
  }

  factory ReportSummaryGroupFindingResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingResponseMigrationcenterV1alpha1(
      assetAggregateStats: ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1.fromMap((map['assetAggregateStats'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      overlappingAssetCount: map['overlappingAssetCount'] as String,
      preferenceSetFindings: pulumi.Input.decodeList<ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1>(map['preferenceSetFindings'], (value) => ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

