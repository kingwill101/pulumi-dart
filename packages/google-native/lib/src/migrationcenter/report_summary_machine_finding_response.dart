// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_machine_series_allocation_response_migrationcenter_v1alpha1.dart';

/// A set of findings that applies to assets of type Virtual/Physical Machine.
class ReportSummaryMachineFindingResponse {
  /// Count of assets which were allocated.
  final String allocatedAssetCount;

  /// Set of disk types allocated to assets.
  final List<String> allocatedDiskTypes;

  /// Set of regions in which the assets were allocated.
  final List<String> allocatedRegions;

  /// Distribution of assets based on the Machine Series.
  final List<
          ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1>
      machineSeriesAllocations;

  /// Creates a new [ReportSummaryMachineFindingResponse].
  /// [allocatedAssetCount] Count of assets which were allocated.
  /// [allocatedDiskTypes] Set of disk types allocated to assets.
  /// [allocatedRegions] Set of regions in which the assets were allocated.
  /// [machineSeriesAllocations] Distribution of assets based on the Machine Series.
  ReportSummaryMachineFindingResponse({
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
    map['machineSeriesAllocations'] = pulumi.Input.encodeList<
            ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1,
            Map<String, dynamic>>(
        machineSeriesAllocations, (value) => value.toMap());
    return map;
  }

  factory ReportSummaryMachineFindingResponse.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryMachineFindingResponse(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      allocatedDiskTypes: (map['allocatedDiskTypes'] as List).cast<String>(),
      allocatedRegions: (map['allocatedRegions'] as List).cast<String>(),
      machineSeriesAllocations: pulumi.Input.decodeList<
              ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1>(
          map['machineSeriesAllocations'],
          (value) =>
              ReportSummaryMachineSeriesAllocationResponseMigrationcenterV1alpha1
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
