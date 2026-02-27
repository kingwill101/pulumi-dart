// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceNetworkInterfaceAccessConfig {
  /// If the instance has an access config, either the given external ip (in the `nat_ip` field) or the ephemeral (generated) ip (if you didn't provide one).
  final String natIp;

  /// The [networking tier][network-tier] used for configuring this instance. One of `PREMIUM` or `STANDARD`.
  final String networkTier;

  /// The DNS domain name for the public PTR record.
  final String publicPtrDomainName;

  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final String securityPolicy;

  GetInstanceNetworkInterfaceAccessConfig({
    required this.natIp,
    required this.networkTier,
    required this.publicPtrDomainName,
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['natIp'] = natIp;
    map['networkTier'] = networkTier;
    map['publicPtrDomainName'] = publicPtrDomainName;
    map['securityPolicy'] = securityPolicy;
    return map;
  }

  factory GetInstanceNetworkInterfaceAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceNetworkInterfaceAccessConfig(
      natIp: map['natIp'] as String,
      networkTier: map['networkTier'] as String,
      publicPtrDomainName: map['publicPtrDomainName'] as String,
      securityPolicy: map['securityPolicy'] as String,
    );
  }
}
