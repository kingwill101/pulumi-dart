// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersNetworkDestinationIpv6 {
  /// A finding's CIDR value.
  final String cidr;

  InsightFiltersNetworkDestinationIpv6({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    return map;
  }

  factory InsightFiltersNetworkDestinationIpv6.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersNetworkDestinationIpv6(
      cidr: map['cidr'] as String,
    );
  }
}
