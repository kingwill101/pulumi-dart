// ignore_for_file: unused_element, unnecessary_cast

class RouterNatSubnetwork {
  /// Self-link of the subnetwork resource that will use NAT64
  final String name;

  /// List of the secondary ranges of the subnetwork that are allowed
  /// to use NAT. This can be populated only if
  /// `LIST_OF_SECONDARY_IP_RANGES` is one of the values in
  /// sourceIpRangesToNat
  ///
  /// <a name="nested_nat64_subnetwork"></a>The `nat64_subnetwork` block supports:
  final List<String>? secondaryIpRangeNames;

  /// List of options for which source IPs in the subnetwork
  /// should have NAT enabled. Supported values include:
  /// `ALL_IP_RANGES`, `LIST_OF_SECONDARY_IP_RANGES`,
  /// `PRIMARY_IP_RANGE`.
  final List<String> sourceIpRangesToNats;

  /// Creates a new [RouterNatSubnetwork].
  /// [name] Self-link of the subnetwork resource that will use NAT64
  /// [secondaryIpRangeNames] List of the secondary ranges of the subnetwork that are allowed
  /// [sourceIpRangesToNats] List of options for which source IPs in the subnetwork
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
