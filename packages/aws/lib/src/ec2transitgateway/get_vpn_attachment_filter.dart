// ignore_for_file: unused_element, unnecessary_cast


class GetVpnAttachmentFilter {
  /// Name of the filter field. Valid values can be found in the [EC2 DescribeTransitGatewayAttachments API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayAttachments.html).
  final String name;
  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  /// Creates a new [GetVpnAttachmentFilter].
  /// [name] Name of the filter field. Valid values can be found in the [EC2 DescribeTransitGatewayAttachments API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayAttachments.html).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetVpnAttachmentFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetVpnAttachmentFilter.fromMap(Map<String, dynamic> map) {
    return GetVpnAttachmentFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

