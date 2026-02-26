// ignore_for_file: unused_element, unnecessary_cast

/// Best effort provisioning.
class BestEffortProvisioning {
  /// When this is enabled, cluster/node pool creations will ignore non-fatal errors like stockout to best provision as many nodes as possible right now and eventually bring up all target number of nodes
  final bool? enabled;

  /// Minimum number of nodes to be provisioned to be considered as succeeded, and the rest of nodes will be provisioned gradually and eventually when stockout issue has been resolved.
  final int? minProvisionNodes;

  BestEffortProvisioning({
    this.enabled,
    this.minProvisionNodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final minProvisionNodesValue = minProvisionNodes;
    if (minProvisionNodesValue != null) {
      map['minProvisionNodes'] = minProvisionNodesValue;
    }
    return map;
  }

  factory BestEffortProvisioning.fromMap(Map<String, dynamic> map) {
    return BestEffortProvisioning(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      minProvisionNodes: map['minProvisionNodes'] == null
          ? null
          : map['minProvisionNodes'] as int,
    );
  }
}
