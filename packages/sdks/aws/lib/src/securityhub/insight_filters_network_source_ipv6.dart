// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersNetworkSourceIpv6 {
  /// A finding's CIDR value.
  final pulumi.Input<String> cidr;

  /// Creates a new [InsightFiltersNetworkSourceIpv6].
  /// [cidr] A finding's CIDR value.
  const InsightFiltersNetworkSourceIpv6({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
    };
  }

  factory InsightFiltersNetworkSourceIpv6.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNetworkSourceIpv6(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
    );
  }
}
