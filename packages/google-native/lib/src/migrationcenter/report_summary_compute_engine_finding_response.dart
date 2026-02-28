// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final List<ReportSummaryMachineSeriesAllocationResponse> machineSeriesAllocations;

  /// Creates a new [ReportSummaryComputeEngineFindingResponse].
  /// [allocatedAssetCount] Count of assets which were allocated.
  /// [allocatedDiskTypes] Set of disk types allocated to assets.
  /// [allocatedRegions] Set of regions in which the assets were allocated.
  /// [machineSeriesAllocations] Distribution of assets based on the Machine Series.
  ReportSummaryComputeEngineFindingResponse({
    required this.allocatedAssetCount,
    required this.allocatedDiskTypes,
    required this.allocatedRegions,
    required this.machineSeriesAllocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedAssetCount': allocatedAssetCount,
      'allocatedDiskTypes': allocatedDiskTypes,
      'allocatedRegions': allocatedRegions,
      'machineSeriesAllocations': pulumi.Input.encodeList<ReportSummaryMachineSeriesAllocationResponse, Map<String, dynamic>>(machineSeriesAllocations, (value) => value.toMap()),
    };
  }

  factory ReportSummaryComputeEngineFindingResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryComputeEngineFindingResponse(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      allocatedDiskTypes: (map['allocatedDiskTypes'] as List).cast<String>(),
      allocatedRegions: (map['allocatedRegions'] as List).cast<String>(),
      machineSeriesAllocations: pulumi.Input.decodeList<ReportSummaryMachineSeriesAllocationResponse>(map['machineSeriesAllocations'], (value) => ReportSummaryMachineSeriesAllocationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

