// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'report_summary_vmware_node_allocation_response.dart';

/// A set of findings that applies to assets destined for VMWare Engine.
class ReportSummaryVMWareEngineFindingResponse {
  /// Count of assets which are allocated
  final String allocatedAssetCount;

  /// Set of regions in which the assets were allocated
  final List<String> allocatedRegions;

  /// Set of per-nodetype allocation records
  final List<ReportSummaryVMWareNodeAllocationResponse> nodeAllocations;

  ReportSummaryVMWareEngineFindingResponse({
    required this.allocatedAssetCount,
    required this.allocatedRegions,
    required this.nodeAllocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedAssetCount'] = allocatedAssetCount;
    map['allocatedRegions'] = allocatedRegions;
    map['nodeAllocations'] = Input.encodeList<
        ReportSummaryVMWareNodeAllocationResponse,
        Map<String, dynamic>>(nodeAllocations, (value) => value.toMap());
    return map;
  }

  factory ReportSummaryVMWareEngineFindingResponse.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryVMWareEngineFindingResponse(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      allocatedRegions: (map['allocatedRegions'] as List).cast<String>(),
      nodeAllocations:
          Input.decodeList<ReportSummaryVMWareNodeAllocationResponse>(
              map['nodeAllocations'],
              (value) => ReportSummaryVMWareNodeAllocationResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
