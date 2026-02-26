// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceAwsEc2InstanceIpv6Address {
  /// A finding's CIDR value.
  final String cidr;

  InsightFiltersResourceAwsEc2InstanceIpv6Address({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    return map;
  }

  factory InsightFiltersResourceAwsEc2InstanceIpv6Address.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersResourceAwsEc2InstanceIpv6Address(
      cidr: map['cidr'] as String,
    );
  }
}
