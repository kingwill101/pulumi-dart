// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolQueuedProvisioning {
  /// Whether nodes in this node pool are obtainable solely through the ProvisioningRequest API
  final bool enabled;

  /// Creates a new [ClusterNodePoolQueuedProvisioning].
  /// [enabled] Whether nodes in this node pool are obtainable solely through the ProvisioningRequest API
  ClusterNodePoolQueuedProvisioning({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ClusterNodePoolQueuedProvisioning.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolQueuedProvisioning(enabled: map['enabled'] as bool);
  }
}
