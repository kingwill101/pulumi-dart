// ignore_for_file: unused_element, unnecessary_cast

import 'report_summary_chart_data_response_migrationcenter_v1alpha1.dart';
import 'report_summary_histogram_chart_data_response_migrationcenter_v1alpha1.dart';
import 'report_summary_utilization_chart_data_response_migrationcenter_v1alpha1.dart';

/// Aggregate statistics for a collection of assets.
class ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1 {
  /// Count of assets grouped by age.
  final ReportSummaryChartDataResponseMigrationcenterV1alpha1 assetAge;

  /// Histogram showing a distribution of CPU core counts.
  final ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1
  coreCountHistogram;

  /// Histogram showing a distribution of memory sizes.
  final ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1
  memoryBytesHistogram;

  /// Total memory split into Used/Free buckets.
  final ReportSummaryChartDataResponseMigrationcenterV1alpha1 memoryUtilization;

  /// Total memory split into Used/Free buckets.
  final ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1
  memoryUtilizationChart;

  /// Count of assets grouped by Operating System families.
  final ReportSummaryChartDataResponseMigrationcenterV1alpha1 operatingSystem;

  /// Histogram showing a distribution of memory sizes.
  final ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1
  storageBytesHistogram;

  /// Total storage split into Used/Free buckets.
  final ReportSummaryChartDataResponseMigrationcenterV1alpha1
  storageUtilization;

  /// Total memory split into Used/Free buckets.
  final ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1
  storageUtilizationChart;

  /// Count of the number of unique assets in this collection.
  final String totalAssets;

  /// Sum of the CPU core count of all the assets in this collection.
  final String totalCores;

  /// Sum of the memory in bytes of all the assets in this collection.
  final String totalMemoryBytes;

  /// Sum of persistent storage in bytes of all the assets in this collection.
  final String totalStorageBytes;

  /// Creates a new [ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1].
  /// [assetAge] Count of assets grouped by age.
  /// [coreCountHistogram] Histogram showing a distribution of CPU core counts.
  /// [memoryBytesHistogram] Histogram showing a distribution of memory sizes.
  /// [memoryUtilization] Total memory split into Used/Free buckets.
  /// [memoryUtilizationChart] Total memory split into Used/Free buckets.
  /// [operatingSystem] Count of assets grouped by Operating System families.
  /// [storageBytesHistogram] Histogram showing a distribution of memory sizes.
  /// [storageUtilization] Total storage split into Used/Free buckets.
  /// [storageUtilizationChart] Total memory split into Used/Free buckets.
  /// [totalAssets] Count of the number of unique assets in this collection.
  /// [totalCores] Sum of the CPU core count of all the assets in this collection.
  /// [totalMemoryBytes] Sum of the memory in bytes of all the assets in this collection.
  /// [totalStorageBytes] Sum of persistent storage in bytes of all the assets in this collection.
  ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1({
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
    return <String, dynamic>{
      'assetAge': assetAge.toMap(),
      'coreCountHistogram': coreCountHistogram.toMap(),
      'memoryBytesHistogram': memoryBytesHistogram.toMap(),
      'memoryUtilization': memoryUtilization.toMap(),
      'memoryUtilizationChart': memoryUtilizationChart.toMap(),
      'operatingSystem': operatingSystem.toMap(),
      'storageBytesHistogram': storageBytesHistogram.toMap(),
      'storageUtilization': storageUtilization.toMap(),
      'storageUtilizationChart': storageUtilizationChart.toMap(),
      'totalAssets': totalAssets,
      'totalCores': totalCores,
      'totalMemoryBytes': totalMemoryBytes,
      'totalStorageBytes': totalStorageBytes,
    };
  }

  factory ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReportSummaryAssetAggregateStatsResponseMigrationcenterV1alpha1(
      assetAge: ReportSummaryChartDataResponseMigrationcenterV1alpha1.fromMap(
        (map['assetAge'] as Map).cast<String, dynamic>(),
      ),
      coreCountHistogram:
          ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1.fromMap(
            (map['coreCountHistogram'] as Map).cast<String, dynamic>(),
          ),
      memoryBytesHistogram:
          ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1.fromMap(
            (map['memoryBytesHistogram'] as Map).cast<String, dynamic>(),
          ),
      memoryUtilization:
          ReportSummaryChartDataResponseMigrationcenterV1alpha1.fromMap(
            (map['memoryUtilization'] as Map).cast<String, dynamic>(),
          ),
      memoryUtilizationChart:
          ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1.fromMap(
            (map['memoryUtilizationChart'] as Map).cast<String, dynamic>(),
          ),
      operatingSystem:
          ReportSummaryChartDataResponseMigrationcenterV1alpha1.fromMap(
            (map['operatingSystem'] as Map).cast<String, dynamic>(),
          ),
      storageBytesHistogram:
          ReportSummaryHistogramChartDataResponseMigrationcenterV1alpha1.fromMap(
            (map['storageBytesHistogram'] as Map).cast<String, dynamic>(),
          ),
      storageUtilization:
          ReportSummaryChartDataResponseMigrationcenterV1alpha1.fromMap(
            (map['storageUtilization'] as Map).cast<String, dynamic>(),
          ),
      storageUtilizationChart:
          ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1.fromMap(
            (map['storageUtilizationChart'] as Map).cast<String, dynamic>(),
          ),
      totalAssets: map['totalAssets'] as String,
      totalCores: map['totalCores'] as String,
      totalMemoryBytes: map['totalMemoryBytes'] as String,
      totalStorageBytes: map['totalStorageBytes'] as String,
    );
  }
}
