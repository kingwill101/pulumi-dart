// ignore_for_file: unused_element, unnecessary_cast

import 'report_summary_chart_data_response.dart';
import 'report_summary_histogram_chart_data_response.dart';
import 'report_summary_utilization_chart_data_response.dart';

/// Aggregate statistics for a collection of assets.
class ReportSummaryAssetAggregateStatsResponse {
  /// Histogram showing a distribution of CPU core counts.
  final ReportSummaryHistogramChartDataResponse coreCountHistogram;

  /// Histogram showing a distribution of memory sizes.
  final ReportSummaryHistogramChartDataResponse memoryBytesHistogram;

  /// Total memory split into Used/Free buckets.
  final ReportSummaryUtilizationChartDataResponse memoryUtilizationChart;

  /// Count of assets grouped by Operating System families.
  final ReportSummaryChartDataResponse operatingSystem;

  /// Histogram showing a distribution of memory sizes.
  final ReportSummaryHistogramChartDataResponse storageBytesHistogram;

  /// Total memory split into Used/Free buckets.
  final ReportSummaryUtilizationChartDataResponse storageUtilizationChart;

  /// Count of the number of unique assets in this collection.
  final String totalAssets;

  /// Sum of the CPU core count of all the assets in this collection.
  final String totalCores;

  /// Sum of the memory in bytes of all the assets in this collection.
  final String totalMemoryBytes;

  /// Sum of persistent storage in bytes of all the assets in this collection.
  final String totalStorageBytes;

  /// Creates a new [ReportSummaryAssetAggregateStatsResponse].
  /// [coreCountHistogram] Histogram showing a distribution of CPU core counts.
  /// [memoryBytesHistogram] Histogram showing a distribution of memory sizes.
  /// [memoryUtilizationChart] Total memory split into Used/Free buckets.
  /// [operatingSystem] Count of assets grouped by Operating System families.
  /// [storageBytesHistogram] Histogram showing a distribution of memory sizes.
  /// [storageUtilizationChart] Total memory split into Used/Free buckets.
  /// [totalAssets] Count of the number of unique assets in this collection.
  /// [totalCores] Sum of the CPU core count of all the assets in this collection.
  /// [totalMemoryBytes] Sum of the memory in bytes of all the assets in this collection.
  /// [totalStorageBytes] Sum of persistent storage in bytes of all the assets in this collection.
  ReportSummaryAssetAggregateStatsResponse({
    required this.coreCountHistogram,
    required this.memoryBytesHistogram,
    required this.memoryUtilizationChart,
    required this.operatingSystem,
    required this.storageBytesHistogram,
    required this.storageUtilizationChart,
    required this.totalAssets,
    required this.totalCores,
    required this.totalMemoryBytes,
    required this.totalStorageBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coreCountHistogram'] = coreCountHistogram.toMap();
    map['memoryBytesHistogram'] = memoryBytesHistogram.toMap();
    map['memoryUtilizationChart'] = memoryUtilizationChart.toMap();
    map['operatingSystem'] = operatingSystem.toMap();
    map['storageBytesHistogram'] = storageBytesHistogram.toMap();
    map['storageUtilizationChart'] = storageUtilizationChart.toMap();
    map['totalAssets'] = totalAssets;
    map['totalCores'] = totalCores;
    map['totalMemoryBytes'] = totalMemoryBytes;
    map['totalStorageBytes'] = totalStorageBytes;
    return map;
  }

  factory ReportSummaryAssetAggregateStatsResponse.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryAssetAggregateStatsResponse(
      coreCountHistogram: ReportSummaryHistogramChartDataResponse.fromMap(
          (map['coreCountHistogram'] as Map).cast<String, dynamic>()),
      memoryBytesHistogram: ReportSummaryHistogramChartDataResponse.fromMap(
          (map['memoryBytesHistogram'] as Map).cast<String, dynamic>()),
      memoryUtilizationChart: ReportSummaryUtilizationChartDataResponse.fromMap(
          (map['memoryUtilizationChart'] as Map).cast<String, dynamic>()),
      operatingSystem: ReportSummaryChartDataResponse.fromMap(
          (map['operatingSystem'] as Map).cast<String, dynamic>()),
      storageBytesHistogram: ReportSummaryHistogramChartDataResponse.fromMap(
          (map['storageBytesHistogram'] as Map).cast<String, dynamic>()),
      storageUtilizationChart:
          ReportSummaryUtilizationChartDataResponse.fromMap(
              (map['storageUtilizationChart'] as Map).cast<String, dynamic>()),
      totalAssets: map['totalAssets'] as String,
      totalCores: map['totalCores'] as String,
      totalMemoryBytes: map['totalMemoryBytes'] as String,
      totalStorageBytes: map['totalStorageBytes'] as String,
    );
  }
}
