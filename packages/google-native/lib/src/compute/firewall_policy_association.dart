// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyAssociation {
  /// The target that the firewall policy is attached to.
  final String? attachmentTarget;

  /// The name for an association.
  final String? name;

  /// An integer indicating the priority of an association. The priority must be a positive value between 1 and 2147483647. Firewall Policies are evaluated from highest to lowest priority where 1 is the highest priority and 2147483647 is the lowest priority. The default value is `1000`. If two associations have the same priority then lexicographical order on association names is applied.
  final int? priority;

  /// Creates a new [FirewallPolicyAssociation].
  /// [attachmentTarget] The target that the firewall policy is attached to.
  /// [name] The name for an association.
  /// [priority] An integer indicating the priority of an association. The priority must be a positive value between 1 and 2147483647. Firewall Policies are evaluated from highest to lowest priority where 1 is the highest priority and 2147483647 is the lowest priority. The default value is `1000`. If two associations have the same priority then lexicographical order on association names is applied.
  FirewallPolicyAssociation({
    this.attachmentTarget,
    this.name,
    this.priority,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attachmentTargetValue = attachmentTarget;
    if (attachmentTargetValue != null) {
      map['attachmentTarget'] = attachmentTargetValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    return map;
  }

  factory FirewallPolicyAssociation.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyAssociation(
      attachmentTarget: map['attachmentTarget'] == null
          ? null
          : map['attachmentTarget'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
    );
  }
}
