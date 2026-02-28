// ignore_for_file: unused_element, unnecessary_cast

/// QueuedProvisioning defines the queued provisioning used by the node pool.
class QueuedProvisioningResponse {
  /// Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  final bool enabled;

  /// Creates a new [QueuedProvisioningResponse].
  /// [enabled] Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  QueuedProvisioningResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory QueuedProvisioningResponse.fromMap(Map<String, dynamic> map) {
    return QueuedProvisioningResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
