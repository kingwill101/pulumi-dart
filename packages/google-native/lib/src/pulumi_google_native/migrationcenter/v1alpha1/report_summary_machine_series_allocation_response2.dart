// ignore_for_file: unused_element, unnecessary_cast

import 'machine_series_response2.dart';

/// Represents a data point tracking the count of assets allocated for a specific Machine Series.
class ReportSummaryMachineSeriesAllocationResponse2 {
  /// Count of assets allocated to this machine series.
  final String allocatedAssetCount;

  /// The Machine Series (e.g. "E2", "N2")
  final MachineSeriesResponse2 machineSeries;

  ReportSummaryMachineSeriesAllocationResponse2({
    required this.allocatedAssetCount,
    required this.machineSeries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedAssetCount'] = allocatedAssetCount;
    map['machineSeries'] = machineSeries.toMap();
    return map;
  }

  factory ReportSummaryMachineSeriesAllocationResponse2.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryMachineSeriesAllocationResponse2(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      machineSeries: MachineSeriesResponse2.fromMap(
          (map['machineSeries'] as Map).cast<String, dynamic>()),
    );
  }
}
