// ignore_for_file: unused_element, unnecessary_cast

import 'report_summary_chart_data_response2.dart';
import 'report_summary_histogram_chart_data_response2.dart';
import 'report_summary_utilization_chart_data_response2.dart';

/// Aggregate statistics for a collection of assets.
class ReportSummaryAssetAggregateStatsResponse2 {
  /// Count of assets grouped by age.
  final ReportSummaryChartDataResponse2 assetAge;

  /// Histogram showing a distribution of CPU core counts.
  final ReportSummaryHistogramChartDataResponse2 coreCountHistogram;

  /// Histogram showing a distribution of memory sizes.
  final ReportSummaryHistogramChartDataResponse2 memoryBytesHistogram;

  /// Total memory split into Used/Free buckets.
  final ReportSummaryChartDataResponse2 memoryUtilization;

  /// Total memory split into Used/Free buckets.
  final ReportSummaryUtilizationChartDataResponse2 memoryUtilizationChart;

  /// Count of assets grouped by Operating System families.
  final ReportSummaryChartDataResponse2 operatingSystem;

  /// Histogram showing a distribution of memory sizes.
  final ReportSummaryHistogramChartDataResponse2 storageBytesHistogram;

  /// Total storage split into Used/Free buckets.
  final ReportSummaryChartDataResponse2 storageUtilization;

  /// Total memory split into Used/Free buckets.
  final ReportSummaryUtilizationChartDataResponse2 storageUtilizationChart;

  /// Count of the number of unique assets in this collection.
  final String totalAssets;

  /// Sum of the CPU core count of all the assets in this collection.
  final String totalCores;

  /// Sum of the memory in bytes of all the assets in this collection.
  final String totalMemoryBytes;

  /// Sum of persistent storage in bytes of all the assets in this collection.
  final String totalStorageBytes;

  ReportSummaryAssetAggregateStatsResponse2({
    required this.assetAge,
    required this.coreCountHistogram,
    required this.memoryBytesHistogram,
    required this.memoryUtilization,
    required this.memoryUtilizationChart,
    required this.operatingSystem,
    required this.storageBytesHistogram,
    required this.storageUtilization,
    required this.storageUtilizationChart,
    required this.totalAssets,
    required this.totalCores,
    required this.totalMemoryBytes,
    required this.totalStorageBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assetAge'] = assetAge.toMap();
    map['coreCountHistogram'] = coreCountHistogram.toMap();
    map['memoryBytesHistogram'] = memoryBytesHistogram.toMap();
    map['memoryUtilization'] = memoryUtilization.toMap();
    map['memoryUtilizationChart'] = memoryUtilizationChart.toMap();
    map['operatingSystem'] = operatingSystem.toMap();
    map['storageBytesHistogram'] = storageBytesHistogram.toMap();
    map['storageUtilization'] = storageUtilization.toMap();
    map['storageUtilizationChart'] = storageUtilizationChart.toMap();
    map['totalAssets'] = totalAssets;
    map['totalCores'] = totalCores;
    map['totalMemoryBytes'] = totalMemoryBytes;
    map['totalStorageBytes'] = totalStorageBytes;
    return map;
  }

  factory ReportSummaryAssetAggregateStatsResponse2.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryAssetAggregateStatsResponse2(
      assetAge: ReportSummaryChartDataResponse2.fromMap(
          (map['assetAge'] as Map).cast<String, dynamic>()),
      coreCountHistogram: ReportSummaryHistogramChartDataResponse2.fromMap(
          (map['coreCountHistogram'] as Map).cast<String, dynamic>()),
      memoryBytesHistogram: ReportSummaryHistogramChartDataResponse2.fromMap(
          (map['memoryBytesHistogram'] as Map).cast<String, dynamic>()),
      memoryUtilization: ReportSummaryChartDataResponse2.fromMap(
          (map['memoryUtilization'] as Map).cast<String, dynamic>()),
      memoryUtilizationChart:
          ReportSummaryUtilizationChartDataResponse2.fromMap(
              (map['memoryUtilizationChart'] as Map).cast<String, dynamic>()),
      operatingSystem: ReportSummaryChartDataResponse2.fromMap(
          (map['operatingSystem'] as Map).cast<String, dynamic>()),
      storageBytesHistogram: ReportSummaryHistogramChartDataResponse2.fromMap(
          (map['storageBytesHistogram'] as Map).cast<String, dynamic>()),
      storageUtilization: ReportSummaryChartDataResponse2.fromMap(
          (map['storageUtilization'] as Map).cast<String, dynamic>()),
      storageUtilizationChart:
          ReportSummaryUtilizationChartDataResponse2.fromMap(
              (map['storageUtilizationChart'] as Map).cast<String, dynamic>()),
      totalAssets: map['totalAssets'] as String,
      totalCores: map['totalCores'] as String,
      totalMemoryBytes: map['totalMemoryBytes'] as String,
      totalStorageBytes: map['totalStorageBytes'] as String,
    );
  }
}
