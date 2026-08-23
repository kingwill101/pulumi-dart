// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResolverFirewallConfig.
class GetResolverFirewallConfigResult {
  /// Determines how DNS Firewall operates during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply.
  final String firewallFailOpen;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Amazon Web Services account ID of the owner of the VPC that this firewall configuration applies to.
  final String ownerId;
  final String region;
  final String resourceId;

  /// Creates a new [GetResolverFirewallConfigResult].
  /// [firewallFailOpen] Determines how DNS Firewall operates during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ownerId] The Amazon Web Services account ID of the owner of the VPC that this firewall configuration applies to.
  /// [region] Required.
  /// [resourceId] Required.
  const GetResolverFirewallConfigResult({
    required this.firewallFailOpen,
    required this.id,
    required this.ownerId,
    required this.region,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallFailOpen': firewallFailOpen,
      'id': id,
      'ownerId': ownerId,
      'region': region,
      'resourceId': resourceId,
    };
  }

  factory GetResolverFirewallConfigResult.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallConfigResult(
      firewallFailOpen: map['firewallFailOpen'] as String,
      id: map['id'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}
