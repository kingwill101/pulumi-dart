// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersNetworkDestinationIpv4 {
  /// A finding's CIDR value.
  final pulumi.Input<String> cidr;

  /// Creates a new [InsightFiltersNetworkDestinationIpv4].
  /// [cidr] A finding's CIDR value.
  InsightFiltersNetworkDestinationIpv4({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
    };
  }

  factory InsightFiltersNetworkDestinationIpv4.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNetworkDestinationIpv4(
      cidr: (map['cidr'] as String).input(),
    );
  }
}

