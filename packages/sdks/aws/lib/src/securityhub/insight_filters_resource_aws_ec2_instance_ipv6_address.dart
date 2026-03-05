// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersResourceAwsEc2InstanceIpv6Address {
  /// A finding's CIDR value.
  final pulumi.Input<String> cidr;

  /// Creates a new [InsightFiltersResourceAwsEc2InstanceIpv6Address].
  /// [cidr] A finding's CIDR value.
  InsightFiltersResourceAwsEc2InstanceIpv6Address({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
    };
  }

  factory InsightFiltersResourceAwsEc2InstanceIpv6Address.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceAwsEc2InstanceIpv6Address(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
    );
  }
}

