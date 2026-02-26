// ignore_for_file: unused_element, unnecessary_cast

/// QueuedProvisioning defines the queued provisioning used by the node pool.
class QueuedProvisioningResponse2 {
  /// Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  final bool enabled;

  QueuedProvisioningResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory QueuedProvisioningResponse2.fromMap(Map<String, dynamic> map) {
    return QueuedProvisioningResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
