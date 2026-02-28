// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersNetworkDestinationIpv4 {
  /// A finding's CIDR value.
  final String cidr;

  /// Creates a new [InsightFiltersNetworkDestinationIpv4].
  /// [cidr] A finding's CIDR value.
  InsightFiltersNetworkDestinationIpv4({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    return map;
  }

  factory InsightFiltersNetworkDestinationIpv4.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersNetworkDestinationIpv4(
      cidr: map['cidr'] as String,
    );
  }
}
