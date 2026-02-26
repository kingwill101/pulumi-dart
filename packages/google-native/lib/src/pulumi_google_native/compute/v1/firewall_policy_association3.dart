// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyAssociation3 {
  /// The target that the firewall policy is attached to.
  final String? attachmentTarget;

  /// The name for an association.
  final String? name;

  FirewallPolicyAssociation3({
    this.attachmentTarget,
    this.name,
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
    return map;
  }

  factory FirewallPolicyAssociation3.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyAssociation3(
      attachmentTarget: map['attachmentTarget'] == null
          ? null
          : map['attachmentTarget'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
