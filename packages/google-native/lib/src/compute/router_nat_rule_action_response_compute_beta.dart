// ignore_for_file: unused_element, unnecessary_cast

class RouterNatRuleActionResponseComputeBeta {
  /// A list of URLs of the IP resources used for this NAT rule. These IP addresses must be valid static external IP addresses assigned to the project. This field is used for public NAT.
  final List<String> sourceNatActiveIps;

  /// A list of URLs of the subnetworks used as source ranges for this NAT Rule. These subnetworks must have purpose set to PRIVATE_NAT. This field is used for private NAT.
  final List<String> sourceNatActiveRanges;

  /// A list of URLs of the IP resources to be drained. These IPs must be valid static external IPs that have been assigned to the NAT. These IPs should be used for updating/patching a NAT rule only. This field is used for public NAT.
  final List<String> sourceNatDrainIps;

  /// A list of URLs of subnetworks representing source ranges to be drained. This is only supported on patch/update, and these subnetworks must have previously been used as active ranges in this NAT Rule. This field is used for private NAT.
  final List<String> sourceNatDrainRanges;

  /// Creates a new [RouterNatRuleActionResponseComputeBeta].
  /// [sourceNatActiveIps] A list of URLs of the IP resources used for this NAT rule. These IP addresses must be valid static external IP addresses assigned to the project. This field is used for public NAT.
  /// [sourceNatActiveRanges] A list of URLs of the subnetworks used as source ranges for this NAT Rule. These subnetworks must have purpose set to PRIVATE_NAT. This field is used for private NAT.
  /// [sourceNatDrainIps] A list of URLs of the IP resources to be drained. These IPs must be valid static external IPs that have been assigned to the NAT. These IPs should be used for updating/patching a NAT rule only. This field is used for public NAT.
  /// [sourceNatDrainRanges] A list of URLs of subnetworks representing source ranges to be drained. This is only supported on patch/update, and these subnetworks must have previously been used as active ranges in this NAT Rule. This field is used for private NAT.
  RouterNatRuleActionResponseComputeBeta({
    required this.sourceNatActiveIps,
    required this.sourceNatActiveRanges,
    required this.sourceNatDrainIps,
    required this.sourceNatDrainRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceNatActiveIps'] = sourceNatActiveIps;
    map['sourceNatActiveRanges'] = sourceNatActiveRanges;
    map['sourceNatDrainIps'] = sourceNatDrainIps;
    map['sourceNatDrainRanges'] = sourceNatDrainRanges;
    return map;
  }

  factory RouterNatRuleActionResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return RouterNatRuleActionResponseComputeBeta(
      sourceNatActiveIps: (map['sourceNatActiveIps'] as List).cast<String>(),
      sourceNatActiveRanges:
          (map['sourceNatActiveRanges'] as List).cast<String>(),
      sourceNatDrainIps: (map['sourceNatDrainIps'] as List).cast<String>(),
      sourceNatDrainRanges:
          (map['sourceNatDrainRanges'] as List).cast<String>(),
    );
  }
}
