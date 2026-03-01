// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersNetworkSourceIpv4 {
  /// A finding's CIDR value.
  final String cidr;

  /// Creates a new [InsightFiltersNetworkSourceIpv4].
  /// [cidr] A finding's CIDR value.
  InsightFiltersNetworkSourceIpv4({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
    };
  }

  factory InsightFiltersNetworkSourceIpv4.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNetworkSourceIpv4(
      cidr: map['cidr'] as String,
    );
  }
}

