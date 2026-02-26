// ignore_for_file: unused_element, unnecessary_cast

/// Best effort provisioning.
class BestEffortProvisioningResponse {
  /// When this is enabled, cluster/node pool creations will ignore non-fatal errors like stockout to best provision as many nodes as possible right now and eventually bring up all target number of nodes
  final bool enabled;

  /// Minimum number of nodes to be provisioned to be considered as succeeded, and the rest of nodes will be provisioned gradually and eventually when stockout issue has been resolved.
  final int minProvisionNodes;

  BestEffortProvisioningResponse({
    required this.enabled,
    required this.minProvisionNodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['minProvisionNodes'] = minProvisionNodes;
    return map;
  }

  factory BestEffortProvisioningResponse.fromMap(Map<String, dynamic> map) {
    return BestEffortProvisioningResponse(
      enabled: map['enabled'] as bool,
      minProvisionNodes: map['minProvisionNodes'] as int,
    );
  }
}
