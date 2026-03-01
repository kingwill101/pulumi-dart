// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClusterControlPlaneFirewall {
  final List<String> allowedAddresses;
  final bool enabled;

  /// Creates a new [GetKubernetesClusterControlPlaneFirewall].
  /// [allowedAddresses] Required.
  /// [enabled] Required.
  GetKubernetesClusterControlPlaneFirewall({
    required this.allowedAddresses,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAddresses': allowedAddresses,
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterControlPlaneFirewall.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterControlPlaneFirewall(
      allowedAddresses: (map['allowedAddresses'] as List).cast<String>(),
      enabled: map['enabled'] as bool,
    );
  }
}

