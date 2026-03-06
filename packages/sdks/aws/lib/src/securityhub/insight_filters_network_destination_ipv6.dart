// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersNetworkDestinationIpv6 {
  /// A finding's CIDR value.
  final pulumi.Input<String> cidr;

  /// Creates a new [InsightFiltersNetworkDestinationIpv6].
  /// [cidr] A finding's CIDR value.
  const InsightFiltersNetworkDestinationIpv6({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
    };
  }

  factory InsightFiltersNetworkDestinationIpv6.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNetworkDestinationIpv6(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
    );
  }
}

