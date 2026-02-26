// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolQueuedProvisioning {
  /// Whether nodes in this node pool are obtainable solely through the ProvisioningRequest API
  final bool enabled;

  ClusterNodePoolQueuedProvisioning({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterNodePoolQueuedProvisioning.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolQueuedProvisioning(
      enabled: map['enabled'] as bool,
    );
  }
}
