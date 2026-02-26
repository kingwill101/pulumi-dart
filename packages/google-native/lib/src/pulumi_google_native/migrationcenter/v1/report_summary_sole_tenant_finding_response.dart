// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'report_summary_sole_tenant_node_allocation_response.dart';

/// A set of findings that applies to assets destined for Sole-Tenant nodes.
class ReportSummarySoleTenantFindingResponse {
  /// Count of assets which are allocated
  final String allocatedAssetCount;

  /// Set of regions in which the assets are allocated
  final List<String> allocatedRegions;

  /// Set of per-nodetype allocation records
  final List<ReportSummarySoleTenantNodeAllocationResponse> nodeAllocations;

  ReportSummarySoleTenantFindingResponse({
    required this.allocatedAssetCount,
    required this.allocatedRegions,
    required this.nodeAllocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedAssetCount'] = allocatedAssetCount;
    map['allocatedRegions'] = allocatedRegions;
    map['nodeAllocations'] = Input.encodeList<
        ReportSummarySoleTenantNodeAllocationResponse,
        Map<String, dynamic>>(nodeAllocations, (value) => value.toMap());
    return map;
  }

  factory ReportSummarySoleTenantFindingResponse.fromMap(
      Map<String, dynamic> map) {
    return ReportSummarySoleTenantFindingResponse(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      allocatedRegions: (map['allocatedRegions'] as List).cast<String>(),
      nodeAllocations:
          Input.decodeList<ReportSummarySoleTenantNodeAllocationResponse>(
              map['nodeAllocations'],
              (value) => ReportSummarySoleTenantNodeAllocationResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
