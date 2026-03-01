// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyAssociationResponseComputeBeta {
  /// The target that the firewall policy is attached to.
  final String attachmentTarget;

  /// Deprecated, please use short name instead. The display name of the firewall policy of the association.
  final String displayName;

  /// The firewall policy ID of the association.
  final String firewallPolicyId;

  /// The name for an association.
  final String name;

  /// The short name of the firewall policy of the association.
  final String shortName;

  /// Creates a new [FirewallPolicyAssociationResponseComputeBeta].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [displayName] Deprecated, please use short name instead. The display name of the firewall policy of the association.
  /// [firewallPolicyId] The firewall policy ID of the association.
  /// [name] The name for an association.
  /// [shortName] The short name of the firewall policy of the association.
  FirewallPolicyAssociationResponseComputeBeta({
    required this.attachmentTarget,
    required this.displayName,
    required this.firewallPolicyId,
    required this.name,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentTarget': attachmentTarget,
      'displayName': displayName,
      'firewallPolicyId': firewallPolicyId,
      'name': name,
      'shortName': shortName,
    };
  }

  factory FirewallPolicyAssociationResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallPolicyAssociationResponseComputeBeta(
      attachmentTarget: map['attachmentTarget'] as String,
      displayName: map['displayName'] as String,
      firewallPolicyId: map['firewallPolicyId'] as String,
      name: map['name'] as String,
      shortName: map['shortName'] as String,
    );
  }
}
