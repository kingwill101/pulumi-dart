// ignore_for_file: unused_element, unnecessary_cast

/// QueuedProvisioning defines the queued provisioning used by the node pool.
class QueuedProvisioning {
  /// Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  final bool? enabled;

  /// Creates a new [QueuedProvisioning].
  /// [enabled] Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  QueuedProvisioning({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory QueuedProvisioning.fromMap(Map<String, dynamic> map) {
    return QueuedProvisioning(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
