// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersNetworkSourceIpv4 {
  /// A finding's CIDR value.
  final String cidr;

  InsightFiltersNetworkSourceIpv4({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    return map;
  }

  factory InsightFiltersNetworkSourceIpv4.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNetworkSourceIpv4(
      cidr: map['cidr'] as String,
    );
  }
}
