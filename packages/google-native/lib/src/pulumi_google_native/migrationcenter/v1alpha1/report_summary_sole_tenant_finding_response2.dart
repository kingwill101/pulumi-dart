// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'report_summary_sole_tenant_node_allocation_response2.dart';

/// A set of findings that applies to assets destined for Sole-Tenant nodes.
class ReportSummarySoleTenantFindingResponse2 {
  /// Count of assets which are allocated
  final String allocatedAssetCount;

  /// Set of regions in which the assets are allocated
  final List<String> allocatedRegions;

  /// Set of per-nodetype allocation records
  final List<ReportSummarySoleTenantNodeAllocationResponse2> nodeAllocations;

  ReportSummarySoleTenantFindingResponse2({
    required this.allocatedAssetCount,
    required this.allocatedRegions,
    required this.nodeAllocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedAssetCount'] = allocatedAssetCount;
    map['allocatedRegions'] = allocatedRegions;
    map['nodeAllocations'] = Input.encodeList<
        ReportSummarySoleTenantNodeAllocationResponse2,
        Map<String, dynamic>>(nodeAllocations, (value) => value.toMap());
    return map;
  }

  factory ReportSummarySoleTenantFindingResponse2.fromMap(
      Map<String, dynamic> map) {
    return ReportSummarySoleTenantFindingResponse2(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      allocatedRegions: (map['allocatedRegions'] as List).cast<String>(),
      nodeAllocations:
          Input.decodeList<ReportSummarySoleTenantNodeAllocationResponse2>(
              map['nodeAllocations'],
              (value) => ReportSummarySoleTenantNodeAllocationResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
