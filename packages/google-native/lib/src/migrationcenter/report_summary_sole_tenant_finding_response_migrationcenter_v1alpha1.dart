// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_sole_tenant_node_allocation_response_migrationcenter_v1alpha1.dart';

/// A set of findings that applies to assets destined for Sole-Tenant nodes.
class ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1 {
  /// Count of assets which are allocated
  final String allocatedAssetCount;

  /// Set of regions in which the assets are allocated
  final List<String> allocatedRegions;

  /// Set of per-nodetype allocation records
  final List<
          ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1>
      nodeAllocations;

  /// Creates a new [ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1].
  /// [allocatedAssetCount] Count of assets which are allocated
  /// [allocatedRegions] Set of regions in which the assets are allocated
  /// [nodeAllocations] Set of per-nodetype allocation records
  ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1({
    required this.allocatedAssetCount,
    required this.allocatedRegions,
    required this.nodeAllocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedAssetCount'] = allocatedAssetCount;
    map['allocatedRegions'] = allocatedRegions;
    map['nodeAllocations'] = pulumi.Input.encodeList<
        ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1,
        Map<String, dynamic>>(nodeAllocations, (value) => value.toMap());
    return map;
  }

  factory ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      allocatedRegions: (map['allocatedRegions'] as List).cast<String>(),
      nodeAllocations: pulumi.Input.decodeList<
              ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1>(
          map['nodeAllocations'],
          (value) =>
              ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
