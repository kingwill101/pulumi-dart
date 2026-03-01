// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodePoolQueuedProvisioning {
  /// Whether nodes in this node pool are obtainable solely through the ProvisioningRequest API
  final bool enabled;

  /// Creates a new [GetClusterNodePoolQueuedProvisioning].
  /// [enabled] Whether nodes in this node pool are obtainable solely through the ProvisioningRequest API
  GetClusterNodePoolQueuedProvisioning({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterNodePoolQueuedProvisioning.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolQueuedProvisioning(
      enabled: map['enabled'] as bool,
    );
  }
}

