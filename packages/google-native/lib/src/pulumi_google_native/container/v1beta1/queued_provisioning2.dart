// ignore_for_file: unused_element, unnecessary_cast

/// QueuedProvisioning defines the queued provisioning used by the node pool.
class QueuedProvisioning2 {
  /// Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  final bool? enabled;

  QueuedProvisioning2({
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

  factory QueuedProvisioning2.fromMap(Map<String, dynamic> map) {
    return QueuedProvisioning2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
