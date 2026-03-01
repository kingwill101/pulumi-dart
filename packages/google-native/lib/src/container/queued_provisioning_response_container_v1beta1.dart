// ignore_for_file: unused_element, unnecessary_cast

/// QueuedProvisioning defines the queued provisioning used by the node pool.
class QueuedProvisioningResponseContainerV1beta1 {
  /// Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  final bool enabled;

  /// Creates a new [QueuedProvisioningResponseContainerV1beta1].
  /// [enabled] Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing via the Cluster Autoscaler ProvisioningRequest API.
  QueuedProvisioningResponseContainerV1beta1({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory QueuedProvisioningResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return QueuedProvisioningResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
