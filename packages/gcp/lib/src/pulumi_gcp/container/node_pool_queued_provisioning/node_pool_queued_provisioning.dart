// ignore_for_file: unused_element, unnecessary_cast

class NodePoolQueuedProvisioning {
  /// Makes nodes obtainable through the [ProvisioningRequest API](https://cloud.google.com/kubernetes-engine/docs/how-to/provisioningrequest) exclusively.
  final bool enabled;

  NodePoolQueuedProvisioning({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory NodePoolQueuedProvisioning.fromMap(Map<String, dynamic> map) {
    return NodePoolQueuedProvisioning(
      enabled: map['enabled'] as bool,
    );
  }
}
