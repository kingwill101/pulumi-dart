// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_vmware_node_allocation_response.dart';

/// A set of findings that applies to assets destined for VMWare Engine.
class ReportSummaryVmwareEngineFindingResponse {
  /// Count of assets which are allocated
  final String allocatedAssetCount;

  /// Set of regions in which the assets were allocated
  final List<String> allocatedRegions;

  /// Set of per-nodetype allocation records
  final List<ReportSummaryVmwareNodeAllocationResponse> nodeAllocations;

  ReportSummaryVmwareEngineFindingResponse({
    required this.allocatedAssetCount,
    required this.allocatedRegions,
    required this.nodeAllocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedAssetCount'] = allocatedAssetCount;
    map['allocatedRegions'] = allocatedRegions;
    map['nodeAllocations'] = pulumi.Input.encodeList<
        ReportSummaryVmwareNodeAllocationResponse,
        Map<String, dynamic>>(nodeAllocations, (value) => value.toMap());
    return map;
  }

  factory ReportSummaryVmwareEngineFindingResponse.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryVmwareEngineFindingResponse(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      allocatedRegions: (map['allocatedRegions'] as List).cast<String>(),
      nodeAllocations:
          pulumi.Input.decodeList<ReportSummaryVmwareNodeAllocationResponse>(
              map['nodeAllocations'],
              (value) => ReportSummaryVmwareNodeAllocationResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
