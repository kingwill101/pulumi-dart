// ignore_for_file: unused_element, unnecessary_cast

import 'sole_tenant_node_type_response_migrationcenter_v1alpha1.dart';

/// Represents the assets allocated to a specific Sole-Tenant node type.
class ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1 {
  /// Count of assets allocated to these nodes
  final String allocatedAssetCount;

  /// Sole Tenant node type, e.g. "m3-node-128-3904"
  final SoleTenantNodeTypeResponseMigrationcenterV1alpha1 node;

  /// Count of this node type to be provisioned
  final String nodeCount;

  /// Creates a new [ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1].
  /// [allocatedAssetCount] Count of assets allocated to these nodes
  /// [node] Sole Tenant node type, e.g. "m3-node-128-3904"
  /// [nodeCount] Count of this node type to be provisioned
  ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1({
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

  factory ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ReportSummarySoleTenantNodeAllocationResponseMigrationcenterV1alpha1(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      node: SoleTenantNodeTypeResponseMigrationcenterV1alpha1.fromMap(
          (map['node'] as Map).cast<String, dynamic>()),
      nodeCount: map['nodeCount'] as String,
    );
  }
}
