// ignore_for_file: unused_element, unnecessary_cast

import 'sole_tenant_node_type_response2.dart';

/// Represents the assets allocated to a specific Sole-Tenant node type.
class ReportSummarySoleTenantNodeAllocationResponse2 {
  /// Count of assets allocated to these nodes
  final String allocatedAssetCount;

  /// Sole Tenant node type, e.g. "m3-node-128-3904"
  final SoleTenantNodeTypeResponse2 node;

  /// Count of this node type to be provisioned
  final String nodeCount;

  ReportSummarySoleTenantNodeAllocationResponse2({
    required this.allocatedAssetCount,
    required this.node,
    required this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedAssetCount'] = allocatedAssetCount;
    map['node'] = node.toMap();
    map['nodeCount'] = nodeCount;
    return map;
  }

  factory ReportSummarySoleTenantNodeAllocationResponse2.fromMap(
      Map<String, dynamic> map) {
    return ReportSummarySoleTenantNodeAllocationResponse2(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      node: SoleTenantNodeTypeResponse2.fromMap(
          (map['node'] as Map).cast<String, dynamic>()),
      nodeCount: map['nodeCount'] as String,
    );
  }
}
