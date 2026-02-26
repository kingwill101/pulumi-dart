// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyAssociationResponse3 {
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

  FirewallPolicyAssociationResponse3({
    required this.attachmentTarget,
    required this.displayName,
    required this.firewallPolicyId,
    required this.name,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentTarget'] = attachmentTarget;
    map['displayName'] = displayName;
    map['firewallPolicyId'] = firewallPolicyId;
    map['name'] = name;
    map['shortName'] = shortName;
    return map;
  }

  factory FirewallPolicyAssociationResponse3.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyAssociationResponse3(
      attachmentTarget: map['attachmentTarget'] as String,
      displayName: map['displayName'] as String,
      firewallPolicyId: map['firewallPolicyId'] as String,
      name: map['name'] as String,
      shortName: map['shortName'] as String,
    );
  }
}
