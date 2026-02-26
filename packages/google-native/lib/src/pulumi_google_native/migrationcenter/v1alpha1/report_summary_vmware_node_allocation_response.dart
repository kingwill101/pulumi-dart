// ignore_for_file: unused_element, unnecessary_cast

import 'report_summary_vmware_node_response.dart';

/// Represents assets allocated to a specific VMWare Node type.
class ReportSummaryVMWareNodeAllocationResponse {
  /// Count of assets allocated to these nodes
  final String allocatedAssetCount;

  /// Count of this node type to be provisioned
  final String nodeCount;

  /// VMWare node type, e.g. "ve1-standard-72"
  final ReportSummaryVMWareNodeResponse vmwareNode;

  ReportSummaryVMWareNodeAllocationResponse({
    required this.allocatedAssetCount,
    required this.nodeCount,
    required this.vmwareNode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedAssetCount'] = allocatedAssetCount;
    map['nodeCount'] = nodeCount;
    map['vmwareNode'] = vmwareNode.toMap();
    return map;
  }

  factory ReportSummaryVMWareNodeAllocationResponse.fromMap(
      Map<String, dynamic> map) {
    return ReportSummaryVMWareNodeAllocationResponse(
      allocatedAssetCount: map['allocatedAssetCount'] as String,
      nodeCount: map['nodeCount'] as String,
      vmwareNode: ReportSummaryVMWareNodeResponse.fromMap(
          (map['vmwareNode'] as Map).cast<String, dynamic>()),
    );
  }
}
