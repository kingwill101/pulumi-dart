// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_asset_aggregate_stats_response_migrationcenter_v1alpha1.dart';
import 'report_summary_group_finding_response_migrationcenter_v1alpha1.dart';

/// Describes the Summary view of a Report, which contains aggregated values for all the groups and preference sets included in this Report.
class ReportSummaryResponseMigrationcenterV1alpha1 {
  /// Aggregate statistics for all the assets across all the groups.
  final ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1 allAssetsStats;
  /// Findings for each Group included in this report.
  final List<ReportSummaryGroupFindingResponseMigrationcenterV1alpha1> groupFindings;

  /// Creates a new [ReportSummaryResponseMigrationcenterV1alpha1].
  /// [allAssetsStats] Aggregate statistics for all the assets across all the groups.
  /// [groupFindings] Findings for each Group included in this report.
  ReportSummaryResponseMigrationcenterV1alpha1({
    required this.allAssetsStats,
    required this.groupFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allAssetsStats': allAssetsStats.toMap(),
      'groupFindings': pulumi.Input.encodeList<ReportSummaryGroupFindingResponseMigrationcenterV1alpha1, Map<String, dynamic>>(groupFindings, (value) => value.toMap()),
    };
  }

  factory ReportSummaryResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReportSummaryResponseMigrationcenterV1alpha1(
      allAssetsStats: ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1.fromMap((map['allAssetsStats'] as Map).cast<String, dynamic>()),
      groupFindings: pulumi.Input.decodeList<ReportSummaryGroupFindingResponseMigrationcenterV1alpha1>(map['groupFindings'], (value) => ReportSummaryGroupFindingResponseMigrationcenterV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

