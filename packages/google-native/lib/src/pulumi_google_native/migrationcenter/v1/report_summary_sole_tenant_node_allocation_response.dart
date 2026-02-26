// ignore_for_file: unused_element, unnecessary_cast

import 'sole_tenant_node_type_response.dart';

/// Represents the assets allocated to a specific Sole-Tenant node type.
class ReportSummarySoleTenantNodeAllocationResponse {
  /// Count of assets allocated to these nodes
  final String allocatedAssetCount;

  /// Sole Tenant node type, e.g. "m3-node-128-3904"
  final SoleTenantNodeTypeResponse node;

  /// Count of this node type to be provisioned
  final String nodeCount;

  ReportSummarySoleTenantNodeAllocationResponse({
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

  factory ReportSummarySoleTenantNodeAllocationResponse.fromMap(
      Map<String, dynamic> map) {
    return ReportSummarySoleTenantNodeAllocationResponse(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      node: SoleTenantNodeTypeResponse.fromMap(
          (map['node'] as Map).cast<String, dynamic>()),
      nodeCount: map['nodeCount'] as String,
    );
  }
}
