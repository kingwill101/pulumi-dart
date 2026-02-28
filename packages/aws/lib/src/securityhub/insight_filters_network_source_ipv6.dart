// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersNetworkSourceIpv6 {
  /// A finding's CIDR value.
  final String cidr;

  /// Creates a new [InsightFiltersNetworkSourceIpv6].
  /// [cidr] A finding's CIDR value.
  InsightFiltersNetworkSourceIpv6({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    return map;
  }

  factory InsightFiltersNetworkSourceIpv6.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNetworkSourceIpv6(
      cidr: map['cidr'] as String,
    );
  }
}
