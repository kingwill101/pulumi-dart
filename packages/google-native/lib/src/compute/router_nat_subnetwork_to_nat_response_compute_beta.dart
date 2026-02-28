// ignore_for_file: unused_element, unnecessary_cast

/// Defines the IP ranges that want to use NAT for a subnetwork.
class RouterNatSubnetworkToNatResponseComputeBeta {
  /// URL for the subnetwork resource that will use NAT.
  final String name;

  /// A list of the secondary ranges of the Subnetwork that are allowed to use NAT. This can be populated only if "LIST_OF_SECONDARY_IP_RANGES" is one of the values in source_ip_ranges_to_nat.
  final List<String> secondaryIpRangeNames;

  /// Specify the options for NAT ranges in the Subnetwork. All options of a single value are valid except NAT_IP_RANGE_OPTION_UNSPECIFIED. The only valid option with multiple values is: ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"] Default: [ALL_IP_RANGES]
  final List<String> sourceIpRangesToNat;

  /// Creates a new [RouterNatSubnetworkToNatResponseComputeBeta].
  /// [name] URL for the subnetwork resource that will use NAT.
  /// [secondaryIpRangeNames] A list of the secondary ranges of the Subnetwork that are allowed to use NAT. This can be populated only if "LIST_OF_SECONDARY_IP_RANGES" is one of the values in source_ip_ranges_to_nat.
  /// [sourceIpRangesToNat] Specify the options for NAT ranges in the Subnetwork. All options of a single value are valid except NAT_IP_RANGE_OPTION_UNSPECIFIED. The only valid option with multiple values is: ["PRIMARY_IP_RANGE", "LIST_OF_SECONDARY_IP_RANGES"] Default: [ALL_IP_RANGES]
  RouterNatSubnetworkToNatResponseComputeBeta({
    required this.name,
    required this.secondaryIpRangeNames,
    required this.sourceIpRangesToNat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['secondaryIpRangeNames'] = secondaryIpRangeNames;
    map['sourceIpRangesToNat'] = sourceIpRangesToNat;
    return map;
  }

  factory RouterNatSubnetworkToNatResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return RouterNatSubnetworkToNatResponseComputeBeta(
      name: map['name'] as String,
      secondaryIpRangeNames:
          (map['secondaryIpRangeNames'] as List).cast<String>(),
      sourceIpRangesToNat: (map['sourceIpRangesToNat'] as List).cast<String>(),
    );
  }
}
