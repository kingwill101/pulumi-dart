// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersResourceAwsEc2InstanceIpv4Address {
  /// A finding's CIDR value.
  final pulumi.Input<String> cidr;

  /// Creates a new [InsightFiltersResourceAwsEc2InstanceIpv4Address].
  /// [cidr] A finding's CIDR value.
  const InsightFiltersResourceAwsEc2InstanceIpv4Address({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
    };
  }

  factory InsightFiltersResourceAwsEc2InstanceIpv4Address.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceAwsEc2InstanceIpv4Address(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
    );
  }
}
