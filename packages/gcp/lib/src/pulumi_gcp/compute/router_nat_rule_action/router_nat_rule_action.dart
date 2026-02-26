// ignore_for_file: unused_element, unnecessary_cast

class RouterNatRuleAction {
  /// A list of URLs of the IP resources used for this NAT rule.
  /// These IP addresses must be valid static external IP addresses assigned to the project.
  /// This field is used for public NAT.
  final List<String>? sourceNatActiveIps;

  /// A list of URLs of the subnetworks used as source ranges for this NAT Rule.
  /// These subnetworks must have purpose set to PRIVATE_NAT.
  /// This field is used for private NAT.
  final List<String>? sourceNatActiveRanges;

  /// A list of URLs of the IP resources to be drained.
  /// These IPs must be valid static external IPs that have been assigned to the NAT.
  /// These IPs should be used for updating/patching a NAT rule only.
  /// This field is used for public NAT.
  final List<String>? sourceNatDrainIps;

  /// A list of URLs of subnetworks representing source ranges to be drained.
  /// This is only supported on patch/update, and these subnetworks must have previously been used as active ranges in this NAT Rule.
  /// This field is used for private NAT.
  final List<String>? sourceNatDrainRanges;

  RouterNatRuleAction({
    this.sourceNatActiveIps,
    this.sourceNatActiveRanges,
    this.sourceNatDrainIps,
    this.sourceNatDrainRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourceNatActiveIpsValue = sourceNatActiveIps;
    if (sourceNatActiveIpsValue != null) {
      map['sourceNatActiveIps'] = sourceNatActiveIpsValue;
    }
    final sourceNatActiveRangesValue = sourceNatActiveRanges;
    if (sourceNatActiveRangesValue != null) {
      map['sourceNatActiveRanges'] = sourceNatActiveRangesValue;
    }
    final sourceNatDrainIpsValue = sourceNatDrainIps;
    if (sourceNatDrainIpsValue != null) {
      map['sourceNatDrainIps'] = sourceNatDrainIpsValue;
    }
    final sourceNatDrainRangesValue = sourceNatDrainRanges;
    if (sourceNatDrainRangesValue != null) {
      map['sourceNatDrainRanges'] = sourceNatDrainRangesValue;
    }
    return map;
  }

  factory RouterNatRuleAction.fromMap(Map<String, dynamic> map) {
    return RouterNatRuleAction(
      sourceNatActiveIps: map['sourceNatActiveIps'] == null
          ? null
          : (map['sourceNatActiveIps'] as List).cast<String>(),
      sourceNatActiveRanges: map['sourceNatActiveRanges'] == null
          ? null
          : (map['sourceNatActiveRanges'] as List).cast<String>(),
      sourceNatDrainIps: map['sourceNatDrainIps'] == null
          ? null
          : (map['sourceNatDrainIps'] as List).cast<String>(),
      sourceNatDrainRanges: map['sourceNatDrainRanges'] == null
          ? null
          : (map['sourceNatDrainRanges'] as List).cast<String>(),
    );
  }
}
