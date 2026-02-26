// ignore_for_file: unused_element, unnecessary_cast

class RouterNatSubnetwork {
  /// Self-link of the subnetwork resource that will use NAT64
  final String name;

  /// List of the secondary ranges of the subnetwork that are allowed
  /// to use NAT. This can be populated only if
  /// `LIST_OF_SECONDARY_IP_RANGES` is one of the values in
  /// sourceIpRangesToNat
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedNat64Subnetwork"" pulumi-lang-dotnet=""NestedNat64Subnetwork"" pulumi-lang-go=""nestedNat64Subnetwork"" pulumi-lang-python=""nested_nat64_subnetwork"" pulumi-lang-yaml=""nestedNat64Subnetwork"" pulumi-lang-java=""nestedNat64Subnetwork"">"nested_nat64_subnetwork"</span>></a>The <span pulumi-lang-nodejs="`nat64Subnetwork`" pulumi-lang-dotnet="`Nat64Subnetwork`" pulumi-lang-go="`nat64Subnetwork`" pulumi-lang-python="`nat64_subnetwork`" pulumi-lang-yaml="`nat64Subnetwork`" pulumi-lang-java="`nat64Subnetwork`">`nat64_subnetwork`</span> block supports:
  final List<String>? secondaryIpRangeNames;

  /// List of options for which source IPs in the subnetwork
  /// should have NAT enabled. Supported values include:
  /// `ALL_IP_RANGES`, `LIST_OF_SECONDARY_IP_RANGES`,
  /// `PRIMARY_IP_RANGE`.
  final List<String> sourceIpRangesToNats;

  RouterNatSubnetwork({
    required this.name,
    this.secondaryIpRangeNames,
    required this.sourceIpRangesToNats,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final secondaryIpRangeNamesValue = secondaryIpRangeNames;
    if (secondaryIpRangeNamesValue != null) {
      map['secondaryIpRangeNames'] = secondaryIpRangeNamesValue;
    }
    map['sourceIpRangesToNats'] = sourceIpRangesToNats;
    return map;
  }

  factory RouterNatSubnetwork.fromMap(Map<String, dynamic> map) {
    return RouterNatSubnetwork(
      name: map['name'] as String,
      secondaryIpRangeNames: map['secondaryIpRangeNames'] == null
          ? null
          : (map['secondaryIpRangeNames'] as List).cast<String>(),
      sourceIpRangesToNats:
          (map['sourceIpRangesToNats'] as List).cast<String>(),
    );
  }
}
