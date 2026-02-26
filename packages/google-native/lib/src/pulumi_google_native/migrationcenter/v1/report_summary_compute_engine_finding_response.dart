// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'report_summary_machine_series_allocation_response.dart';

/// A set of findings that applies to assets destined for Compute Engine.
class ReportSummaryComputeEngineFindingResponse {
  /// Count of assets which were allocated.
  final String allocatedAssetCount;

  /// Set of disk types allocated to assets.
  final List<String> allocatedDiskTypes;

  /// Set of regions in which the assets were allocated.
  final List<String> allocatedRegions;

  /// Distribution of assets based on the Machine Series.
  final List<ReportSummaryMachineSeriesAllocationResponse>
      machineSeriesAllocations;

  ReportSummaryComputeEngineFindingResponse({
    required this.allocatedAssetCount,
    required this.allocatedDiskTypes,
    required this.allocatedRegions,
    required this.machineSeriesAllocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedAssetCount'] = allocatedAssetCount;
    map['allocatedDiskTypes'] = allocatedDiskTypes;
    map['allocatedRegions'] = allocatedRegions;
    map['machineSeriesAllocations'] = Input.encodeList<
            ReportSummaryMachineSeriesAllocationResponse, Map<String, dynamic>>(
        machineSeriesAllocations, (value) => value.toMap());
    return map;
  }

  factory ReportSummaryComputeEngineFindingResponse.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryComputeEngineFindingResponse(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      allocatedDiskTypes: (map['allocatedDiskTypes'] as List).cast<String>(),
      allocatedRegions: (map['allocatedRegions'] as List).cast<String>(),
      machineSeriesAllocations:
          Input.decodeList<ReportSummaryMachineSeriesAllocationResponse>(
              map['machineSeriesAllocations'],
              (value) => ReportSummaryMachineSeriesAllocationResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
