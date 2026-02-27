// ignore_for_file: unused_element, unnecessary_cast

import 'machine_series_response_migrationcenter_v1alpha1.dart';

/// Represents a data point tracking the count of assets allocated for a specific Machine Series.
class ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1 {
  /// Count of assets allocated to this machine series.
  final String allocatedAssetCount;

  /// The Machine Series (e.g. "E2", "N2")
  final MachineSeriesResponseMigrationcenterV1alpha1 machineSeries;

  ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1({
    required this.allocatedAssetCount,
    required this.machineSeries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedAssetCount'] = allocatedAssetCount;
    map['machineSeries'] = machineSeries.toMap();
    return map;
  }

  factory ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      machineSeries: MachineSeriesResponseMigrationcenterV1alpha1.fromMap(
          (map['machineSeries'] as Map).cast<String, dynamic>()),
    );
  }
}
