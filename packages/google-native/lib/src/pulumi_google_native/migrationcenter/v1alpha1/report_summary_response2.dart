// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'report_summary_asset_aggregate_stats_response2.dart';
import 'report_summary_group_finding_response2.dart';

/// Describes the Summary view of a Report, which contains aggregated values for all the groups and preference sets included in this Report.
class ReportSummaryResponse2 {
  /// Aggregate statistics for all the assets across all the groups.
  final ReportSummaryAssetAggregateStatsResponse2 allAssetsStats;

  /// Findings for each Group included in this report.
  final List<ReportSummaryGroupFindingResponse2> groupFindings;

  ReportSummaryResponse2({
    required this.allAssetsStats,
    required this.groupFindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allAssetsStats'] = allAssetsStats.toMap();
    map['groupFindings'] = Input.encodeList<ReportSummaryGroupFindingResponse2,
        Map<String, dynamic>>(groupFindings, (value) => value.toMap());
    return map;
  }

  factory ReportSummaryResponse2.fromMap(Map<String, dynamic> map) {
    return ReportSummaryResponse2(
      allAssetsStats: ReportSummaryAssetAggregateStatsResponse2.fromMap(
          (map['allAssetsStats'] as Map).cast<String, dynamic>()),
      groupFindings: Input.decodeList<ReportSummaryGroupFindingResponse2>(
          map['groupFindings'],
          (value) => ReportSummaryGroupFindingResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
