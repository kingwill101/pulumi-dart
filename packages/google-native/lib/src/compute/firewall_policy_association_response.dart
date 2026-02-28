// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyAssociationResponse {
  /// The target that the firewall policy is attached to.
  final String attachmentTarget;

  /// Deprecated, please use short name instead. The display name of the firewall policy of the association.
  final String displayName;

  /// The firewall policy ID of the association.
  final String firewallPolicyId;

  /// The name for an association.
  final String name;

  /// An integer indicating the priority of an association. The priority must be a positive value between 1 and 2147483647. Firewall Policies are evaluated from highest to lowest priority where 1 is the highest priority and 2147483647 is the lowest priority. The default value is `1000`. If two associations have the same priority then lexicographical order on association names is applied.
  final int priority;

  /// The short name of the firewall policy of the association.
  final String shortName;

  /// Creates a new [FirewallPolicyAssociationResponse].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [displayName] Deprecated, please use short name instead. The display name of the firewall policy of the association.
  /// [firewallPolicyId] The firewall policy ID of the association.
  /// [name] The name for an association.
  /// [priority] An integer indicating the priority of an association. The priority must be a positive value between 1 and 2147483647. Firewall Policies are evaluated from highest to lowest priority where 1 is the highest priority and 2147483647 is the lowest priority. The default value is `1000`. If two associations have the same priority then lexicographical order on association names is applied.
  /// [shortName] The short name of the firewall policy of the association.
  FirewallPolicyAssociationResponse({
    required this.attachmentTarget,
    required this.displayName,
    required this.firewallPolicyId,
    required this.name,
    required this.priority,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentTarget'] = attachmentTarget;
    map['displayName'] = displayName;
    map['firewallPolicyId'] = firewallPolicyId;
    map['name'] = name;
    map['priority'] = priority;
    map['shortName'] = shortName;
    return map;
  }

  factory FirewallPolicyAssociationResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyAssociationResponse(
      attachmentTarget: map['attachmentTarget'] as String,
      displayName: map['displayName'] as String,
      firewallPolicyId: map['firewallPolicyId'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      shortName: map['shortName'] as String,
    );
  }
}
