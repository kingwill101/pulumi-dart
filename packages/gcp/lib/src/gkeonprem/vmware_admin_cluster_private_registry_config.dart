// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterPrivateRegistryConfig {
  /// The registry address.
  final String? address;

  /// The CA certificate public key for private registry.
  final String? caCert;

  /// Creates a new [VmwareAdminClusterPrivateRegistryConfig].
  /// [address] The registry address.
  /// [caCert] The CA certificate public key for private registry.
  VmwareAdminClusterPrivateRegistryConfig({
    this.address,
    this.caCert,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final caCertValue = caCert;
    if (caCertValue != null) {
      map['caCert'] = caCertValue;
    }
    return map;
  }

  factory VmwareAdminClusterPrivateRegistryConfig.fromMap(
      Map<String, dynamic> map) {
    return VmwareAdminClusterPrivateRegistryConfig(
      address: map['address'] == null ? null : map['address'] as String,
      caCert: map['caCert'] == null ? null : map['caCert'] as String,
    );
  }
}
